.class public final Lus/shandian/giga/service/DownloadManager$MissionIterator;
.super Landroidx/recyclerview/widget/DiffUtil;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final FINISHED:Ljava/lang/Object;

.field public final PENDING:Ljava/lang/Object;

.field public current:Ljava/util/ArrayList;

.field public hasFinished:Z

.field public final hidden:Ljava/util/ArrayList;

.field public snapshot:Ljava/util/ArrayList;

.field public final synthetic this$0:Lus/shandian/giga/service/DownloadManager;


# direct methods
.method public constructor <init>(Lus/shandian/giga/service/DownloadManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinished:Z

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getSpecialItems()Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    instance-of p2, p1, Lus/shandian/giga/get/Mission;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    instance-of p2, p0, Lus/shandian/giga/get/Mission;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    check-cast p1, Lus/shandian/giga/get/Mission;

    .line 22
    .line 23
    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 24
    .line 25
    check-cast p0, Lus/shandian/giga/get/Mission;

    .line 26
    .line 27
    iget-object p0, p0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->equals(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final areItemsTheSame(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-ne p1, p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final getItem(I)Lokio/PriorityQueue;
    .locals 3

    .line 1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    .line 8
    .line 9
    const/16 v1, 0xf

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    new-instance p0, Lokio/PriorityQueue;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-direct {p0, p1, v2, v1}, Lokio/PriorityQueue;-><init>(ILjava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    .line 22
    .line 23
    if-ne p1, p0, :cond_1

    .line 24
    .line 25
    new-instance p0, Lokio/PriorityQueue;

    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    invoke-direct {p0, p1, v2, v1}, Lokio/PriorityQueue;-><init>(ILjava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    new-instance p0, Lokio/PriorityQueue;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    check-cast p1, Lus/shandian/giga/get/Mission;

    .line 36
    .line 37
    invoke-direct {p0, v0, p1, v1}, Lokio/PriorityQueue;-><init>(ILjava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    return-object p0
.end method

.method public final getNewListSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getOldListSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getSpecialItems()Ljava/util/ArrayList;
    .locals 5

    .line 1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    .line 7
    .line 8
    iget-object v2, v2, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v3, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    .line 16
    .line 17
    iget-object v3, v3, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v4, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    new-instance v4, Lus/shandian/giga/service/DownloadManager$MissionIterator$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-direct {v4, p0, v1, v2}, Lus/shandian/giga/service/DownloadManager$MissionIterator$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/service/DownloadManager$MissionIterator;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v3, v4}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-lez v3, :cond_0

    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    add-int/2addr v3, v4

    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-lez v4, :cond_1

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-lez v3, :cond_2

    .line 68
    .line 69
    iget-object v3, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-lez v1, :cond_3

    .line 85
    .line 86
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-lez v1, :cond_4

    .line 99
    .line 100
    const/4 v1, 0x1

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const/4 v1, 0x0

    .line 103
    :goto_1
    iput-boolean v1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinished:Z

    .line 104
    .line 105
    monitor-exit v0

    .line 106
    return-object v4

    .line 107
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw p0
.end method
