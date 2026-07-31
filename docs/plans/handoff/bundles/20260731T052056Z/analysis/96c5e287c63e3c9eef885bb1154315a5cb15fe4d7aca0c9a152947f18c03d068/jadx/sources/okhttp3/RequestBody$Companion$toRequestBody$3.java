package okhttp3;

import okio.BufferedSink;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RequestBody$Companion$toRequestBody$3 extends RequestBody {
    public final /* synthetic */ int $byteCount;
    public final /* synthetic */ MediaType $contentType;
    public final /* synthetic */ byte[] $this_toRequestBody;

    public RequestBody$Companion$toRequestBody$3(MediaType mediaType, int i, byte[] bArr) {
        this.$contentType = mediaType;
        this.$byteCount = i;
        this.$this_toRequestBody = bArr;
    }

    @Override // okhttp3.RequestBody
    public final long contentLength() {
        return this.$byteCount;
    }

    @Override // okhttp3.RequestBody
    public final MediaType contentType() {
        return this.$contentType;
    }

    @Override // okhttp3.RequestBody
    public final void writeTo(BufferedSink bufferedSink) {
        bufferedSink.write(this.$byteCount, this.$this_toRequestBody);
    }
}
