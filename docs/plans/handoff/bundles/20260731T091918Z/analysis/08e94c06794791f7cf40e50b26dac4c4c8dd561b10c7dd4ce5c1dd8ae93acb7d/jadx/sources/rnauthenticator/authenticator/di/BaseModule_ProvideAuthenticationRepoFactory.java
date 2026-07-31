package rnauthenticator.authenticator.di;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import rnauthenticator.authenticator.network.AuthenticationNetworkInterface;
import rnauthenticator.authenticator.network.Endpoint;
import rnauthenticator.authenticator.network.http.HttpRequest;

/* loaded from: classes2.dex */
public final class BaseModule_ProvideAuthenticationRepoFactory implements Factory<AuthenticationNetworkInterface> {
    private final Provider<Endpoint> endpointProvider;
    private final Provider<HttpRequest> httpRequestProvider;
    private final BaseModule module;

    public BaseModule_ProvideAuthenticationRepoFactory(BaseModule baseModule, Provider<HttpRequest> provider, Provider<Endpoint> provider2) {
        this.module = baseModule;
        this.httpRequestProvider = provider;
        this.endpointProvider = provider2;
    }

    @Override // javax.inject.Provider
    public AuthenticationNetworkInterface get() {
        return provideAuthenticationRepo(this.module, this.httpRequestProvider.get(), this.endpointProvider.get());
    }

    public static BaseModule_ProvideAuthenticationRepoFactory create(BaseModule baseModule, Provider<HttpRequest> provider, Provider<Endpoint> provider2) {
        return new BaseModule_ProvideAuthenticationRepoFactory(baseModule, provider, provider2);
    }

    public static AuthenticationNetworkInterface provideAuthenticationRepo(BaseModule baseModule, HttpRequest httpRequest, Endpoint endpoint) {
        return (AuthenticationNetworkInterface) Preconditions.checkNotNull(baseModule.provideAuthenticationRepo(httpRequest, endpoint), "Cannot return null from a non-@Nullable @Provides method");
    }
}
