package coil3.network;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NetworkResponse {
    public final SourceResponseBody body;
    public final int code;
    public final Object delegate;
    public final NetworkHeaders headers;
    public final long requestMillis;
    public final long responseMillis;

    public NetworkResponse(int i, long j, long j2, NetworkHeaders networkHeaders, SourceResponseBody sourceResponseBody, Object obj) {
        this.code = i;
        this.requestMillis = j;
        this.responseMillis = j2;
        this.headers = networkHeaders;
        this.body = sourceResponseBody;
        this.delegate = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkResponse)) {
            return false;
        }
        NetworkResponse networkResponse = (NetworkResponse) obj;
        return this.code == networkResponse.code && this.requestMillis == networkResponse.requestMillis && this.responseMillis == networkResponse.responseMillis && Intrinsics.areEqual(this.headers, networkResponse.headers) && Intrinsics.areEqual(this.body, networkResponse.body) && Intrinsics.areEqual(this.delegate, networkResponse.delegate);
    }

    public final int hashCode() {
        int i = this.code * 31;
        long j = this.requestMillis;
        int i2 = (i + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.responseMillis;
        int hashCode = (this.headers.data.hashCode() + ((i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31;
        SourceResponseBody sourceResponseBody = this.body;
        int hashCode2 = (hashCode + (sourceResponseBody == null ? 0 : sourceResponseBody.source.hashCode())) * 31;
        Object obj = this.delegate;
        return hashCode2 + (obj != null ? obj.hashCode() : 0);
    }

    public final String toString() {
        return "NetworkResponse(code=" + this.code + ", requestMillis=" + this.requestMillis + ", responseMillis=" + this.responseMillis + ", headers=" + this.headers + ", body=" + this.body + ", delegate=" + this.delegate + ")";
    }
}
