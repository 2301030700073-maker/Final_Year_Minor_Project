.class public final synthetic Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    .line 13
    .line 14
    check-cast v3, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 15
    .line 16
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->onItemClickListener:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-interface {p0, v3, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;->held(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    move v1, v2

    .line 24
    :cond_0
    return v1

    .line 25
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/util/OnClickGesture;

    .line 26
    .line 27
    check-cast v3, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;

    .line 28
    .line 29
    iget-object p1, v3, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 30
    .line 31
    invoke-interface {p0, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->held(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return v2

    .line 35
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;

    .line 36
    .line 37
    check-cast v3, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 38
    .line 39
    iget-object p0, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/jsoup/parser/TokenData;

    .line 40
    .line 41
    iget-object p0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lorg/schabi/newpipe/util/OnClickGesture;

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    invoke-interface {p0, v3}, Lorg/schabi/newpipe/util/OnClickGesture;->held(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return v2

    .line 51
    :pswitch_2
    check-cast p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;

    .line 52
    .line 53
    check-cast v3, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 54
    .line 55
    iget-object p0, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/jsoup/parser/TokenData;

    .line 56
    .line 57
    iget-object p0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Lorg/schabi/newpipe/util/OnClickGesture;

    .line 60
    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    invoke-interface {p0, v3}, Lorg/schabi/newpipe/util/OnClickGesture;->held(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return v2

    .line 67
    :pswitch_3
    check-cast p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;

    .line 68
    .line 69
    check-cast v3, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 70
    .line 71
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lcoil3/ComponentRegistry$Builder;

    .line 72
    .line 73
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Lokhttp3/ConnectionPool;

    .line 76
    .line 77
    if-eqz p0, :cond_3

    .line 78
    .line 79
    invoke-virtual {p0, v3}, Lokhttp3/ConnectionPool;->held(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    return v2

    .line 83
    :pswitch_4
    check-cast p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;

    .line 84
    .line 85
    check-cast v3, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 86
    .line 87
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lcoil3/ComponentRegistry$Builder;

    .line 88
    .line 89
    iget-object v0, p1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Landroid/content/Context;

    .line 92
    .line 93
    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    iget-object p0, p1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Landroid/content/Context;

    .line 102
    .line 103
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    .line 104
    .line 105
    invoke-static {p0, v3}, Landroidx/sqlite/SQLite;->openCommentAuthorIfPresent(Landroidx/fragment/app/FragmentActivity;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemContentView:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-eqz p0, :cond_5

    .line 116
    .line 117
    iget-object p1, p1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p1, Landroid/content/Context;

    .line 120
    .line 121
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {p1, p0}, Landroidx/transition/Transition$Impl26;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_0
    return v2

    .line 129
    :pswitch_5
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 130
    .line 131
    check-cast v3, Ljava/util/function/Consumer;

    .line 132
    .line 133
    sget-object p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 134
    .line 135
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_7

    .line 142
    .line 143
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 144
    .line 145
    if-nez p0, :cond_6

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_6
    invoke-interface {v3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    move v1, v2

    .line 152
    :cond_7
    :goto_1
    return v1

    .line 153
    :pswitch_6
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;

    .line 154
    .line 155
    check-cast v3, Ljava/lang/String;

    .line 156
    .line 157
    sget p1, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->$r8$clinit:I

    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {p0, v3}, Landroidx/transition/Transition$Impl26;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return v2

    .line 167
    :pswitch_7
    check-cast p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;

    .line 168
    .line 169
    check-cast v3, Lorg/schabi/newpipe/database/LocalItem;

    .line 170
    .line 171
    iget-object p0, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/jsoup/parser/TokenData;

    .line 172
    .line 173
    iget-object p0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p0, Lorg/schabi/newpipe/util/OnClickGesture;

    .line 176
    .line 177
    if-eqz p0, :cond_8

    .line 178
    .line 179
    invoke-interface {p0, v3}, Lorg/schabi/newpipe/util/OnClickGesture;->held(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_8
    return v2

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
