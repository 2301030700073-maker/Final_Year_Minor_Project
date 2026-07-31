.class public interface abstract Lcoil3/decode/ImageSource;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/decode/ImageSource$Metadata;
    }
.end annotation


# virtual methods
.method public abstract file()Lokio/Path;
.end method

.method public abstract fileOrNull()Lokio/Path;
.end method

.method public abstract getFileSystem()Lokio/FileSystem;
.end method

.method public abstract getMetadata()Lcoil3/decode/ImageSource$Metadata;
.end method

.method public abstract source()Lokio/BufferedSource;
.end method

.method public abstract sourceOrNull()Lokio/BufferedSource;
.end method
