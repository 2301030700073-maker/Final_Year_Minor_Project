.class public final Lorg/schabi/newpipe/local/feed/item/StreamItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/item/StreamItem$Companion;


# instance fields
.field public execBindEnd:Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;

.field public itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

.field public final stateProgressTime:Ljava/lang/Long;

.field public final stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

.field public final streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/feed/item/StreamItem$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->Companion:Lorg/schabi/newpipe/local/feed/item/StreamItem$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/database/stream/StreamWithState;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/xwray/groupie/Item;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 8
    .line 9
    sget-object v0, Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;->NORMAL:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 12
    .line 13
    iget-object v0, p1, Lorg/schabi/newpipe/database/stream/StreamWithState;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 14
    .line 15
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 16
    .line 17
    iget-object p1, p1, Lorg/schabi/newpipe/database/stream/StreamWithState;->stateProgressMillis:Ljava/lang/Long;

    .line 18
    .line 19
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stateProgressTime:Ljava/lang/Long;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 8

    .line 1
    check-cast p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 7
    .line 8
    iget-object v1, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 9
    .line 10
    iget-object v2, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 11
    .line 12
    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 13
    .line 14
    invoke-virtual {v3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemUploaderView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 22
    .line 23
    invoke-virtual {v3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    const-wide/16 v6, 0x0

    .line 35
    .line 36
    cmp-long v2, v4, v6

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const/16 v5, 0x8

    .line 40
    .line 41
    if-lez v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    invoke-static {v6, v7}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const v6, 0x7f060083

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v6}, Landroid/content/Context;->getColor(I)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stateProgressTime:Ljava/lang/Long;

    .line 72
    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    long-to-int v2, v4

    .line 83
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    const-wide/16 v4, 0x3e8

    .line 91
    .line 92
    div-long/2addr v1, v4

    .line 93
    long-to-int v1, v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v2}, Lokio/Okio;->isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_2

    .line 111
    .line 112
    const v2, 0x7f130132

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const v6, 0x7f0600ac

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v6}, Landroid/content/Context;->getColor(I)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    :goto_0
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemThumbnailView:Landroid/widget/ImageView;

    .line 146
    .line 147
    invoke-virtual {v3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getThumbnailUrl()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    const v2, 0x7f0801b8

    .line 152
    .line 153
    .line 154
    const/4 v3, 0x1

    .line 155
    invoke-static {v0, v1, v2, v3}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 159
    .line 160
    sget-object v1, Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;->MINI:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 161
    .line 162
    if-eq v0, v1, :cond_3

    .line 163
    .line 164
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemAdditionalDetails:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/local/feed/item/StreamItem;->getStreamInfoDetailLine(Landroid/content/Context;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    :cond_3
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->execBindEnd:Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;

    .line 181
    .line 182
    if-eqz p0, :cond_4

    .line 183
    .line 184
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_4
    return-void
.end method

.method public final bind(Landroidx/viewbinding/ViewBinding;ILjava/util/List;)V
    .locals 0

    .line 188
    check-cast p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;

    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    .line 190
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 191
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    sget-object p3, Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;->MINI:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    if-eq p2, p3, :cond_0

    .line 192
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemAdditionalDetails:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/local/feed/item/StreamItem;->getStreamInfoDetailLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 194
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/item/StreamItem;->bind(Landroidx/viewbinding/ViewBinding;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;->streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 25
    .line 26
    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 27
    .line 28
    if-eq p0, p1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final getId()J
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getLayout()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    const p0, 0x7f0d0081

    .line 19
    .line 20
    .line 21
    return p0

    .line 22
    :cond_0
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_1
    const p0, 0x7f0d0082

    .line 28
    .line 29
    .line 30
    return p0

    .line 31
    :cond_2
    const p0, 0x7f0d0084

    .line 32
    .line 33
    .line 34
    return p0

    .line 35
    :cond_3
    const p0, 0x7f0d0083

    .line 36
    .line 37
    .line 38
    return p0
.end method

.method public final getSpanSize(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 2
    .line 3
    sget-object v0, Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;->GRID:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

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

.method public final getStreamInfoDetailLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getViewCount()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    cmp-long v1, v1, v3

    .line 16
    .line 17
    if-ltz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x3

    .line 28
    if-eq v1, v2, :cond_1

    .line 29
    .line 30
    const/4 v2, 0x4

    .line 31
    if-eq v1, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    const v5, 0x7f130373

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v6, v7}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    const v4, 0x7f110012

    .line 45
    .line 46
    .line 47
    move-object v3, p1

    .line 48
    invoke-static/range {v3 .. v8}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move-object v3, p1

    .line 57
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    const v2, 0x7f130368

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v0, v1}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    move-wide v9, v0

    .line 69
    move-object v0, v3

    .line 70
    move-wide v3, v9

    .line 71
    const v1, 0x7f110009

    .line 72
    .line 73
    .line 74
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move-object v3, p1

    .line 83
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    const v2, 0x7f130369

    .line 88
    .line 89
    .line 90
    invoke-static {v3, v0, v1}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    move-wide v9, v0

    .line 95
    move-object v0, v3

    .line 96
    move-wide v3, v9

    .line 97
    const v1, 0x7f110013

    .line 98
    .line 99
    .line 100
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    const-string p1, ""

    .line 109
    .line 110
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploadDate()Lj$/time/OffsetDateTime;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    sget-object p0, Lorg/schabi/newpipe/util/Localization;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Lj$/time/OffsetDateTime;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTextualUploadDate()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_5

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_4

    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    return-object p0

    .line 145
    :cond_4
    filled-new-array {p1, p0}, [Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    return-object p0

    .line 157
    :cond_5
    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/StreamWithState;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0a01e9

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v3, v0

    .line 12
    check-cast v3, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    const p0, 0x7f0a01ec

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v4, v0

    .line 24
    check-cast v4, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    const p0, 0x7f0a01ee

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v5, v0

    .line 36
    check-cast v5, Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 37
    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    move-object v2, p1

    .line 41
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    .line 43
    const p0, 0x7f0a01f1

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    move-object v7, v0

    .line 51
    check-cast v7, Landroid/widget/ImageView;

    .line 52
    .line 53
    if-eqz v7, :cond_0

    .line 54
    .line 55
    const p0, 0x7f0a01f3

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    move-object v8, v0

    .line 63
    check-cast v8, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 64
    .line 65
    if-eqz v8, :cond_0

    .line 66
    .line 67
    const p0, 0x7f0a01f4

    .line 68
    .line 69
    .line 70
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    move-object v9, v0

    .line 75
    check-cast v9, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 76
    .line 77
    if-eqz v9, :cond_0

    .line 78
    .line 79
    new-instance v1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;

    .line 80
    .line 81
    move-object v6, v2

    .line 82
    invoke-direct/range {v1 .. v9}, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/AnimatedProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;)V

    .line 83
    .line 84
    .line 85
    return-object v1

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string p1, "Missing required view with ID: "

    .line 95
    .line 96
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 p0, 0x0

    .line 104
    return-object p0
.end method

.method public final isLongClickable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :pswitch_0
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "StreamItem(streamWithState="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, ", itemVersion="

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
