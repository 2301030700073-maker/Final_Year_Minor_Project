.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic f$0:Lj$/time/OffsetDateTime;

.field public final synthetic f$1:Lorg/schabi/newpipe/local/feed/FeedFragment;


# direct methods
.method public synthetic constructor <init>(Lj$/time/OffsetDateTime;Lorg/schabi/newpipe/local/feed/FeedFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;->f$0:Lj$/time/OffsetDateTime;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onUpdateComplete()V
    .locals 15

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;->f$0:Lj$/time/OffsetDateTime;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "groupAdapter"

    .line 11
    .line 12
    if-eqz v1, :cond_7

    .line 13
    .line 14
    iget-object v1, v1, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-static {v1}, Landroidx/sqlite/SQLite;->getItemCount(Ljava/util/Collection;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x0

    .line 22
    move v8, v4

    .line 23
    move v6, v5

    .line 24
    move v7, v6

    .line 25
    :goto_0
    iget-object v9, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 26
    .line 27
    if-ge v6, v1, :cond_3

    .line 28
    .line 29
    if-eqz v9, :cond_2

    .line 30
    .line 31
    iget-object v9, v9, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-static {v6, v9}, Landroidx/sqlite/SQLite;->getItem(ILjava/util/Collection;)Lcom/xwray/groupie/Item;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    check-cast v9, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    .line 41
    .line 42
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 43
    .line 44
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 48
    .line 49
    iput-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 50
    .line 51
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 52
    .line 53
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v12, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 57
    .line 58
    invoke-direct {v12, v5}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 59
    .line 60
    .line 61
    iput-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 62
    .line 63
    if-eqz v8, :cond_1

    .line 64
    .line 65
    iget-object v12, v9, Lorg/schabi/newpipe/local/feed/item/StreamItem;->streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 66
    .line 67
    iget-object v12, v12, Lorg/schabi/newpipe/database/stream/StreamWithState;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 68
    .line 69
    invoke-virtual {v12}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploadDate()Lj$/time/OffsetDateTime;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    if-eqz v12, :cond_0

    .line 74
    .line 75
    invoke-virtual {v12, v0}, Lj$/time/OffsetDateTime;->isAfter(Lj$/time/OffsetDateTime;)Z

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    if-nez v12, :cond_0

    .line 80
    .line 81
    move v8, v5

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 84
    .line 85
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 86
    .line 87
    iput-object v12, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 88
    .line 89
    new-instance v12, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 90
    .line 91
    const/4 v13, 0x7

    .line 92
    invoke-direct {v12, v13}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 93
    .line 94
    .line 95
    iput-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 96
    .line 97
    :cond_1
    :goto_1
    new-instance v12, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    const/16 v13, 0x9

    .line 100
    .line 101
    invoke-direct {v12, v11, v10, v13}, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 102
    .line 103
    .line 104
    iput-object v12, v9, Lorg/schabi/newpipe/local/feed/item/StreamItem;->execBindEnd:Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v2

    .line 113
    :cond_3
    if-eqz v9, :cond_6

    .line 114
    .line 115
    iget v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->lastNewItemsCount:I

    .line 116
    .line 117
    iget-object v1, v9, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-static {v1}, Landroidx/sqlite/SQLite;->getItemCount(Ljava/util/Collection;)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-static {v7, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {v9, v5, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 128
    .line 129
    .line 130
    if-lez v7, :cond_5

    .line 131
    .line 132
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->tryGetNewItemsLoadedButton()Landroid/widget/Button;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_4

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 139
    .line 140
    .line 141
    :cond_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->tryGetNewItemsLoadedButton()Landroid/widget/Button;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    if-eqz v8, :cond_5

    .line 146
    .line 147
    new-instance v13, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;

    .line 148
    .line 149
    invoke-direct {v13, p0, v4}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;I)V

    .line 150
    .line 151
    .line 152
    const/4 v14, 0x4

    .line 153
    const-wide/16 v9, 0xfa

    .line 154
    .line 155
    const-wide/16 v11, 0x64

    .line 156
    .line 157
    invoke-static/range {v8 .. v14}, Lnet/newpipe/app/AppKt;->slideUp$default(Landroid/view/View;JJLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 158
    .line 159
    .line 160
    :cond_5
    iput v7, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->lastNewItemsCount:I

    .line 161
    .line 162
    return-void

    .line 163
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v2

    .line 167
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v2

    .line 171
    :cond_8
    sget-object p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    .line 172
    .line 173
    return-void
.end method
