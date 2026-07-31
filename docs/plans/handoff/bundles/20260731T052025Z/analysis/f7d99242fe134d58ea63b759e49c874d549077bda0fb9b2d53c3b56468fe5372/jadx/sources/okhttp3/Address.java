package okhttp3;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import j$.util.Objects;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.tls.OkHostnameVerifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Address {
    public final CertificatePinner certificatePinner;
    public final List connectionSpecs;
    public final HttpUrl.Companion dns;
    public final HostnameVerifier hostnameVerifier;
    public final List protocols;
    public final HttpUrl.Companion proxyAuthenticator;
    public final ProxySelector proxySelector;
    public final SocketFactory socketFactory;
    public final SSLSocketFactory sslSocketFactory;
    public final HttpUrl url;

    public Address(String str, int i, HttpUrl.Companion companion, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, OkHostnameVerifier okHostnameVerifier, CertificatePinner certificatePinner, HttpUrl.Companion companion2, List list, List list2, ProxySelector proxySelector) {
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
        this.hostnameVerifier = okHostnameVerifier;
        this.certificatePinner = certificatePinner;
        this.proxyAuthenticator = companion2;
        this.proxySelector = proxySelector;
        HttpUrl.Builder builder = new HttpUrl.Builder();
        builder.scheme(sSLSocketFactory != null ? "https" : "http");
        builder.host(str);
        if (1 > i || i >= 65536) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("unexpected port: ", i));
            throw null;
        }
        builder.port = i;
        this.url = builder.build();
        this.protocols = _UtilJvmKt.toImmutableList(list);
        this.connectionSpecs = _UtilJvmKt.toImmutableList(list2);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Address)) {
            return false;
        }
        Address address = (Address) obj;
        return Intrinsics.areEqual(this.url, address.url) && equalsNonHost$okhttp(address);
    }

    public final boolean equalsNonHost$okhttp(Address address) {
        address.getClass();
        return Intrinsics.areEqual(this.dns, address.dns) && Intrinsics.areEqual(this.proxyAuthenticator, address.proxyAuthenticator) && Intrinsics.areEqual(this.protocols, address.protocols) && Intrinsics.areEqual(this.connectionSpecs, address.connectionSpecs) && Intrinsics.areEqual(this.proxySelector, address.proxySelector) && Intrinsics.areEqual(this.sslSocketFactory, address.sslSocketFactory) && Intrinsics.areEqual(this.hostnameVerifier, address.hostnameVerifier) && Intrinsics.areEqual(this.certificatePinner, address.certificatePinner) && this.url.port == address.url.port;
    }

    public final int hashCode() {
        return Objects.hashCode(this.certificatePinner) + ((Objects.hashCode(this.hostnameVerifier) + ((Objects.hashCode(this.sslSocketFactory) + ((this.proxySelector.hashCode() + CameraDevices$CC.m(this.connectionSpecs, CameraDevices$CC.m(this.protocols, (this.proxyAuthenticator.hashCode() + ((this.dns.hashCode() + Modifier.CC.m(527, this.url.url, 31)) * 31)) * 31, 31), 31)) * 961)) * 31)) * 31);
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
