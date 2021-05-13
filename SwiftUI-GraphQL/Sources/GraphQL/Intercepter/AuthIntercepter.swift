import Apollo
import Combine

final class UserIntercepter: ApolloInterceptor {
    private var cancellableSet: Set<AnyCancellable> = []

    func interceptAsync<Operation>(chain: RequestChain,
                                   request: HTTPRequest<Operation>,
                                   response: HTTPResponse<Operation>?,
                                   completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) where Operation : GraphQLOperation {
        // TODO: GithubのTokenを追加
//        request.addHeader(name: "Authorization", value: "Bearer Token")
        chain.proceedAsync(request: request,
                           response: response,
                           completion: completion)
    }
}
