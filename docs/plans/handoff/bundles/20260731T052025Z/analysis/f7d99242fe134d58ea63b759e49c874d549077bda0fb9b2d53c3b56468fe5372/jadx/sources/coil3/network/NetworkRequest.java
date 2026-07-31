package coil3.network;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import coil3.Extras;
import coil3.network.internal.UtilsKt;
import kotlin.Deprecated;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NetworkRequest {
    private final NetworkRequestBody body;
    private final Extras extras;
    private final NetworkHeaders headers;
    private final String method;
    private final String url;

    public /* synthetic */ NetworkRequest(String str, String str2, NetworkHeaders networkHeaders, NetworkRequestBody networkRequestBody, Extras extras, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? UtilsKt.HTTP_METHOD_GET : str2, (i & 4) != 0 ? NetworkHeaders.EMPTY : networkHeaders, (i & 8) != 0 ? null : networkRequestBody, (i & 16) != 0 ? Extras.EMPTY : extras);
    }

    public static /* synthetic */ NetworkRequest copy$default(NetworkRequest networkRequest, String str, String str2, NetworkHeaders networkHeaders, NetworkRequestBody networkRequestBody, Extras extras, int i, Object obj) {
        if ((i & 1) != 0) {
            str = networkRequest.url;
        }
        if ((i & 2) != 0) {
            str2 = networkRequest.method;
        }
        if ((i & 4) != 0) {
            networkHeaders = networkRequest.headers;
        }
        if ((i & 8) != 0) {
            networkRequestBody = networkRequest.body;
        }
        if ((i & 16) != 0) {
            extras = networkRequest.extras;
        }
        Extras extras2 = extras;
        NetworkHeaders networkHeaders2 = networkHeaders;
        return networkRequest.copy(str, str2, networkHeaders2, networkRequestBody, extras2);
    }

    @Deprecated
    public final /* synthetic */ NetworkRequest copy(String str, String str2, NetworkHeaders networkHeaders, NetworkRequestBody networkRequestBody) {
        return new NetworkRequest(str, str2, networkHeaders, networkRequestBody, this.extras);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkRequest)) {
            return false;
        }
        NetworkRequest networkRequest = (NetworkRequest) obj;
        return Intrinsics.areEqual(this.url, networkRequest.url) && Intrinsics.areEqual(this.method, networkRequest.method) && Intrinsics.areEqual(this.headers, networkRequest.headers) && Intrinsics.areEqual(this.body, networkRequest.body) && Intrinsics.areEqual(this.extras, networkRequest.extras);
    }

    public final NetworkRequestBody getBody() {
        return this.body;
    }

    public final Extras getExtras() {
        return this.extras;
    }

    public final NetworkHeaders getHeaders() {
        return this.headers;
    }

    public final String getMethod() {
        return this.method;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode = (this.headers.hashCode() + Modifier.CC.m(this.url.hashCode() * 31, this.method, 31)) * 31;
        NetworkRequestBody networkRequestBody = this.body;
        return this.extras.hashCode() + ((hashCode + (networkRequestBody == null ? 0 : networkRequestBody.hashCode())) * 31);
    }

    public String toString() {
        String str = this.url;
        String str2 = this.method;
        NetworkHeaders networkHeaders = this.headers;
        NetworkRequestBody networkRequestBody = this.body;
        Extras extras = this.extras;
        StringBuilder m = Config.CC.m("NetworkRequest(url=", str, ", method=", str2, ", headers=");
        m.append(networkHeaders);
        m.append(", body=");
        m.append(networkRequestBody);
        m.append(", extras=");
        m.append(extras);
        m.append(")");
        return m.toString();
    }

    public final NetworkRequest copy(String str, String str2, NetworkHeaders networkHeaders, NetworkRequestBody networkRequestBody, Extras extras) {
        return new NetworkRequest(str, str2, networkHeaders, networkRequestBody, extras);
    }

    public NetworkRequest(String str, String str2, NetworkHeaders networkHeaders, NetworkRequestBody networkRequestBody, Extras extras) {
        this.url = str;
        this.method = str2;
        this.headers = networkHeaders;
        this.body = networkRequestBody;
        this.extras = extras;
    }

    public /* synthetic */ NetworkRequest(String str, String str2, NetworkHeaders networkHeaders, NetworkRequestBody networkRequestBody, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? UtilsKt.HTTP_METHOD_GET : str2, (i & 4) != 0 ? NetworkHeaders.EMPTY : networkHeaders, (i & 8) != 0 ? null : networkRequestBody);
    }

    public static /* synthetic */ NetworkRequest copy$default(NetworkRequest networkRequest, String str, String str2, NetworkHeaders networkHeaders, NetworkRequestBody networkRequestBody, int i, Object obj) {
        if ((i & 1) != 0) {
            str = networkRequest.url;
        }
        if ((i & 2) != 0) {
            str2 = networkRequest.method;
        }
        if ((i & 4) != 0) {
            networkHeaders = networkRequest.headers;
        }
        if ((i & 8) != 0) {
            networkRequestBody = networkRequest.body;
        }
        return networkRequest.copy(str, str2, networkHeaders, networkRequestBody);
    }

    @Deprecated
    public /* synthetic */ NetworkRequest(String str, String str2, NetworkHeaders networkHeaders, NetworkRequestBody networkRequestBody) {
        this(str, str2, networkHeaders, networkRequestBody, null, 16, null);
    }
}
