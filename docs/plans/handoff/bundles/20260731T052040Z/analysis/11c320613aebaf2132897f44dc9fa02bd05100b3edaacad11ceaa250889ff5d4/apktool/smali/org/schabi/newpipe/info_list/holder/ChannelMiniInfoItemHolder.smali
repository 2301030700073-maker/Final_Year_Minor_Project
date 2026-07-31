.class public Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;
.super Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final itemAdditionalDetailView:Landroid/widget/TextView;

.field public final itemChannelDescriptionView:Landroid/widget/TextView;

.field public final itemThumbnailView:Landroid/widget/ImageView;

.field public final itemTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;I)V
    .locals 2

    .line 1
    iput p4, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->$r8$classId:I

    .line 2
    .line 3
    const v0, 0x7f0a01f2

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0a01f1

    .line 7
    .line 8
    .line 9
    packed-switch p4, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/widget/ImageView;

    .line 22
    .line 23
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemTitleView:Landroid/widget/TextView;

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 36
    .line 37
    const p2, 0x7f0a01e9

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemAdditionalDetailView:Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 49
    .line 50
    const p2, 0x7f0a01ea

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemChannelDescriptionView:Landroid/widget/TextView;

    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/ImageView;

    .line 72
    .line 73
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 74
    .line 75
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Landroid/widget/TextView;

    .line 82
    .line 83
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemAdditionalDetailView:Landroid/widget/TextView;

    .line 84
    .line 85
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 86
    .line 87
    const p2, 0x7f0a01f0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroid/widget/TextView;

    .line 95
    .line 96
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemTitleView:Landroid/widget/TextView;

    .line 97
    .line 98
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 99
    .line 100
    const p2, 0x7f0a01f3

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroid/widget/TextView;

    .line 108
    .line 109
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemChannelDescriptionView:Landroid/widget/TextView;

    .line 110
    .line 111
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDescriptionMaxLineCount(Ljava/lang/String;)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x3

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 p0, 0x2

    .line 6
    return p0
.end method

.method public getDetailLine(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getStreamCount()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lcoil3/ComponentRegistry$Builder;

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getSubscriberCount()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getSubscriberCount()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/Localization;->shortSubscriberCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getStreamCount()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-static {p0, v1, v2}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    filled-new-array {v0, p0}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getStreamCount()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    cmp-long v0, v0, v2

    .line 59
    .line 60
    if-ltz v0, :cond_1

    .line 61
    .line 62
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getStreamCount()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getSubscriberCount()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    cmp-long v0, v0, v2

    .line 80
    .line 81
    if-ltz v0, :cond_2

    .line 82
    .line 83
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p0, Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getSubscriberCount()J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/util/Localization;->shortSubscriberCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_2
    const/4 p0, 0x0

    .line 97
    return-object p0
.end method

.method public final updateFromItem(Lorg/schabi/newpipe/extractor/InfoItem;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;)V
    .locals 7

    .line 1
    iget p2, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemChannelDescriptionView:Landroid/widget/TextView;

    .line 6
    .line 7
    iget-object v2, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemTitleView:Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object v3, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemAdditionalDetailView:Landroid/widget/TextView;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    packed-switch p2, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    instance-of p2, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    check-cast p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;

    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->getStreamCount()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    invoke-static {p2, v5, v6}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCountMini(Landroid/content/Context;J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->getUploaderName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const v1, 0x7f0801b7

    .line 62
    .line 63
    .line 64
    invoke-static {p2}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {v0, p2, v1, v4}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 72
    .line 73
    new-instance v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 74
    .line 75
    const/4 v1, 0x7

    .line 76
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {p2, v4}, Landroid/view/View;->setLongClickable(Z)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 88
    .line 89
    new-instance v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;

    .line 90
    .line 91
    const/4 v1, 0x3

    .line 92
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;Lorg/schabi/newpipe/extractor/InfoItem;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void

    .line 99
    :pswitch_0
    instance-of p2, p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 100
    .line 101
    if-nez p2, :cond_1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 105
    .line 106
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->getDetailLine(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const/4 v2, 0x0

    .line 121
    const/16 v4, 0x8

    .line 122
    .line 123
    if-nez p2, :cond_2

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->getDetailLine(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-static {v0, v3}, Lokhttp3/Cookie$Companion;->loadAvatar(Landroid/widget/ImageView;Ljava/util/List;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 147
    .line 148
    new-instance v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 149
    .line 150
    const/4 v5, 0x6

    .line 151
    invoke-direct {v3, p0, p1, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 158
    .line 159
    new-instance v3, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;

    .line 160
    .line 161
    const/4 v5, 0x2

    .line 162
    invoke-direct {v3, p0, p1, v5}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;Lorg/schabi/newpipe/extractor/InfoItem;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 166
    .line 167
    .line 168
    if-eqz v1, :cond_4

    .line 169
    .line 170
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getDescription()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_3

    .line 179
    .line 180
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getDescription()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->getDescriptionMaxLineCount(Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 199
    .line 200
    .line 201
    :cond_4
    :goto_2
    return-void

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
