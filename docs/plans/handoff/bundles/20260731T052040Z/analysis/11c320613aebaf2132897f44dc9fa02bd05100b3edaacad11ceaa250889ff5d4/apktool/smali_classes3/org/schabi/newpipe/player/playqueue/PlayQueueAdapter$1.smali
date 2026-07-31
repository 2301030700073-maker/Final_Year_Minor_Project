.class public final Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;->this$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;->this$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 12
    .line 13
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;->this$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    invoke-interface {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;->type()Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$Type;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_4

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x6

    .line 30
    if-eq v0, v1, :cond_5

    .line 31
    .line 32
    const/4 v1, 0x7

    .line 33
    if-eq v0, v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$ErrorEvent;

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$ErrorEvent;->getErrorIndex()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$ErrorEvent;->getQueueIndex()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$MoveEvent;

    .line 57
    .line 58
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$MoveEvent;->getFromIndex()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$MoveEvent;->getToIndex()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$RemoveEvent;

    .line 71
    .line 72
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$RemoveEvent;->getRemoveIndex()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$RemoveEvent;->getQueueIndex()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$AppendEvent;

    .line 88
    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 90
    .line 91
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$AppendEvent;->getAmount()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_4
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$SelectEvent;

    .line 104
    .line 105
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$SelectEvent;->getOldIndex()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$SelectEvent;->getNewIndex()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 117
    .line 118
    .line 119
    :cond_5
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;->this$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 11
    .line 12
    return-void
.end method
