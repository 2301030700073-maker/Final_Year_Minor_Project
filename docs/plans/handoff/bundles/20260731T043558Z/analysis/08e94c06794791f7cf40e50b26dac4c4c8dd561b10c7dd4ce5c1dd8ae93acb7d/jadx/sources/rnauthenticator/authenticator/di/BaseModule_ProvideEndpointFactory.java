package rnauthenticator.authenticator.di;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import rnauthenticator.authenticator.network.Endpoint;

/* loaded from: classes2.dex */
public final class BaseModule_ProvideEndpointFactory implements Factory<Endpoint> {
    private final BaseModule module;

    public BaseModule_ProvideEndpointFactory(BaseModule baseModule) {
        this.module = baseModule;
    }

    @Override // javax.inject.Provider
    public Endpoint get() {
        return provideEndpoint(this.module);
    }

    public static BaseModule_ProvideEndpointFactory create(BaseModule baseModule) {
        return new BaseModule_ProvideEndpointFactory(baseModule);
    }

    public static Endpoint provideEndpoint(BaseModule baseModule) {
        return (Endpoint) Preconditions.checkNotNull(baseModule.provideEndpoint(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
