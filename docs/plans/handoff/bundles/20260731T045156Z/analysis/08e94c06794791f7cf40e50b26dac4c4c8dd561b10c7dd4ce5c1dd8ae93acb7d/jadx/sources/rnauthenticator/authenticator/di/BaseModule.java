package rnauthenticator.authenticator.di;

import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import rnauthenticator.authenticator.Config;
import rnauthenticator.authenticator.network.AuthenticationNetwork;
import rnauthenticator.authenticator.network.AuthenticationNetworkInterface;
import rnauthenticator.authenticator.network.Endpoint;
import rnauthenticator.authenticator.network.http.HttpRequest;
import rnauthenticator.authenticator.security.PKCE;
import rnauthenticator.authenticator.service.AuthenticationService;
import rnauthenticator.authenticator.service.AuthenticationServiceInterface;

/* compiled from: BaseModule.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0007J\b\u0010\b\u001a\u00020\tH\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\tH\u0007J\b\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000fH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lrnauthenticator/authenticator/di/BaseModule;", "", "config", "Lrnauthenticator/authenticator/Config;", "<init>", "(Lrnauthenticator/authenticator/Config;)V", "provideHttpRequest", "Lrnauthenticator/authenticator/network/http/HttpRequest;", "provideEndpoint", "Lrnauthenticator/authenticator/network/Endpoint;", "provideAuthenticationRepo", "Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;", "httpRequest", "endpoint", "providePKCE", "Lrnauthenticator/authenticator/security/PKCE;", "provideAuthenticationService", "Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;", "network", "pkce", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Module
/* loaded from: classes2.dex */
public final class BaseModule {
    private final Config config;

    public BaseModule(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.config = config;
    }

    @Provides
    public final HttpRequest provideHttpRequest() {
        return new HttpRequest(this.config.getClientId(), this.config.getClientSecret());
    }

    @Provides
    public final Endpoint provideEndpoint() {
        return new Endpoint(this.config.getEnvironment(), this.config.getTokenExchangeFlow(), this.config.getClientType());
    }

    @Provides
    public final AuthenticationNetworkInterface provideAuthenticationRepo(HttpRequest httpRequest, Endpoint endpoint) {
        Intrinsics.checkNotNullParameter(httpRequest, "httpRequest");
        Intrinsics.checkNotNullParameter(endpoint, "endpoint");
        return new AuthenticationNetwork(httpRequest, endpoint);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Provides
    public final PKCE providePKCE() {
        return new PKCE(null, 1, 0 == true ? 1 : 0);
    }

    @Provides
    public final AuthenticationServiceInterface provideAuthenticationService(AuthenticationNetworkInterface network, PKCE pkce) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(pkce, "pkce");
        return new AuthenticationService(network, this.config, pkce);
    }
}
