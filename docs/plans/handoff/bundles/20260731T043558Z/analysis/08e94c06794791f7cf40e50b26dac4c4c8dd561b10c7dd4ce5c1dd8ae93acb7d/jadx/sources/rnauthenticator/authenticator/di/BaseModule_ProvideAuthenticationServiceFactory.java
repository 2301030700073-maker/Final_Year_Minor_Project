package rnauthenticator.authenticator.di;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import rnauthenticator.authenticator.network.AuthenticationNetworkInterface;
import rnauthenticator.authenticator.security.PKCE;
import rnauthenticator.authenticator.service.AuthenticationServiceInterface;

/* loaded from: classes2.dex */
public final class BaseModule_ProvideAuthenticationServiceFactory implements Factory<AuthenticationServiceInterface> {
    private final BaseModule module;
    private final Provider<AuthenticationNetworkInterface> networkProvider;
    private final Provider<PKCE> pkceProvider;

    public BaseModule_ProvideAuthenticationServiceFactory(BaseModule baseModule, Provider<AuthenticationNetworkInterface> provider, Provider<PKCE> provider2) {
        this.module = baseModule;
        this.networkProvider = provider;
        this.pkceProvider = provider2;
    }

    @Override // javax.inject.Provider
    public AuthenticationServiceInterface get() {
        return provideAuthenticationService(this.module, this.networkProvider.get(), this.pkceProvider.get());
    }

    public static BaseModule_ProvideAuthenticationServiceFactory create(BaseModule baseModule, Provider<AuthenticationNetworkInterface> provider, Provider<PKCE> provider2) {
        return new BaseModule_ProvideAuthenticationServiceFactory(baseModule, provider, provider2);
    }

    public static AuthenticationServiceInterface provideAuthenticationService(BaseModule baseModule, AuthenticationNetworkInterface authenticationNetworkInterface, PKCE pkce) {
        return (AuthenticationServiceInterface) Preconditions.checkNotNull(baseModule.provideAuthenticationService(authenticationNetworkInterface, pkce), "Cannot return null from a non-@Nullable @Provides method");
    }
}
