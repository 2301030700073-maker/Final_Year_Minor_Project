package rnauthenticator.authenticator.di;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import rnauthenticator.authenticator.security.PKCE;

/* loaded from: classes2.dex */
public final class BaseModule_ProvidePKCEFactory implements Factory<PKCE> {
    private final BaseModule module;

    public BaseModule_ProvidePKCEFactory(BaseModule baseModule) {
        this.module = baseModule;
    }

    @Override // javax.inject.Provider
    public PKCE get() {
        return providePKCE(this.module);
    }

    public static BaseModule_ProvidePKCEFactory create(BaseModule baseModule) {
        return new BaseModule_ProvidePKCEFactory(baseModule);
    }

    public static PKCE providePKCE(BaseModule baseModule) {
        return (PKCE) Preconditions.checkNotNull(baseModule.providePKCE(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
