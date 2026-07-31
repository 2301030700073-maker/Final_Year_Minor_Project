.class public interface abstract Lcoil3/disk/DiskCache$Editor;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/disk/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Editor"
.end annotation


# virtual methods
.method public abstract abort()V
.end method

.method public abstract commit()V
.end method

.method public abstract commitAndOpenSnapshot()Lcoil3/disk/DiskCache$Snapshot;
.end method

.method public abstract getData()Lokio/Path;
.end method

.method public abstract getMetadata()Lokio/Path;
.end method
