package okhttp3;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import j$.util.Objects;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.CipherSuite;
import okhttp3.HttpUrl;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.url._UrlKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Address {
    public final CertificatePinner certificatePinner;
    public final List connectionSpecs;
    public final CipherSuite.Companion dns;
    public final HostnameVerifier hostnameVerifier;
    public final List protocols;
    public final CipherSuite.Companion proxyAuthenticator;
    public final ProxySelector proxySelector;
    public final SocketFactory socketFactory;
    public final SSLSocketFactory sslSocketFactory;
    public final HttpUrl url;

    public Address(String str, int i, CipherSuite.Companion companion, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, CertificatePinner certificatePinner, CipherSuite.Companion companion2, List list, List list2, ProxySelector proxySelector) {
        str.getClass();
        companion.getClass();
        socketFactory.getClass();
        companion2.getClass();
        list.getClass();
        list2.getClass();
        proxySelector.getClass();
        this.dns = companion;
        this.socketFactory = socketFactory;
        this.sslSocketFactory = sSLSocketFactory;
        this.hostnameVerifier = hostnameVerifier;
        this.certificatePinner = certificatePinner;
        this.proxyAuthenticator = companion2;
        this.proxySelector = proxySelector;
        HttpUrl.Builder builder = new HttpUrl.Builder(0);
        String str2 = sSLSocketFactory != null ? "https" : "http";
        if (str2.equalsIgnoreCase("http")) {
            builder.scheme = "http";
        } else {
            if (!str2.equalsIgnoreCase("https")) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("unexpected scheme: ".concat(str2));
                throw null;
            }
            builder.scheme = "https";
        }
        String canonicalHost = _HostnamesCommonKt.toCanonicalHost(_UrlKt.percentDecode$default(0, 0, 7, str));
        if (canonicalHost == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("unexpected host: ".concat(str));
            throw null;
        }
        builder.host = canonicalHost;
        if (1 > i || i >= 65536) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "unexpected port: "));
            throw null;
        }
        builder.port = i;
        this.url = builder.m872build();
        this.protocols = _UtilJvmKt.toImmutableList(list);
        this.connectionSpecs = _UtilJvmKt.toImmutableList(list2);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Address)) {
            return false;
        }
        Address address = (Address) obj;
        return this.url.equals(address.url) && equalsNonHost$okhttp(address);
    }

    public final boolean equalsNonHost$okhttp(Address address) {
        return this.dns.equals(address.dns) && this.proxyAuthenticator.equals(address.proxyAuthenticator) && this.protocols.equals(address.protocols) && this.connectionSpecs.equals(address.connectionSpecs) && Intrinsics.areEqual(this.proxySelector, address.proxySelector) && Intrinsics.areEqual(this.sslSocketFactory, address.sslSocketFactory) && Intrinsics.areEqual(this.hostnameVerifier, address.hostnameVerifier) && Intrinsics.areEqual(this.certificatePinner, address.certificatePinner) && this.url.port == address.url.port;
    }

    public final int hashCode() {
        return Objects.hashCode(this.certificatePinner) + ((Objects.hashCode(this.hostnameVerifier) + ((Objects.hashCode(this.sslSocketFactory) + ((this.proxySelector.hashCode() + Modifier.CC.m(Modifier.CC.m((this.proxyAuthenticator.hashCode() + ((this.dns.hashCode() + Animation.CC.m(527, 31, this.url.url)) * 31)) * 31, 31, this.protocols), 31, this.connectionSpecs)) * 961)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Address{");
        HttpUrl httpUrl = this.url;
        sb.append(httpUrl.host);
        sb.append(':');
        sb.append(httpUrl.port);
        sb.append(", ");
        sb.append("proxySelector=" + this.proxySelector);
        sb.append('}');
        return sb.toString();
    }
}
