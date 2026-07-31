.class public interface abstract Lokio/BufferedSource;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lokio/Source;
.implements Ljava/nio/channels/ReadableByteChannel;


# virtual methods
.method public abstract exhausted()Z
.end method

.method public abstract getBuffer()Lokio/Buffer;
.end method

.method public abstract inputStream()Ljava/io/InputStream;
.end method

.method public abstract peek()Lokio/RealBufferedSource;
.end method

.method public abstract rangeEquals(JLokio/ByteString;)Z
.end method

.method public abstract readAll(Lokio/BufferedSink;)J
.end method

.method public abstract readByte()B
.end method

.method public abstract readByteString(J)Lokio/ByteString;
.end method

.method public abstract readInt()I
.end method

.method public abstract readShort()S
.end method

.method public abstract readUtf8LineStrict()Ljava/lang/String;
.end method

.method public abstract readUtf8LineStrict(J)Ljava/lang/String;
.end method

.method public abstract request(J)Z
.end method

.method public abstract require(J)V
.end method

.method public abstract skip(J)V
.end method
