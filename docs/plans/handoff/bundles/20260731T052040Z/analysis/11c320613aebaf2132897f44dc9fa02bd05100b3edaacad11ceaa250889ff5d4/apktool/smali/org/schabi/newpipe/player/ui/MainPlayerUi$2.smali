.class public Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 9

    .line 1
    if-lez p3, :cond_7

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v2, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    :goto_0
    move v2, v1

    .line 39
    goto :goto_3

    .line 40
    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 45
    .line 46
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 47
    .line 48
    new-array v3, v0, [I

    .line 49
    .line 50
    move v4, v2

    .line 51
    :goto_1
    iget v5, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 52
    .line 53
    if-ge v4, v5, :cond_3

    .line 54
    .line 55
    iget-object v5, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/collection/LruCache;

    .line 56
    .line 57
    aget-object v5, v5, v4

    .line 58
    .line 59
    iget-object v6, v5, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 62
    .line 63
    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 64
    .line 65
    iget-object v7, v5, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v7, Ljava/util/ArrayList;

    .line 68
    .line 69
    const/4 v8, 0x1

    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    sub-int/2addr v6, v8

    .line 77
    invoke-virtual {v5, v6, v1, v8, v2}, Landroidx/collection/LruCache;->findOnePartiallyOrCompletelyVisibleChild(IIZZ)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-virtual {v5, v2, v6, v8, v2}, Landroidx/collection/LruCache;->findOnePartiallyOrCompletelyVisibleChild(IIZZ)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    :goto_2
    aput v5, v3, v4

    .line 91
    .line 92
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    if-lez v0, :cond_4

    .line 96
    .line 97
    aget v2, v3, v2

    .line 98
    .line 99
    :cond_4
    :goto_3
    add-int/2addr p2, v2

    .line 100
    if-lt p2, p3, :cond_7

    .line 101
    .line 102
    iget p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;->$r8$classId:I

    .line 103
    .line 104
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;->this$0:Ljava/lang/Object;

    .line 105
    .line 106
    packed-switch p1, :pswitch_data_0

    .line 107
    .line 108
    .line 109
    check-cast p0, Lorg/schabi/newpipe/player/PlayQueueActivity;

    .line 110
    .line 111
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 112
    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    iget-object p1, p1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 116
    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isComplete()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_5

    .line 124
    .line 125
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 126
    .line 127
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 128
    .line 129
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->fetch()V

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_5
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 134
    .line 135
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 138
    .line 139
    .line 140
    goto :goto_4

    .line 141
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    .line 142
    .line 143
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->hasMoreItems()Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_7

    .line 148
    .line 149
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-nez p1, :cond_7

    .line 156
    .line 157
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->loadMoreItems()V

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 162
    .line 163
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 164
    .line 165
    iget-object p1, p1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 166
    .line 167
    if-eqz p1, :cond_6

    .line 168
    .line 169
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isComplete()Z

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    if-nez p2, :cond_6

    .line 174
    .line 175
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->fetch()V

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_6
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 180
    .line 181
    if-eqz p0, :cond_7

    .line 182
    .line 183
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 184
    .line 185
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 186
    .line 187
    .line 188
    :cond_7
    :goto_4
    return-void

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
