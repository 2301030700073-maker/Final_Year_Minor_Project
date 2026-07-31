.class public final Lcoil3/disk/RealDiskCache;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final cache:Lcoil3/disk/DiskLruCache;

.field public final fileSystem:Lokio/FileSystem;


# direct methods
.method public constructor <init>(JLokio/FileSystem;Lokio/Path;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcoil3/disk/RealDiskCache;->fileSystem:Lokio/FileSystem;

    .line 5
    .line 6
    new-instance v0, Lcoil3/disk/DiskLruCache;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3, p4}, Lcoil3/disk/DiskLruCache;-><init>(JLokio/FileSystem;Lokio/Path;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcoil3/disk/RealDiskCache;->cache:Lcoil3/disk/DiskLruCache;

    .line 12
    .line 13
    return-void
.end method
