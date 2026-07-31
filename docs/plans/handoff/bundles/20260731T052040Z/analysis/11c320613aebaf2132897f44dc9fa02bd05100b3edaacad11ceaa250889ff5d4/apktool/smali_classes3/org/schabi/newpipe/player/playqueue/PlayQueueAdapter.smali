.class public final Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

.field public final playQueueItemBuilder:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

.field public playQueueReactor:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcastReceiver:Lio/reactivex/rxjava3/core/Flowable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueItemBuilder:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    .line 14
    .line 15
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 16
    .line 17
    iget-object p1, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcastReceiver:Lio/reactivex/rxjava3/core/Flowable;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromPublisher$PublisherSubscriber;

    .line 28
    .line 29
    invoke-direct {p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromPublisher$PublisherSubscriber;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lkotlin/math/MathKt;->onError(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Ljava/lang/NullPointerException;

    .line 44
    .line 45
    const-string v0, "Actually not, but can\'t throw other exceptions due to RS"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :catch_0
    move-exception p0

    .line 55
    throw p0

    .line 56
    :cond_0
    const-string p0, "Play Queue has not been initialized."

    .line 57
    .line 58
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    throw p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 1
    instance-of v0, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;

    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 18
    .line 19
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueItemBuilder:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    iget-object v2, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemVideoTitleView:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v2, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemAdditionalDetailsView:Landroid/widget/TextView;

    .line 44
    .line 45
    iget-object v3, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemRoot:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploader()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-static {v5}, Lorg/schabi/newpipe/util/ServiceHelper;->getNameOfServiceById(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v4}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getDuration()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    const-wide/16 v6, 0x0

    .line 75
    .line 76
    cmp-long v2, v4, v6

    .line 77
    .line 78
    iget-object v4, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemDurationView:Landroid/widget/TextView;

    .line 79
    .line 80
    const/16 v5, 0x8

    .line 81
    .line 82
    if-lez v2, :cond_1

    .line 83
    .line 84
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getDuration()J

    .line 85
    .line 86
    .line 87
    move-result-wide v6

    .line 88
    invoke-static {v6, v7}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :goto_0
    iget-object v2, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 100
    .line 101
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getThumbnails()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    const v6, 0x7f0801b8

    .line 112
    .line 113
    .line 114
    invoke-static {v4}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    const/4 v7, 0x1

    .line 119
    invoke-static {v2, v4, v6, v7}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 120
    .line 121
    .line 122
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 123
    .line 124
    const/16 v4, 0xd

    .line 125
    .line 126
    invoke-direct {v2, p0, v0, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    new-instance v2, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    .line 133
    .line 134
    invoke-direct {v2, p0, v0, v5}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemHandle:Landroid/widget/ImageView;

    .line 141
    .line 142
    new-instance v2, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;

    .line 143
    .line 144
    const/4 v3, 0x0

    .line 145
    invoke-direct {v2, p0, p1, v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-ne p0, p2, :cond_2

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_2
    move v7, v3

    .line 159
    :goto_1
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 160
    .line 161
    invoke-virtual {p0, v7}, Landroid/view/View;->setSelected(Z)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_3
    instance-of p0, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$HFHolder;

    .line 166
    .line 167
    if-eqz p0, :cond_4

    .line 168
    .line 169
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 174
    .line 175
    .line 176
    :cond_4
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p2, p0, :cond_0

    .line 5
    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "Attempting to create view holder with undefined type: "

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object p2, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance p0, Lorg/schabi/newpipe/util/FallbackViewHolder;

    .line 26
    .line 27
    new-instance p2, Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$HFHolder;

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_1
    new-instance p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const v0, 0x7f0d00d8

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;-><init>(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    return-object p0
.end method
