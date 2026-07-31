.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;
.implements Lio/reactivex/rxjava3/functions/Consumer;
.implements Lio/reactivex/rxjava3/functions/BiFunction;
.implements Lio/reactivex/rxjava3/functions/Function;
.implements Lio/reactivex/rxjava3/functions/Predicate;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/DebugSettingsFragment;)V
    .locals 0

    .line 1
    const/16 p1, 0x15

    .line 2
    .line 3
    iput p1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sparse-switch p0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Integer;

    .line 7
    .line 8
    sget p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->$r8$clinit:I

    .line 9
    .line 10
    return-void

    .line 11
    :sswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 12
    .line 13
    sget-object p0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    return-void

    .line 16
    :sswitch_1
    check-cast p1, Ljava/lang/Throwable;

    .line 17
    .line 18
    sget-object p0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "Progress update failure: "

    .line 21
    .line 22
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :sswitch_2
    check-cast p1, Ljava/lang/Integer;

    .line 27
    .line 28
    sget p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 29
    .line 30
    return-void

    .line 31
    :sswitch_3
    check-cast p1, Ljava/lang/Integer;

    .line 32
    .line 33
    sget p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->$r8$clinit:I

    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xe -> :sswitch_2
        0x12 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, "item is null"

    .line 4
    .line 5
    sget-object v1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    cmp-long p0, p0, v0

    .line 21
    .line 22
    if-lez p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v3

    .line 26
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_1
    check-cast p1, Ljava/util/List;

    .line 32
    .line 33
    invoke-static {p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$lambda$P_u4_HiCmhoZzHplnujq-I4PrkI(Ljava/util/List;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_2
    check-cast p1, Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 52
    .line 53
    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeJust;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeJust;-><init>(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    return-object v1

    .line 62
    :pswitch_3
    check-cast p1, Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 76
    .line 77
    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeJust;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeJust;-><init>(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :goto_2
    return-object v1

    .line 86
    :pswitch_4
    check-cast p1, Lio/reactivex/rxjava3/core/Flowable;

    .line 87
    .line 88
    sget-object p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->Companion:Lorg/schabi/newpipe/local/feed/service/FeedLoadService$Companion;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;

    .line 94
    .line 95
    invoke-direct {p0, p1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;-><init>(Lio/reactivex/rxjava3/core/Flowable;I)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;

    .line 99
    .line 100
    invoke-direct {v0, p1, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;-><init>(Lio/reactivex/rxjava3/core/Flowable;I)V

    .line 101
    .line 102
    .line 103
    const-wide/16 v4, 0x5dc

    .line 104
    .line 105
    invoke-virtual {v0, v4, v5}, Lio/reactivex/rxjava3/core/Flowable;->throttleLatest(J)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const/4 v0, 0x2

    .line 110
    new-array v0, v0, [Lorg/reactivestreams/Publisher;

    .line 111
    .line 112
    aput-object p0, v0, v3

    .line 113
    .line 114
    aput-object p1, v0, v2

    .line 115
    .line 116
    invoke-static {v0}, Lio/reactivex/rxjava3/core/Flowable;->concatArray([Lorg/reactivestreams/Publisher;)Lio/reactivex/rxjava3/core/Flowable;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .line 121
    new-instance p0, Ljava/util/ArrayList;

    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 124
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 125
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 126
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 127
    iget-wide v3, v3, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->displayIndex:J

    .line 128
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    invoke-virtual {v5}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getDisplayIndex()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 129
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;

    invoke-static {p0, v3, v0}, Lus/shandian/giga/util/Utility;->addItem(Ljava/util/ArrayList;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 130
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;

    invoke-static {p0, v3, v0}, Lus/shandian/giga/util/Utility;->addItem(Ljava/util/ArrayList;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    .line 132
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;

    invoke-static {p0, p1, v0}, Lus/shandian/giga/util/Utility;->addItem(Ljava/util/ArrayList;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 133
    :cond_2
    invoke-static {p0, v0}, Lus/shandian/giga/util/Utility;->addItemsWithSameIndex(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget p0, Lorg/schabi/newpipe/views/CustomCollapsingToolbarLayout;->$r8$clinit:I

    .line 7
    .line 8
    return-object p2

    .line 9
    :pswitch_0
    const/16 p0, 0x80

    .line 10
    .line 11
    iget-object v0, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    .line 26
    .line 27
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    .line 28
    .line 29
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    .line 30
    .line 31
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-object p2

    .line 37
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 5

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v1, "This needs to be implemented manually by using InfoItemDialog.Builder.setAction()"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 11
    .line 12
    invoke-direct {p0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0

    .line 16
    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 17
    .line 18
    invoke-direct {p0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :pswitch_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda14;

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    invoke-direct {p1, p0, v0}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda14;-><init>(Landroid/content/Context;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p2, p1}, Lkotlin/text/UStringsKt;->fetchItemInfoIfSparse(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/util/function/Consumer;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance p1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda14;

    .line 49
    .line 50
    const/4 v0, 0x3

    .line 51
    invoke-direct {p1, p0, v0}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda14;-><init>(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0, p2, p1}, Lkotlin/text/UStringsKt;->fetchItemInfoIfSparse(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/util/function/Consumer;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    new-instance p1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda14;

    .line 67
    .line 68
    invoke-direct {p1, p0, v2}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda14;-><init>(Landroid/content/Context;I)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0, p2, p1}, Lkotlin/text/UStringsKt;->fetchItemInfoIfSparse(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/util/function/Consumer;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    new-instance p1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda14;

    .line 84
    .line 85
    invoke-direct {p1, p0, v0}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda14;-><init>(Landroid/content/Context;I)V

    .line 86
    .line 87
    .line 88
    invoke-static {p0, p2, p1}, Lkotlin/text/UStringsKt;->fetchItemInfoIfSparse(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/util/function/Consumer;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_5
    const-string/jumbo p0, "subscribeActual failed"

    .line 93
    .line 94
    .line 95
    new-instance v1, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-direct {v1, v3}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;-><init>(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    iget-object v3, v1, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistTitleView:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v3, Landroid/content/SharedPreferences;

    .line 107
    .line 108
    iget-object v4, v1, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderAvatarView:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v4, Ljava/lang/String;

    .line 111
    .line 112
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_0

    .line 117
    .line 118
    sget-object p2, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    sget-object v3, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 122
    .line 123
    invoke-static {v3}, Lj$/time/OffsetDateTime;->now(Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    new-instance v4, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;

    .line 128
    .line 129
    invoke-direct {v4, v1, p2, v3, v2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;-><init>(Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Lj$/time/OffsetDateTime;I)V

    .line 130
    .line 131
    .line 132
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromCallable;

    .line 133
    .line 134
    invoke-direct {p2, v4}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 135
    .line 136
    .line 137
    sget-object v1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 138
    .line 139
    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    :goto_0
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 144
    .line 145
    const/16 v3, 0xc

    .line 146
    .line 147
    invoke-direct {v1, p1, v3}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 148
    .line 149
    .line 150
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;

    .line 151
    .line 152
    sget-object v3, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_CONSUMER:Lio/noties/markwon/BlockHandlerDef;

    .line 153
    .line 154
    sget-object v4, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 155
    .line 156
    invoke-direct {p1, p2, v1, v2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;-><init>(Lio/reactivex/rxjava3/core/Maybe;Ljava/lang/Object;I)V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 164
    .line 165
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 166
    .line 167
    invoke-direct {v2, v3, v1, v4}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 168
    .line 169
    .line 170
    :try_start_0
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;

    .line 171
    .line 172
    invoke-direct {v1, v2, p2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/Scheduler;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    .line 174
    .line 175
    :try_start_1
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;

    .line 176
    .line 177
    invoke-direct {p2, v1, v0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :catchall_0
    move-exception p1

    .line 185
    :try_start_2
    invoke-static {p1}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    new-instance p2, Ljava/lang/NullPointerException;

    .line 189
    .line 190
    invoke-direct {p2, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 194
    .line 195
    .line 196
    throw p2

    .line 197
    :catch_0
    move-exception p1

    .line 198
    throw p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    :catchall_1
    move-exception p1

    .line 200
    invoke-static {p1, p0, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    throw p0

    .line 205
    :catch_1
    move-exception p0

    .line 206
    throw p0

    .line 207
    :pswitch_6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-static {p0, p1}, Landroidx/transition/Transition$Impl26;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget p0, Lorg/schabi/newpipe/settings/DebugSettingsFragment;->$r8$clinit:I

    .line 7
    .line 8
    new-instance p0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    const-string p1, "Dummy"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0

    .line 16
    :pswitch_0
    sget p0, Lorg/schabi/newpipe/settings/DebugSettingsFragment;->$r8$clinit:I

    .line 17
    .line 18
    iget-object p0, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    sget-object p1, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 29
    .line 30
    const-class v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {p1, v1, v0}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(ILjava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "org.schabi.newpipe_streams_notifications"

    .line 37
    .line 38
    iget-object v1, p1, Landroidx/work/OneTimeWorkRequest$Builder;->tags:Ljava/util/LinkedHashSet;

    .line 39
    .line 40
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 48
    .line 49
    invoke-static {p0}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkManagerImpl;->enqueue(Landroidx/work/OneTimeWorkRequest;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :pswitch_1
    sget p0, Lorg/schabi/newpipe/settings/DebugSettingsFragment;->$r8$clinit:I

    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    throw p0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method
