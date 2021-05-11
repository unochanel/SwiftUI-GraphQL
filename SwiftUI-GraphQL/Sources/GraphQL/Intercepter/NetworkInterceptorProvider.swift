import Apollo
import Foundation

final class NetworkInterceptorProvider: LegacyInterceptorProvider {
    override func interceptors<Operation: GraphQLOperation>(for operation: Operation) -> [ApolloInterceptor] {
        var interceptors = super.interceptors(for: operation)
        interceptors.insert(UserIntercepter(), at: 0)
        interceptors.insert(ResponseLoggingInterceptor(), at: 1)
        return interceptors
    }
}
