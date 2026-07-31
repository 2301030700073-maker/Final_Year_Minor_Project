package coil3.network;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import coil3.Extras;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        return this.extras.data.hashCode() + ((this.headers.data.hashCode() + Animation.CC.m(this.url.hashCode() * 31, 31, this.method)) * 961);
    }

    public final String toString() {
        StringBuilder m352m = Modifier.CC.m352m("NetworkRequest(url=", this.url, ", method=", this.method, ", headers=");
        m352m.append(this.headers);
        m352m.append(", body=null, extras=");
        m352m.append(this.extras);
        m352m.append(")");
        return m352m.toString();
    }
}
