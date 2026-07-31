.class public final Lcoil3/disk/RealDiskCache;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


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
