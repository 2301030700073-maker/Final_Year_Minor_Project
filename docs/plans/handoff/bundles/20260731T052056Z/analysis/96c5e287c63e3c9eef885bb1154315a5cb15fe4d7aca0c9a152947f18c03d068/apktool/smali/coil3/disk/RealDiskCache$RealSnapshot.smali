.class public final Lcoil3/disk/RealDiskCache$RealSnapshot;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final snapshot:Lcoil3/disk/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lcoil3/disk/DiskLruCache$Snapshot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/disk/RealDiskCache$RealSnapshot;->snapshot:Lcoil3/disk/DiskLruCache$Snapshot;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealSnapshot;->snapshot:Lcoil3/disk/DiskLruCache$Snapshot;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache$Snapshot;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
