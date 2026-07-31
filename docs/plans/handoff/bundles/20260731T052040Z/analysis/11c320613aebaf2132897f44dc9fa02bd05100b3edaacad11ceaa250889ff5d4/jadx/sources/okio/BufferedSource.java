package okio;

import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface BufferedSource extends Source, ReadableByteChannel {
    Buffer getBuffer();

    long readAll(BufferedSink bufferedSink);

    byte readByte();

    ByteString readByteString(long j);

    int readInt();

    short readShort();

    String readString(Charset charset);

    String readUtf8LineStrict(long j);

    boolean request(long j);

    void require(long j);

    int select(Options options);

    void skip(long j);
}
