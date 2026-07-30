package rnauthenticator.authenticator;

import dagger.MembersInjector;
import javax.inject.Provider;
import rnauthenticator.authenticator.service.AuthenticationServiceInterface;

/* loaded from: classes2.dex */
public final class Authenticator_MembersInjector implements MembersInjector<Authenticator> {
    private final Provider<AuthenticationServiceInterface> serviceProvider;

    public Authenticator_MembersInjector(Provider<AuthenticationServiceInterface> provider) {
        this.serviceProvider = provider;
    }

    public static MembersInjector<Authenticator> create(Provider<AuthenticationServiceInterface> provider) {
        return new Authenticator_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(Authenticator authenticator) {
        injectService(authenticator, this.serviceProvider.get());
    }

    public static void injectService(Authenticator authenticator, AuthenticationServiceInterface authenticationServiceInterface) {
        authenticator.service = authenticationServiceInterface;
    }
}
