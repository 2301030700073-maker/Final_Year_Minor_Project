.class public final Lcoil3/disk/RealDiskCache$RealEditor;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final editor:Landroidx/compose/runtime/Latch;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Latch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/disk/RealDiskCache$RealEditor;->editor:Landroidx/compose/runtime/Latch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final commitAndOpenSnapshot$1()Lcoil3/disk/RealDiskCache$RealSnapshot;
    .locals 3

    .line 1
    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealEditor;->editor:Landroidx/compose/runtime/Latch;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcoil3/disk/DiskLruCache;

    .line 6
    .line 7
    iget-object v1, v0, Lcoil3/disk/DiskLruCache;->lock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    const/4 v2, 0x1

    .line 11
    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/Latch;->complete(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lcoil3/disk/DiskLruCache$Entry;

    .line 17
    .line 18
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcoil3/disk/DiskLruCache;->get(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Snapshot;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v1

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    new-instance v0, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcoil3/disk/RealDiskCache$RealSnapshot;-><init>(Lcoil3/disk/DiskLruCache$Snapshot;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v1

    .line 37
    throw p0
.end method
