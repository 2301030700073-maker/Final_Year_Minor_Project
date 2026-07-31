.class public final synthetic Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

.field public final synthetic f$1:Landroid/content/SharedPreferences;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/content/SharedPreferences;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda8;->f$1:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda8;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 6
    .line 7
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->hideMainPlayerOnLoadingNewStream()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAgeLimit()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const v1, 0x7f130479

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda8;->f$1:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    const p0, 0x7f13047b

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 p1, 0x1

    .line 45
    new-array p1, p1, [Ljava/lang/Object;

    .line 46
    .line 47
    aput-object p0, p1, v2

    .line 48
    .line 49
    const p0, 0x7f13042a

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showTextError(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->handleResult(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 64
    .line 65
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailContentRootHiding:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-boolean p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda8;->f$2:Z

    .line 71
    .line 72
    if-eqz p0, :cond_3

    .line 73
    .line 74
    iget-object p0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 75
    .line 76
    if-nez p0, :cond_1

    .line 77
    .line 78
    new-instance p0, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    .line 79
    .line 80
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 81
    .line 82
    .line 83
    iput-object p0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 84
    .line 85
    :cond_1
    sget-object p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-nez p0, :cond_2

    .line 92
    .line 93
    sget-object p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/StackItem;

    .line 100
    .line 101
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    iget-object p1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreams(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-nez p0, :cond_3

    .line 112
    .line 113
    :cond_2
    sget-object p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 114
    .line 115
    new-instance p1, Lorg/schabi/newpipe/fragments/detail/StackItem;

    .line 116
    .line 117
    iget v1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    .line 118
    .line 119
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 120
    .line 121
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v4, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 124
    .line 125
    invoke-direct {p1, v1, v2, v3, v4}, Lorg/schabi/newpipe/fragments/detail/StackItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isAutoplayEnabled()Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-nez p0, :cond_5

    .line 136
    .line 137
    iget-boolean p0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->forceFullscreen:Z

    .line 138
    .line 139
    if-eqz p0, :cond_4

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    return-void

    .line 143
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openVideoPlayerAutoFullscreen()V

    .line 144
    .line 145
    .line 146
    return-void
.end method
