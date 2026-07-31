package okio;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface BufferedSource extends Source, ReadableByteChannel {
    boolean exhausted();

    Buffer getBuffer();

    InputStream inputStream();

    RealBufferedSource peek();

    boolean rangeEquals(long j, ByteString byteString);

    long readAll(BufferedSink bufferedSink);

    byte readByte();

    ByteString readByteString(long j);

    int readInt();

    short readShort();

    String readUtf8LineStrict();

    String readUtf8LineStrict(long j);

    boolean request(long j);

    void require(long j);

    void skip(long j);
}
