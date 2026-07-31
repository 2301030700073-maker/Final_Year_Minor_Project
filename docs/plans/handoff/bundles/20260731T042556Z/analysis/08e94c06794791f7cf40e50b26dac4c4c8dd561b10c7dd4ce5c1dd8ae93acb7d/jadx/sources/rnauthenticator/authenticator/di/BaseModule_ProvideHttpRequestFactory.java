package rnauthenticator.authenticator.di;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import rnauthenticator.authenticator.network.http.HttpRequest;

/* loaded from: classes2.dex */
public final class BaseModule_ProvideHttpRequestFactory implements Factory<HttpRequest> {
    private final BaseModule module;

    public BaseModule_ProvideHttpRequestFactory(BaseModule baseModule) {
        this.module = baseModule;
    }

    @Override // javax.inject.Provider
    public HttpRequest get() {
        return provideHttpRequest(this.module);
    }

    public static BaseModule_ProvideHttpRequestFactory create(BaseModule baseModule) {
        return new BaseModule_ProvideHttpRequestFactory(baseModule);
    }

    public static HttpRequest provideHttpRequest(BaseModule baseModule) {
        return (HttpRequest) Preconditions.checkNotNull(baseModule.provideHttpRequest(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
