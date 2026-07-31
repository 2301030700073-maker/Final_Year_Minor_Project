package rnauthenticator.authenticator.di;

import dagger.internal.Preconditions;
import rnauthenticator.authenticator.Authenticator;
import rnauthenticator.authenticator.Authenticator_MembersInjector;
import rnauthenticator.authenticator.network.AuthenticationNetworkInterface;
import rnauthenticator.authenticator.service.AuthenticationServiceInterface;

/* loaded from: classes2.dex */
public final class DaggerBaseComponent implements BaseComponent {
    private final BaseModule baseModule;

    private DaggerBaseComponent(BaseModule baseModule) {
        this.baseModule = baseModule;
    }

    public static Builder builder() {
        return new Builder();
    }

    private AuthenticationNetworkInterface getAuthenticationNetworkInterface() {
        BaseModule baseModule = this.baseModule;
        return BaseModule_ProvideAuthenticationRepoFactory.provideAuthenticationRepo(baseModule, BaseModule_ProvideHttpRequestFactory.provideHttpRequest(baseModule), BaseModule_ProvideEndpointFactory.provideEndpoint(this.baseModule));
    }

    private AuthenticationServiceInterface getAuthenticationServiceInterface() {
        return BaseModule_ProvideAuthenticationServiceFactory.provideAuthenticationService(this.baseModule, getAuthenticationNetworkInterface(), BaseModule_ProvidePKCEFactory.providePKCE(this.baseModule));
    }

    @Override // rnauthenticator.authenticator.di.BaseComponent
    public void inject(Authenticator authenticator) {
        injectAuthenticator(authenticator);
    }

    private Authenticator injectAuthenticator(Authenticator authenticator) {
        Authenticator_MembersInjector.injectService(authenticator, getAuthenticationServiceInterface());
        return authenticator;
    }

    public static final class Builder {
        private BaseModule baseModule;

        private Builder() {
        }

        public Builder baseModule(BaseModule baseModule) {
            this.baseModule = (BaseModule) Preconditions.checkNotNull(baseModule);
            return this;
        }

        public BaseComponent build() {
            Preconditions.checkBuilderRequirement(this.baseModule, BaseModule.class);
            return new DaggerBaseComponent(this.baseModule);
        }
    }
}
