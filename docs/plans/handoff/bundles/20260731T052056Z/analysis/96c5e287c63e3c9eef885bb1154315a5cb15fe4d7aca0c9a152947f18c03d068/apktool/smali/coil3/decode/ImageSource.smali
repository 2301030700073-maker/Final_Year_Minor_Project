.class public interface abstract Lcoil3/decode/ImageSource;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract fileOrNull()Lokio/Path;
.end method

.method public abstract getFileSystem()Lokio/FileSystem;
.end method

.method public abstract getMetadata()Lcoil3/util/UtilsKt;
.end method

.method public abstract source()Lokio/BufferedSource;
.end method
