.class public Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;
.super Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment<",
        "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
        "Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;",
        ">;",
        "Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public bookmarkReactor:Lorg/reactivestreams/Subscription;

.field public disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

.field public isBookmarkButtonReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public playlistBookmarkButton:Landroid/view/MenuItem;

.field public playlistControlBinding:Lokhttp3/Dispatcher;

.field public playlistEntity:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

.field public playlistOverallDurationSeconds:J

.field public remotePlaylistManager:Lorg/jsoup/parser/TokenData;

.field public streamCount:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_PLAYLIST:Lorg/schabi/newpipe/error/UserAction;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;-><init>(Lorg/schabi/newpipe/error/UserAction;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getListHeaderSupplier()Ljava/util/function/Supplier;
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    const v2, 0x7f0d00de

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0a0308

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-static {v2}, Lokhttp3/Dispatcher;->bind(Landroid/view/View;)Lokhttp3/Dispatcher;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const v1, 0x7f0a030c

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v6, v2

    .line 38
    check-cast v6, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 39
    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    const v1, 0x7f0a030d

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    move-object v7, v2

    .line 50
    check-cast v7, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 51
    .line 52
    if-eqz v7, :cond_0

    .line 53
    .line 54
    const v1, 0x7f0a0310

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 62
    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    const v1, 0x7f0a0311

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    move-object v8, v2

    .line 73
    check-cast v8, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 74
    .line 75
    if-eqz v8, :cond_0

    .line 76
    .line 77
    const v1, 0x7f0a0312

    .line 78
    .line 79
    .line 80
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    move-object v9, v2

    .line 85
    check-cast v9, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 86
    .line 87
    if-eqz v9, :cond_0

    .line 88
    .line 89
    const v1, 0x7f0a041c

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    move-object v10, v2

    .line 97
    check-cast v10, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 98
    .line 99
    if-eqz v10, :cond_0

    .line 100
    .line 101
    const v1, 0x7f0a041d

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    move-object v11, v2

    .line 109
    check-cast v11, Landroid/widget/RelativeLayout;

    .line 110
    .line 111
    if-eqz v11, :cond_0

    .line 112
    .line 113
    const v1, 0x7f0a041e

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    move-object v12, v2

    .line 121
    check-cast v12, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 122
    .line 123
    if-eqz v12, :cond_0

    .line 124
    .line 125
    new-instance v3, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 126
    .line 127
    move-object v4, v0

    .line 128
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 129
    .line 130
    invoke-direct/range {v3 .. v12}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;-><init>(Landroid/widget/RelativeLayout;Lokhttp3/Dispatcher;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;)V

    .line 131
    .line 132
    .line 133
    iput-object v3, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 134
    .line 135
    iput-object v5, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 136
    .line 137
    new-instance p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda38;

    .line 138
    .line 139
    const/4 v0, 0x3

    .line 140
    invoke-direct {p0, v3, v0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda38;-><init>(Ljava/lang/Object;I)V

    .line 141
    .line 142
    .line 143
    return-object p0

    .line 144
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    const-string v0, "Missing required view with ID: "

    .line 153
    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const/4 p0, 0x0

    .line 162
    return-object p0
.end method

.method public final getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->getPlayQueue$1(I)Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final getPlayQueue$1(I)Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;
    .locals 6

    .line 1
    new-instance v4, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 7
    .line 8
    iget-object v0, v0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lorg/schabi/newpipe/extractor/InfoItem;

    .line 25
    .line 26
    instance-of v2, v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 31
    .line 32
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;

    .line 37
    .line 38
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 39
    .line 40
    check-cast v1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 41
    .line 42
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 47
    .line 48
    check-cast v2, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 49
    .line 50
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 55
    .line 56
    check-cast p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListInfo;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    move v5, p1

    .line 63
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;I)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public final handleNextItems(Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->handleNextItems(Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->itemsList:Ljava/util/List;

    .line 5
    .line 6
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 7
    .line 8
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/Page;->isValid(Lorg/schabi/newpipe/extractor/Page;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    xor-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->setStreamCountAndOverallDuration(Ljava/util/List;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 6
    .line 7
    invoke-super {v0, v1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 11
    .line 12
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->rootView:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    const-wide/16 v3, 0x64

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    invoke-static {v2, v6, v3, v4}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJ)V

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 23
    .line 24
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v5, v2

    .line 27
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 28
    .line 29
    const/4 v12, 0x0

    .line 30
    const/16 v13, 0x1c

    .line 31
    .line 32
    const-wide/16 v7, 0x12c

    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    const-wide/16 v10, 0x0

    .line 36
    .line 37
    invoke-static/range {v5 .. v13}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 38
    .line 39
    .line 40
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 41
    .line 42
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iget-object v4, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 59
    .line 60
    const/4 v5, 0x5

    .line 61
    if-nez v2, :cond_0

    .line 62
    .line 63
    iget-object v2, v4, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderName:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 66
    .line 67
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderUrl()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_1

    .line 83
    .line 84
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 85
    .line 86
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 91
    .line 92
    invoke-direct {v4, v0, v1, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    iget-object v2, v4, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderName:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 102
    .line 103
    const v4, 0x7f1303dc

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 107
    .line 108
    .line 109
    :cond_1
    :goto_0
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 110
    .line 111
    iget-object v2, v2, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v2, Landroid/widget/LinearLayout;

    .line 114
    .line 115
    const/4 v4, 0x0

    .line 116
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    sget-object v7, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 124
    .line 125
    iget v7, v7, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 126
    .line 127
    const/4 v8, 0x1

    .line 128
    if-ne v2, v7, :cond_2

    .line 129
    .line 130
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    sget-object v7, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    .line 135
    .line 136
    const-string v7, "RD"

    .line 137
    .line 138
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_3

    .line 143
    .line 144
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getId()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMusicMixId(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_2

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    move/from16 p1, v6

    .line 156
    .line 157
    goto/16 :goto_2

    .line 158
    .line 159
    :cond_3
    :goto_1
    new-instance v2, Lio/noties/markwon/BlockHandlerDef;

    .line 160
    .line 161
    invoke-direct {v2, v8}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 162
    .line 163
    .line 164
    new-instance v7, Lio/noties/markwon/BlockHandlerDef;

    .line 165
    .line 166
    invoke-direct {v7, v8}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 167
    .line 168
    .line 169
    new-instance v9, Lio/noties/markwon/BlockHandlerDef;

    .line 170
    .line 171
    invoke-direct {v9, v8}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 172
    .line 173
    .line 174
    new-instance v10, Lio/noties/markwon/BlockHandlerDef;

    .line 175
    .line 176
    invoke-direct {v10, v8}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 177
    .line 178
    .line 179
    invoke-static {v4}, Lkotlin/ranges/RangesKt;->createCornerTreatment(I)Lorg/jsoup/Jsoup;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    new-instance v12, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 184
    .line 185
    const/4 v13, 0x0

    .line 186
    invoke-direct {v12, v13}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 187
    .line 188
    .line 189
    new-instance v14, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 190
    .line 191
    invoke-direct {v14, v13}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 192
    .line 193
    .line 194
    new-instance v15, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 195
    .line 196
    invoke-direct {v15, v13}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 197
    .line 198
    .line 199
    move/from16 p1, v6

    .line 200
    .line 201
    new-instance v6, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 202
    .line 203
    invoke-direct {v6, v13}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 204
    .line 205
    .line 206
    new-instance v13, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 207
    .line 208
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 209
    .line 210
    .line 211
    iput-object v11, v13, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lorg/jsoup/Jsoup;

    .line 212
    .line 213
    iput-object v11, v13, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lorg/jsoup/Jsoup;

    .line 214
    .line 215
    iput-object v11, v13, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lorg/jsoup/Jsoup;

    .line 216
    .line 217
    iput-object v11, v13, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lorg/jsoup/Jsoup;

    .line 218
    .line 219
    iput-object v12, v13, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 220
    .line 221
    iput-object v14, v13, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 222
    .line 223
    iput-object v15, v13, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 224
    .line 225
    iput-object v6, v13, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 226
    .line 227
    iput-object v2, v13, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lio/noties/markwon/BlockHandlerDef;

    .line 228
    .line 229
    iput-object v7, v13, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lio/noties/markwon/BlockHandlerDef;

    .line 230
    .line 231
    iput-object v9, v13, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lio/noties/markwon/BlockHandlerDef;

    .line 232
    .line 233
    iput-object v10, v13, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lio/noties/markwon/BlockHandlerDef;

    .line 234
    .line 235
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 236
    .line 237
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderAvatarView:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v2, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 240
    .line 241
    invoke-virtual {v2, v13}, Lcom/google/android/material/imageview/ShapeableImageView;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 242
    .line 243
    .line 244
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 245
    .line 246
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderAvatarView:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v2, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 249
    .line 250
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    const v7, 0x7f06035e

    .line 255
    .line 256
    .line 257
    invoke-static {v6, v7}, Lcoil3/decode/StaticImageDecoderKt;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-virtual {v2, v6}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 262
    .line 263
    .line 264
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 265
    .line 266
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderAvatarView:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v2, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 269
    .line 270
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    const v7, 0x7f080144

    .line 275
    .line 276
    .line 277
    invoke-static {v6, v7}, Lokhttp3/Cookie$Companion;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    .line 283
    .line 284
    goto :goto_3

    .line 285
    :goto_2
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 286
    .line 287
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderAvatarView:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v2, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 290
    .line 291
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderAvatars()Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-static {v2, v6}, Lokhttp3/Cookie$Companion;->loadAvatar(Landroid/widget/ImageView;Ljava/util/List;)V

    .line 296
    .line 297
    .line 298
    :goto_3
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getStreamCount()J

    .line 299
    .line 300
    .line 301
    move-result-wide v6

    .line 302
    iput-wide v6, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->streamCount:J

    .line 303
    .line 304
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/ListInfo;->hasNextPage()Z

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    xor-int/lit8 v6, v6, 0x1

    .line 313
    .line 314
    invoke-virtual {v0, v2, v6}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->setStreamCountAndOverallDuration(Ljava/util/List;Z)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    if-eqz v2, :cond_4

    .line 322
    .line 323
    sget-object v6, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 324
    .line 325
    if-eq v2, v6, :cond_4

    .line 326
    .line 327
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/Description;->getContent()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    invoke-static {v6}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    if-nez v6, :cond_4

    .line 336
    .line 337
    new-instance v6, Lorg/schabi/newpipe/util/text/TextEllipsizer;

    .line 338
    .line 339
    iget-object v7, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 340
    .line 341
    iget-object v7, v7, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescription:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v7, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 344
    .line 345
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 346
    .line 347
    .line 348
    move-result v9

    .line 349
    invoke-static {v9}, Lorg/schabi/newpipe/util/ServiceHelper;->getServiceById(I)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    invoke-direct {v6, v7, v5, v9}, Lorg/schabi/newpipe/util/text/TextEllipsizer;-><init>(Landroid/widget/TextView;ILorg/schabi/newpipe/extractor/StreamingService;)V

    .line 354
    .line 355
    .line 356
    new-instance v5, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda1;

    .line 357
    .line 358
    invoke-direct {v5, v0, v4}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;I)V

    .line 359
    .line 360
    .line 361
    iput-object v5, v6, Lorg/schabi/newpipe/util/text/TextEllipsizer;->stateChangeListener:Ljava/util/function/Consumer;

    .line 362
    .line 363
    new-instance v5, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;

    .line 364
    .line 365
    const/4 v7, 0x7

    .line 366
    invoke-direct {v5, v0, v6, v7}, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 367
    .line 368
    .line 369
    iput-object v5, v6, Lorg/schabi/newpipe/util/text/TextEllipsizer;->onContentChanged:Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;

    .line 370
    .line 371
    iput-object v2, v6, Lorg/schabi/newpipe/util/text/TextEllipsizer;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 372
    .line 373
    iput-object v3, v6, Lorg/schabi/newpipe/util/text/TextEllipsizer;->canBeEllipsized:Ljava/lang/Boolean;

    .line 374
    .line 375
    new-instance v2, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;

    .line 376
    .line 377
    invoke-direct {v2, v6, v8}, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v6, v2}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->linkifyContentView(Ljava/util/function/Consumer;)V

    .line 381
    .line 382
    .line 383
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 384
    .line 385
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescriptionReadMore:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v2, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 388
    .line 389
    new-instance v3, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda3;

    .line 390
    .line 391
    invoke-direct {v3, v6, v4}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    .line 396
    .line 397
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 398
    .line 399
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescription:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v2, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 402
    .line 403
    new-instance v3, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda3;

    .line 404
    .line 405
    invoke-direct {v3, v6, v8}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_4
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 413
    .line 414
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescription:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v2, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 417
    .line 418
    const/16 v3, 0x8

    .line 419
    .line 420
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 421
    .line 422
    .line 423
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 424
    .line 425
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescriptionReadMore:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast v2, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 428
    .line 429
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 430
    .line 431
    .line 432
    :goto_4
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    if-nez v2, :cond_5

    .line 441
    .line 442
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 443
    .line 444
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    sget-object v5, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_PLAYLIST:Lorg/schabi/newpipe/error/UserAction;

    .line 449
    .line 450
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v6

    .line 454
    invoke-direct {v2, v3, v5, v6, v1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 458
    .line 459
    .line 460
    :cond_5
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->remotePlaylistManager:Lorg/jsoup/parser/TokenData;

    .line 461
    .line 462
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    iget-object v2, v2, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    .line 468
    .line 469
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 470
    .line 471
    .line 472
    move-result v3

    .line 473
    int-to-long v5, v3

    .line 474
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    iget-object v2, v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 479
    .line 480
    const-string v7, "remote_playlists"

    .line 481
    .line 482
    filled-new-array {v7}, [Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v7

    .line 486
    new-instance v9, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;

    .line 487
    .line 488
    const/4 v10, 0x2

    .line 489
    invoke-direct {v9, v3, v5, v6, v10}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;JI)V

    .line 490
    .line 491
    .line 492
    invoke-static {v2, v4, v7, v9}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    sget-object v3, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 497
    .line 498
    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    new-instance v3, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;

    .line 503
    .line 504
    const/16 v4, 0x16

    .line 505
    .line 506
    invoke-direct {v3, v0, v1, v4}, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 507
    .line 508
    .line 509
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 510
    .line 511
    const/16 v4, 0x14

    .line 512
    .line 513
    invoke-direct {v1, v4}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 514
    .line 515
    .line 516
    sget v4, Lio/reactivex/rxjava3/core/Flowable;->BUFFER_SIZE:I

    .line 517
    .line 518
    const-string v5, "maxConcurrency"

    .line 519
    .line 520
    invoke-static {v4, v5}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 521
    .line 522
    .line 523
    const-string v5, "bufferSize"

    .line 524
    .line 525
    invoke-static {v4, v5}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 526
    .line 527
    .line 528
    new-instance v5, Lcom/grack/nanojson/JsonBuilder;

    .line 529
    .line 530
    const/16 v6, 0x11

    .line 531
    .line 532
    invoke-direct {v5, v1, v3, v6}, Lcom/grack/nanojson/JsonBuilder;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v2, v5, v4, v4}, Lio/reactivex/rxjava3/core/Flowable;->flatMap(Lio/reactivex/rxjava3/functions/Function;II)Lio/reactivex/rxjava3/core/Flowable;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureError;

    .line 540
    .line 541
    invoke-direct {v2, v1, v8}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureError;-><init>(Lio/reactivex/rxjava3/core/Flowable;I)V

    .line 542
    .line 543
    .line 544
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-virtual {v2, v1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 553
    .line 554
    invoke-direct {v2, v0, v8}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Ljava/lang/Object;I)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 558
    .line 559
    .line 560
    iget-object v1, v0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 561
    .line 562
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 563
    .line 564
    invoke-static {v1, v2, v0}, Lnet/newpipe/app/AppKt;->initPlaylistControlClickListener(Landroidx/appcompat/app/AppCompatActivity;Lokhttp3/Dispatcher;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V

    .line 565
    .line 566
    .line 567
    return-void
.end method

.method public final initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->useMiniVariant:Z

    .line 8
    .line 9
    return-void
.end method

.method public final loadMoreItemsLogic()Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 6
    .line 7
    invoke-static {v0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda5;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v2, v0, v1, p0, v3}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda5;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;I)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    invoke-direct {p0, v2, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public final loadResult(Z)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, p0, p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->getPlaylistInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->isBookmarkButtonReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance p1, Lorg/jsoup/parser/TokenData;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p1, v0}, Lorg/jsoup/parser/TokenData;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->remotePlaylistManager:Lorg/jsoup/parser/TokenData;

    .line 33
    .line 34
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0f000f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a023e

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistBookmarkButton:Landroid/view/MenuItem;

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->updateBookmarkButtons()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const p0, 0x7f0d0061

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 13
    .line 14
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->remotePlaylistManager:Lorg/jsoup/parser/TokenData;

    .line 15
    .line 16
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistEntity:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 17
    .line 18
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->isBookmarkButtonReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    return-void
.end method

.method public final onDestroyView()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 3
    .line 4
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 5
    .line 6
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->isBookmarkButtonReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->bookmarkReactor:Lorg/reactivestreams/Subscription;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 29
    .line 30
    .line 31
    :cond_2
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->bookmarkReactor:Lorg/reactivestreams/Subscription;

    .line 32
    .line 33
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a004b

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance p1, Landroid/content/Intent;

    .line 16
    .line 17
    const-class v0, Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 18
    .line 19
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    const v0, 0x7f0a0246

    .line 28
    .line 29
    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p1, p0}, Landroidx/transition/Transition$Impl26;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_1
    const v0, 0x7f0a024d

    .line 44
    .line 45
    .line 46
    if-ne p1, v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->name:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 57
    .line 58
    if-nez p0, :cond_2

    .line 59
    .line 60
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    check-cast p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getThumbnails()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    :goto_0
    invoke-static {p1, v0, v2, p0}, Landroidx/transition/Transition$Impl26;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_3
    const v0, 0x7f0a023e

    .line 75
    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    if-ne p1, v0, :cond_7

    .line 79
    .line 80
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->isBookmarkButtonReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    .line 82
    if-eqz p1, :cond_8

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_8

    .line 89
    .line 90
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->remotePlaylistManager:Lorg/jsoup/parser/TokenData;

    .line 91
    .line 92
    if-nez p1, :cond_4

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 97
    .line 98
    const/4 v3, 0x3

    .line 99
    const-string/jumbo v4, "subscribeActual failed"

    .line 100
    .line 101
    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    iget-object v5, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistEntity:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 105
    .line 106
    if-nez v5, :cond_5

    .line 107
    .line 108
    check-cast v0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 109
    .line 110
    new-instance v5, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda4;

    .line 111
    .line 112
    invoke-direct {v5, v0, p1}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;Lorg/jsoup/parser/TokenData;)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 116
    .line 117
    invoke-direct {p1, v5, v3}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 118
    .line 119
    .line 120
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    new-instance v3, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 131
    .line 132
    const/16 v5, 0x12

    .line 133
    .line 134
    invoke-direct {v3, v5}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 135
    .line 136
    .line 137
    new-instance v5, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda11;

    .line 138
    .line 139
    invoke-direct {v5, p0, v2}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;I)V

    .line 140
    .line 141
    .line 142
    new-instance v2, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 143
    .line 144
    invoke-direct {v2, v3, v5}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 145
    .line 146
    .line 147
    :try_start_0
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 148
    .line 149
    invoke-direct {v3, v2, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v3}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :catchall_0
    move-exception p0

    .line 157
    invoke-static {p0, v4, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    throw p0

    .line 162
    :catch_0
    move-exception p0

    .line 163
    throw p0

    .line 164
    :cond_5
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistEntity:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 165
    .line 166
    if-eqz v0, :cond_6

    .line 167
    .line 168
    iget-wide v5, v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uid:J

    .line 169
    .line 170
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda1;

    .line 171
    .line 172
    invoke-direct {v0, p1, v5, v6, v1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;JI)V

    .line 173
    .line 174
    .line 175
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 176
    .line 177
    invoke-direct {p1, v0, v3}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 178
    .line 179
    .line 180
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    new-instance v2, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda11;

    .line 191
    .line 192
    invoke-direct {v2, p0, v1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;I)V

    .line 193
    .line 194
    .line 195
    new-instance v3, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 196
    .line 197
    const/16 v5, 0x13

    .line 198
    .line 199
    invoke-direct {v3, v5}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 200
    .line 201
    .line 202
    new-instance v5, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda11;

    .line 203
    .line 204
    const/4 v6, 0x2

    .line 205
    invoke-direct {v5, p0, v6}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;I)V

    .line 206
    .line 207
    .line 208
    new-instance v6, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 209
    .line 210
    invoke-direct {v6, v3, v5}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 211
    .line 212
    .line 213
    :try_start_1
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;

    .line 214
    .line 215
    invoke-direct {v3, v6, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/functions/Action;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 216
    .line 217
    .line 218
    :try_start_2
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 219
    .line 220
    invoke-direct {v2, v3, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    .line 225
    .line 226
    move-object v2, v6

    .line 227
    goto :goto_1

    .line 228
    :catchall_1
    move-exception p0

    .line 229
    :try_start_3
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    new-instance p1, Ljava/lang/NullPointerException;

    .line 233
    .line 234
    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 238
    .line 239
    .line 240
    throw p1

    .line 241
    :catch_1
    move-exception p0

    .line 242
    throw p0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 243
    :catchall_2
    move-exception p0

    .line 244
    invoke-static {p0, v4, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    throw p0

    .line 249
    :catch_2
    move-exception p0

    .line 250
    throw p0

    .line 251
    :cond_6
    sget-object p1, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_RUNNABLE:Lio/reactivex/rxjava3/internal/functions/Functions$EmptyRunnable;

    .line 252
    .line 253
    new-instance v2, Lio/reactivex/rxjava3/disposables/RunnableDisposable;

    .line 254
    .line 255
    invoke-direct {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    :goto_1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 259
    .line 260
    invoke-virtual {p0, v2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_7
    const v0, 0x7f0a023d

    .line 265
    .line 266
    .line 267
    if-ne p1, v0, :cond_9

    .line 268
    .line 269
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 270
    .line 271
    if-eqz p1, :cond_8

    .line 272
    .line 273
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 274
    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->getPlayQueue$1(I)Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    new-instance v3, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;

    .line 292
    .line 293
    const/16 v4, 0x1c

    .line 294
    .line 295
    invoke-direct {v3, v4}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 296
    .line 297
    .line 298
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    check-cast v2, Ljava/util/List;

    .line 311
    .line 312
    new-instance v3, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda1;

    .line 313
    .line 314
    invoke-direct {v3, p0, v1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;I)V

    .line 315
    .line 316
    .line 317
    invoke-static {v0, v2, v3}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->createCorrespondingDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 322
    .line 323
    .line 324
    :cond_8
    :goto_2
    return v1

    .line 325
    :cond_9
    return v2
.end method

.method public final setStreamCountAndOverallDuration(Ljava/util/List;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistOverallDurationSeconds:J

    .line 10
    .line 11
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v2, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v2, v3}, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/LongStream;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sum()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    add-long/2addr v2, v0

    .line 30
    iput-wide v2, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistOverallDurationSeconds:J

    .line 31
    .line 32
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 33
    .line 34
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistStreamCount:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 37
    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 39
    .line 40
    iget-wide v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->streamCount:J

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-wide v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistOverallDurationSeconds:J

    .line 47
    .line 48
    invoke-static {v1, v2, p2}, Lorg/schabi/newpipe/util/Localization;->getDurationString(JZ)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    filled-new-array {v0, p0}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistTitleView:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final showInfoItemDialog(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    new-instance v1, Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2, v0, p0, p1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->START_HERE_ON_BACKGROUND:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 15
    .line 16
    new-instance v3, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/16 v4, 0x15

    .line 19
    .line 20
    invoke-direct {v3, p0, v0, v4}, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->setAction(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->create()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p0

    .line 35
    invoke-static {p0, p1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->reportErrorDuringInitialization(Ljava/lang/IllegalArgumentException;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final showLoading()V
    .locals 10

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showLoading()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 5
    .line 6
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->rootView:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-wide/16 v3, 0xc8

    .line 12
    .line 13
    invoke-static {v0, v2, v3, v4}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJ)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->animateHideRecyclerViewAllowingScrolling(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 22
    .line 23
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderAvatarView:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 26
    .line 27
    invoke-static {v0}, Lokio/Okio;->getRequestManager(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcoil3/request/ViewTargetRequestManager;->dispose()V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 35
    .line 36
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v1, p0

    .line 39
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    const/16 v9, 0x1c

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const-wide/16 v6, 0x0

    .line 46
    .line 47
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final updateBookmarkButtons()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistBookmarkButton:Landroid/view/MenuItem;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistEntity:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const v2, 0x7f08013e

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const v2, 0x7f08013f

    .line 19
    .line 20
    .line 21
    :goto_0
    if-nez v1, :cond_2

    .line 22
    .line 23
    const v1, 0x7f130066

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    const v1, 0x7f13050a

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistBookmarkButton:Landroid/view/MenuItem;

    .line 34
    .line 35
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_2
    return-void
.end method
