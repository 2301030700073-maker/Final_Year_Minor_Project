.class public final Lcoil3/disk/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final cleanFiles:Ljava/util/ArrayList;

.field public currentEditor:Landroidx/compose/runtime/Latch;

.field public final dirtyFiles:Ljava/util/ArrayList;

.field public final key:Ljava/lang/String;

.field public final lengths:[J

.field public lockingSnapshotCount:I

.field public readable:Z

.field public final synthetic this$0:Lcoil3/disk/DiskLruCache;

.field public zombie:Z


# direct methods
.method public constructor <init>(Lcoil3/disk/DiskLruCache;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/disk/DiskLruCache$Entry;->this$0:Lcoil3/disk/DiskLruCache;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/disk/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    new-array v0, p1, [J

    .line 10
    .line 11
    iput-object v0, p0, Lcoil3/disk/DiskLruCache$Entry;->lengths:[J

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcoil3/disk/DiskLruCache$Entry;->cleanFiles:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcoil3/disk/DiskLruCache$Entry;->dirtyFiles:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/16 p2, 0x2e

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    const/4 v1, 0x0

    .line 42
    :goto_0
    if-ge v1, p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcoil3/disk/DiskLruCache$Entry;->cleanFiles:Ljava/util/ArrayList;

    .line 48
    .line 49
    iget-object v3, p0, Lcoil3/disk/DiskLruCache$Entry;->this$0:Lcoil3/disk/DiskLruCache;

    .line 50
    .line 51
    iget-object v3, v3, Lcoil3/disk/DiskLruCache;->directory:Lokio/Path;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v3, v4}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    const-string v2, ".tmp"

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcoil3/disk/DiskLruCache$Entry;->dirtyFiles:Ljava/util/ArrayList;

    .line 70
    .line 71
    iget-object v3, p0, Lcoil3/disk/DiskLruCache$Entry;->this$0:Lcoil3/disk/DiskLruCache;

    .line 72
    .line 73
    iget-object v3, v3, Lcoil3/disk/DiskLruCache;->directory:Lokio/Path;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public final snapshot()Lcoil3/disk/DiskLruCache$Snapshot;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcoil3/disk/DiskLruCache$Entry;->readable:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcoil3/disk/DiskLruCache$Entry;->currentEditor:Landroidx/compose/runtime/Latch;

    .line 8
    .line 9
    if-nez v0, :cond_4

    .line 10
    .line 11
    iget-boolean v0, p0, Lcoil3/disk/DiskLruCache$Entry;->zombie:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lcoil3/disk/DiskLruCache$Entry;->cleanFiles:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    iget-object v4, p0, Lcoil3/disk/DiskLruCache$Entry;->this$0:Lcoil3/disk/DiskLruCache;

    .line 24
    .line 25
    if-ge v3, v2, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lokio/Path;

    .line 32
    .line 33
    iget-object v6, v4, Lcoil3/disk/DiskLruCache;->fileSystem:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 34
    .line 35
    invoke-virtual {v6, v5}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v4, p0}, Lcoil3/disk/DiskLruCache;->removeEntry(Lcoil3/disk/DiskLruCache$Entry;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    return-object v1

    .line 45
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget v0, p0, Lcoil3/disk/DiskLruCache$Entry;->lockingSnapshotCount:I

    .line 49
    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    iput v0, p0, Lcoil3/disk/DiskLruCache$Entry;->lockingSnapshotCount:I

    .line 53
    .line 54
    new-instance v0, Lcoil3/disk/DiskLruCache$Snapshot;

    .line 55
    .line 56
    invoke-direct {v0, v4, p0}, Lcoil3/disk/DiskLruCache$Snapshot;-><init>(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Entry;)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_4
    :goto_1
    return-object v1
.end method
