.class public interface abstract Lcoil3/disk/DiskCache;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/disk/DiskCache$Builder;,
        Lcoil3/disk/DiskCache$Editor;,
        Lcoil3/disk/DiskCache$Snapshot;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getDirectory()Lokio/Path;
.end method

.method public abstract getFileSystem()Lokio/FileSystem;
.end method

.method public abstract getMaxSize()J
.end method

.method public abstract getSize()J
.end method

.method public abstract openEditor(Ljava/lang/String;)Lcoil3/disk/DiskCache$Editor;
.end method

.method public abstract openSnapshot(Ljava/lang/String;)Lcoil3/disk/DiskCache$Snapshot;
.end method

.method public abstract remove(Ljava/lang/String;)Z
.end method

.method public abstract shutdown()V
.end method
