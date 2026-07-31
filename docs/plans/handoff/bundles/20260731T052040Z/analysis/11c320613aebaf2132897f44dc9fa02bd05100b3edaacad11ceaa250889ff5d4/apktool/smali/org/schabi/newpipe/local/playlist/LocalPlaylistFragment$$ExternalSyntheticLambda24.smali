.class public final synthetic Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/content/Context;

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    check-cast v1, Ljava/util/List;

    .line 11
    .line 12
    sget p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 13
    .line 14
    sget-object p1, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;->linkHandler:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    const/4 v2, 0x3

    .line 30
    const/4 v3, 0x2

    .line 31
    if-eq p1, v0, :cond_2

    .line 32
    .line 33
    if-ne p1, v3, :cond_1

    .line 34
    .line 35
    new-instance p0, Lkotlin/collections/ReversedListReadOnly;

    .line 36
    .line 37
    invoke-direct {p0, v1}, Lkotlin/collections/ReversedListReadOnly;-><init>(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 41
    .line 42
    invoke-direct {p1, p0, v2}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    new-instance p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 46
    .line 47
    const/16 v0, 0x9

    .line 48
    .line 49
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lkotlin/sequences/MergingSequence;

    .line 53
    .line 54
    invoke-direct {v0, p1, p0, v3}, Lkotlin/sequences/MergingSequence;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    .line 55
    .line 56
    .line 57
    new-instance p0, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    const/16 p1, 0x12

    .line 60
    .line 61
    invoke-direct {p0, p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Lkotlin/sequences/FilteringSequence;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-direct {p1, v0, v1, p0}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 68
    .line 69
    .line 70
    instance-of p0, p1, Lkotlin/sequences/DropTakeSequence;

    .line 71
    .line 72
    if-eqz p0, :cond_0

    .line 73
    .line 74
    check-cast p1, Lkotlin/sequences/DropTakeSequence;

    .line 75
    .line 76
    invoke-interface {p1}, Lkotlin/sequences/DropTakeSequence;->take()Lkotlin/sequences/Sequence;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    new-instance p0, Lkotlin/sequences/TakeSequence;

    .line 82
    .line 83
    invoke-direct {p0, p1}, Lkotlin/sequences/TakeSequence;-><init>(Lkotlin/sequences/Sequence;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    new-instance v0, Lkotlin/collections/ReversedListReadOnly;

    .line 91
    .line 92
    invoke-direct {v0, p0}, Lkotlin/collections/ReversedListReadOnly;-><init>(Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    const/16 v5, 0x3e

    .line 97
    .line 98
    const-string v1, ","

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    const/4 v3, 0x0

    .line 102
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const-string p1, "https://www.youtube.com/watch_videos?video_ids="

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 114
    .line 115
    .line 116
    const/4 p0, 0x0

    .line 117
    return-object p0

    .line 118
    :cond_2
    new-instance p1, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 119
    .line 120
    invoke-direct {p1, v1, v2}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Object;I)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 124
    .line 125
    const/16 v1, 0xa

    .line 126
    .line 127
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 128
    .line 129
    .line 130
    new-instance v1, Lkotlin/sequences/MergingSequence;

    .line 131
    .line 132
    invoke-direct {v1, p1, v0, v3}, Lkotlin/sequences/MergingSequence;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    .line 133
    .line 134
    .line 135
    new-instance p1, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$$ExternalSyntheticLambda3;

    .line 136
    .line 137
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    new-instance p0, Lkotlin/sequences/MergingSequence;

    .line 141
    .line 142
    invoke-direct {p0, v1, p1, v3}, Lkotlin/sequences/MergingSequence;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    .line 143
    .line 144
    .line 145
    const-string p1, "\n"

    .line 146
    .line 147
    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    goto :goto_1

    .line 152
    :cond_3
    new-instance v5, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 153
    .line 154
    const/16 p0, 0x8

    .line 155
    .line 156
    invoke-direct {v5, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 157
    .line 158
    .line 159
    const/16 v6, 0x1e

    .line 160
    .line 161
    const-string v2, "\n"

    .line 162
    .line 163
    const/4 v3, 0x0

    .line 164
    const/4 v4, 0x0

    .line 165
    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    :goto_1
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 170
    .line 171
    const/4 v0, 0x4

    .line 172
    invoke-direct {p1, p0, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 173
    .line 174
    .line 175
    return-object p1
.end method

.method public onClick(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 3

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;->$r8$classId:I

    .line 2
    .line 3
    iget-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 8
    .line 9
    check-cast p2, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 15
    .line 16
    iget-object p1, p2, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, p1, p2, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->changeThumbnailStreamId(JZ)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    sget p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 28
    .line 29
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v0, p1, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, -0x1

    .line 41
    if-eq v1, v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->hasHeader()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    add-int/2addr v0, v1

    .line 51
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 59
    .line 60
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    iget-object p1, p1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->getPlaylist(J)Lio/reactivex/rxjava3/core/Flowable;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->blockingFirst()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Ljava/util/List;

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    .line 86
    .line 87
    iget-wide v0, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    .line 88
    .line 89
    iget-wide p1, p2, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamId:J

    .line 90
    .line 91
    cmp-long p1, v0, p1

    .line 92
    .line 93
    if-nez p1, :cond_2

    .line 94
    .line 95
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->updateThumbnailUrl()V

    .line 96
    .line 97
    .line 98
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 99
    .line 100
    iget-object p1, p1, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->setStreamCountAndOverallDuration(Ljava/util/ArrayList;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 106
    .line 107
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnectionPool;->setHasChangesToSave()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->saveImmediate()V

    .line 111
    .line 112
    .line 113
    :goto_1
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
