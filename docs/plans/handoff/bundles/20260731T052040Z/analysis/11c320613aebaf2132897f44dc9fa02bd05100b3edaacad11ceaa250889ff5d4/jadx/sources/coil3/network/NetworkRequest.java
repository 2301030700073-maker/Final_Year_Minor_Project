package coil3.network;

import androidx.compose.ui.Modifier;
import coil3.Extras;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NetworkRequest {
    public final Extras extras;
    public final NetworkHeaders headers;
    public final String method;
    public final String url;

    public NetworkRequest(String str, String str2, NetworkHeaders networkHeaders, Extras extras) {
        this.url = str;
        this.method = str2;
        this.headers = networkHeaders;
        this.extras = extras;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkRequest)) {
            return false;
        }
        NetworkRequest networkRequest = (NetworkRequest) obj;
        return this.url.equals(networkRequest.url) && Intrinsics.areEqual(this.method, networkRequest.method) && this.headers.equals(networkRequest.headers) && Intrinsics.areEqual(this.extras, networkRequest.extras);
    }

    public final int hashCode() {
        return this.extras.data.hashCode() + ((this.headers.data.hashCode() + Modifier.CC.m(this.url.hashCode() * 31, 31, this.method)) * 961);
    }

    public final String toString() {
        return "NetworkRequest(url=" + this.url + ", method=" + this.method + ", headers=" + this.headers + ", body=null, extras=" + this.extras + ")";
    }
}
