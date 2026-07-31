package okhttp3;

import okio.BufferedSink;
import okio.ByteString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class RequestBody {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        ByteString.EMPTY.getClass();
    }

    public abstract long contentLength();

    public abstract MediaType contentType();

    public boolean isOneShot() {
        return false;
    }

    public abstract void writeTo(BufferedSink bufferedSink);
}
