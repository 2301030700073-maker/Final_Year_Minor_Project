package okio;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface BufferedSource extends Source, ReadableByteChannel {
    Buffer getBuffer();

    long indexOf(long j, ByteString byteString);

    InputStream inputStream();

    boolean rangeEquals(long j, ByteString byteString);

    long readAll(Sink sink);

    byte[] readByteArray();

    String readString(Charset charset);

    boolean request(long j);

    int select(Options options);
}
