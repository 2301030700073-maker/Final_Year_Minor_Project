.class public final Lorg/schabi/newpipe/local/subscription/item/ChannelItem;
.super Lcom/xwray/groupie/Item;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public gesturesListener:Lorg/schabi/newpipe/util/OnClickGesture;

.field public final infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

.field public itemVersion:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

.field public final subscriptionId:J


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xwray/groupie/Item;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->subscriptionId:J

    .line 7
    .line 8
    sget-object p1, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->MINI:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    .line 9
    .line 10
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->itemVersion:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->gesturesListener:Lorg/schabi/newpipe/util/OnClickGesture;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final bind(Lcom/xwray/groupie/GroupieViewHolder;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    .line 6
    const v1, 0x7f0a01f2

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    .line 17
    const v2, 0x7f0a01e9

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/widget/TextView;

    .line 25
    .line 26
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 27
    .line 28
    const v3, 0x7f0a01ea

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/widget/TextView;

    .line 36
    .line 37
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 38
    .line 39
    const v4, 0x7f0a01f1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroid/widget/ImageView;

    .line 47
    .line 48
    iget-object v4, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 49
    .line 50
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getSubscriberCount()J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    const-wide/16 v7, 0x0

    .line 71
    .line 72
    cmp-long v5, v5, v7

    .line 73
    .line 74
    if-ltz v5, :cond_0

    .line 75
    .line 76
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getSubscriberCount()J

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    invoke-static {v0, v5, v6}, Lorg/schabi/newpipe/util/Localization;->shortSubscriberCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const v5, 0x7f1304db

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    :goto_0
    iget-object v6, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->itemVersion:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    .line 93
    .line 94
    sget-object v9, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->NORMAL:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    .line 95
    .line 96
    if-ne v6, v9, :cond_1

    .line 97
    .line 98
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getStreamCount()J

    .line 99
    .line 100
    .line 101
    move-result-wide v10

    .line 102
    cmp-long v6, v10, v7

    .line 103
    .line 104
    if-ltz v6, :cond_1

    .line 105
    .line 106
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getStreamCount()J

    .line 107
    .line 108
    .line 109
    move-result-wide v6

    .line 110
    invoke-static {v0, v6, v7}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    filled-new-array {v5, v0}, [Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->itemVersion:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    .line 129
    .line 130
    if-ne v0, v9, :cond_2

    .line 131
    .line 132
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getDescription()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const/4 v1, 0x1

    .line 154
    const v2, 0x7f0801b6

    .line 155
    .line 156
    .line 157
    invoke-static {v3, v0, v2, v1}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->gesturesListener:Lorg/schabi/newpipe/util/OnClickGesture;

    .line 161
    .line 162
    if-eqz v0, :cond_3

    .line 163
    .line 164
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 165
    .line 166
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 167
    .line 168
    const/16 v3, 0xc

    .line 169
    .line 170
    invoke-direct {v2, v0, p0, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 177
    .line 178
    new-instance v1, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    .line 179
    .line 180
    const/4 v2, 0x7

    .line 181
    invoke-direct {v1, v0, p0, v2}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 185
    .line 186
    .line 187
    :cond_3
    return-void
.end method

.method public final getId()J
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->subscriptionId:J

    .line 4
    .line 5
    cmp-long v0, v2, v0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/xwray/groupie/Item;->id:J

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    return-wide v2
.end method

.method public final getLayout()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->itemVersion:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    const p0, 0x7f0d0073

    .line 16
    .line 17
    .line 18
    return p0

    .line 19
    :cond_0
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_1
    const p0, 0x7f0d0075

    .line 25
    .line 26
    .line 27
    return p0

    .line 28
    :cond_2
    const p0, 0x7f0d0074

    .line 29
    .line 30
    .line 31
    return p0
.end method

.method public final getSpanSize(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->itemVersion:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    .line 2
    .line 3
    sget-object v0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->GRID:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    return p1
.end method
