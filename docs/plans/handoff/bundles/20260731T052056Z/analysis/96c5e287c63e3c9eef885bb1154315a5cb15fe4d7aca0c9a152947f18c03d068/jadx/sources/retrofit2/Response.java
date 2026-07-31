package retrofit2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Response<T> {
    public final Object body;
    public final okhttp3.Response rawResponse;

    public Response(okhttp3.Response response, Object obj) {
        this.rawResponse = response;
        this.body = obj;
    }

    public final String toString() {
        return this.rawResponse.toString();
    }
}
