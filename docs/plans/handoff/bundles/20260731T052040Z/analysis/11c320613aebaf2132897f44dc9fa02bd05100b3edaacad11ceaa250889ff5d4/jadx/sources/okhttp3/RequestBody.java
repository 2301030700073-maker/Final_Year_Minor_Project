package okhttp3;

import okio.ByteString;
import okio.RealBufferedSink;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class RequestBody {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        ByteString.EMPTY.getClass();
    }

    public abstract long contentLength();

    public abstract MediaType contentType();

    public abstract void writeTo(RealBufferedSink realBufferedSink);
}
