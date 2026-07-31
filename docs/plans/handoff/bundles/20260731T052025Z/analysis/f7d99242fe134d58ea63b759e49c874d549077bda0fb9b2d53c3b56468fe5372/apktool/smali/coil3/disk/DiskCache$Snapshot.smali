.class public interface abstract Lcoil3/disk/DiskCache$Snapshot;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/disk/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Snapshot"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract closeAndOpenEditor()Lcoil3/disk/DiskCache$Editor;
.end method

.method public abstract getData()Lokio/Path;
.end method

.method public abstract getMetadata()Lokio/Path;
.end method
