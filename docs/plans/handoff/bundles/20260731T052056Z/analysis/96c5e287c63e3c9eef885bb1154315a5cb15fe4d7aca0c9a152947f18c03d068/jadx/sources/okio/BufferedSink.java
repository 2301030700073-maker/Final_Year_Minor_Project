package okio;

import java.nio.channels.WritableByteChannel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface BufferedSink extends Sink, WritableByteChannel {
    Buffer getBuffer();

    BufferedSink write(int i, byte[] bArr);

    BufferedSink write(ByteString byteString);

    BufferedSink write(byte[] bArr);

    long writeAll(Source source);

    BufferedSink writeByte(int i);

    BufferedSink writeDecimalLong(long j);

    BufferedSink writeUtf8(String str);
}
