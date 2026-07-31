.class public final Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;
.super Lcom/xwray/groupie/GroupieAdapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public currentIndex:I

.field public final listener:Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xwray/groupie/GroupAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->listener:Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final selectSegment(Lorg/schabi/newpipe/info_list/StreamSegmentItem;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    iget v3, p0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->currentIndex:I

    .line 8
    .line 9
    invoke-virtual {p0, v3}, Lcom/xwray/groupie/GroupAdapter;->getGroupAtAdapterPosition(I)Lcom/xwray/groupie/Group;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lorg/schabi/newpipe/info_list/StreamSegmentItem;

    .line 14
    .line 15
    iput v2, p0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->currentIndex:I

    .line 16
    .line 17
    iput-boolean v2, v3, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->isSelected:Z

    .line 18
    .line 19
    iget-object v4, v3, Lcom/xwray/groupie/Item;->parentDataObserver:Lcom/xwray/groupie/GroupDataObserver;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-interface {v4, v3, v2, v1}, Lcom/xwray/groupie/GroupDataObserver;->onItemChanged(Lcom/xwray/groupie/Group;ILjava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v3

    .line 28
    iput v2, p0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->currentIndex:I

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo v5, "unSelectCurrentSegment: "

    .line 37
    .line 38
    .line 39
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "StreamSegmentAdapter"

    .line 50
    .line 51
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    move v4, v2

    .line 61
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Lcom/xwray/groupie/Group;

    .line 72
    .line 73
    invoke-interface {v5, p1}, Lcom/xwray/groupie/Group;->getPosition(Lorg/schabi/newpipe/info_list/StreamSegmentItem;)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-ltz v6, :cond_1

    .line 78
    .line 79
    add-int/2addr v6, v4

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    invoke-interface {v5}, Lcom/xwray/groupie/Group;->getItemCount()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    add-int/2addr v4, v5

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const/4 v6, -0x1

    .line 88
    :goto_2
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    iput v3, p0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->currentIndex:I

    .line 93
    .line 94
    iput-boolean v0, p1, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->isSelected:Z

    .line 95
    .line 96
    iget-object p0, p1, Lcom/xwray/groupie/Item;->parentDataObserver:Lcom/xwray/groupie/GroupDataObserver;

    .line 97
    .line 98
    if-eqz p0, :cond_3

    .line 99
    .line 100
    invoke-interface {p0, p1, v2, v1}, Lcom/xwray/groupie/GroupDataObserver;->onItemChanged(Lcom/xwray/groupie/Group;ILjava/lang/Integer;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method

.method public final selectSegmentAt(I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/GroupAdapter;->getGroupAtAdapterPosition(I)Lcom/xwray/groupie/Group;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lorg/schabi/newpipe/info_list/StreamSegmentItem;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->selectSegment(Lorg/schabi/newpipe/info_list/StreamSegmentItem;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->currentIndex:I

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v0, "selectSegmentAt: "

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "StreamSegmentAdapter"

    .line 34
    .line 35
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final setItems(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamSegments()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/xwray/groupie/GroupAdapter;->clear()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamSegments()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/16 v1, 0xa

    .line 30
    .line 31
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    .line 53
    .line 54
    new-instance v2, Lorg/schabi/newpipe/info_list/StreamSegmentItem;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->listener:Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;

    .line 60
    .line 61
    invoke-direct {v2, v1, v3}, Lorg/schabi/newpipe/info_list/StreamSegmentItem;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamSegment;Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xwray/groupie/GroupAdapter;->addAll(Ljava/util/Collection;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    return p0

    .line 73
    :cond_1
    const/4 p0, 0x0

    .line 74
    return p0
.end method
