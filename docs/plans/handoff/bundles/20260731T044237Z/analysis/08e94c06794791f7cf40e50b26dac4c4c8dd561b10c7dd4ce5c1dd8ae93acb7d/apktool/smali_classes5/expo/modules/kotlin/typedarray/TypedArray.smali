.class public interface abstract Lexpo/modules/kotlin/typedarray/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u000e\u001a\u00020\u000fH&J \u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007H&J \u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007H&J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0014\u001a\u00020\u0007H&J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u0007H&J\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H&J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u0007H&J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0014\u001a\u00020\u0007H&J\u0010\u0010 \u001a\u00020!2\u0006\u0010\u0014\u001a\u00020\u0007H&J\u0018\u0010\"\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0018H&J\u0018\u0010$\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u001aH&J\u0018\u0010%\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007H&J\u0018\u0010&\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u001dH&J\u0018\u0010\'\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u001fH&J\u0018\u0010(\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010#\u001a\u00020!H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0012\u0010\u000c\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\t\u00a8\u0006)"
    }
    d2 = {
        "Lexpo/modules/kotlin/typedarray/TypedArray;",
        "",
        "kind",
        "Lexpo/modules/kotlin/jni/TypedArrayKind;",
        "getKind",
        "()Lexpo/modules/kotlin/jni/TypedArrayKind;",
        "length",
        "",
        "getLength",
        "()I",
        "byteLength",
        "getByteLength",
        "byteOffset",
        "getByteOffset",
        "toDirectBuffer",
        "Ljava/nio/ByteBuffer;",
        "read",
        "",
        "buffer",
        "",
        "position",
        "size",
        "write",
        "readByte",
        "",
        "read2Byte",
        "",
        "read4Byte",
        "read8Byte",
        "",
        "readFloat",
        "",
        "readDouble",
        "",
        "writeByte",
        "value",
        "write2Byte",
        "write4Byte",
        "write8Byte",
        "writeFloat",
        "writeDouble",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getByteLength()I
.end method

.method public abstract getByteOffset()I
.end method

.method public abstract getKind()Lexpo/modules/kotlin/jni/TypedArrayKind;
.end method

.method public abstract getLength()I
.end method

.method public abstract read([BII)V
.end method

.method public abstract read2Byte(I)S
.end method

.method public abstract read4Byte(I)I
.end method

.method public abstract read8Byte(I)J
.end method

.method public abstract readByte(I)B
.end method

.method public abstract readDouble(I)D
.end method

.method public abstract readFloat(I)F
.end method

.method public abstract toDirectBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract write([BII)V
.end method

.method public abstract write2Byte(IS)V
.end method

.method public abstract write4Byte(II)V
.end method

.method public abstract write8Byte(IJ)V
.end method

.method public abstract writeByte(IB)V
.end method

.method public abstract writeDouble(ID)V
.end method

.method public abstract writeFloat(IF)V
.end method
