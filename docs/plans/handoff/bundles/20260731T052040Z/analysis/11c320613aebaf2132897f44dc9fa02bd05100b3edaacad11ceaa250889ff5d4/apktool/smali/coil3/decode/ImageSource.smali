.class public interface abstract Lcoil3/decode/ImageSource;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract fileOrNull()Lokio/Path;
.end method

.method public abstract getFileSystem()Lokio/FileSystem;
.end method

.method public abstract getMetadata()Landroidx/room/Room;
.end method

.method public abstract source()Lokio/BufferedSource;
.end method
