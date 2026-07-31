package okhttp3;

import okio.Buffer;
import okio.BufferedSource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ResponseBody$Companion$asResponseBody$1 extends ResponseBody {
    public final /* synthetic */ long $contentLength;
    public final /* synthetic */ MediaType $contentType;
    public final /* synthetic */ Buffer $this_asResponseBody;

    public ResponseBody$Companion$asResponseBody$1(MediaType mediaType, long j, Buffer buffer) {
        this.$contentType = mediaType;
        this.$contentLength = j;
        this.$this_asResponseBody = buffer;
    }

    @Override // okhttp3.ResponseBody
    public final long contentLength() {
        return this.$contentLength;
    }

    @Override // okhttp3.ResponseBody
    public final MediaType contentType() {
        return this.$contentType;
    }

    @Override // okhttp3.ResponseBody
    public final BufferedSource source() {
        return this.$this_asResponseBody;
    }
}
