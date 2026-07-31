.class public final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    iput-boolean p3, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;->f$1:Z

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;ZLjava/util/List;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;->f$1:Z

    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-boolean v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;->f$1:Z

    .line 5
    .line 6
    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;->f$2:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Landroidx/preference/Preference;

    .line 14
    .line 15
    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-eq v0, v3, :cond_0

    .line 20
    .line 21
    iput-object v3, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    iput v1, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 29
    .line 30
    if-eq v0, v2, :cond_1

    .line 31
    .line 32
    iput-boolean v2, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 39
    .line 40
    check-cast v3, Ljava/util/List;

    .line 41
    .line 42
    sget-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarousel:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    const-string v5, "feedGroupsCarousel"

    .line 56
    .line 57
    if-eqz v0, :cond_c

    .line 58
    .line 59
    iput-boolean v2, v0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->listViewMode:Z

    .line 60
    .line 61
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsSortMenuItem:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;

    .line 62
    .line 63
    const-string v6, "feedGroupsSortMenuItem"

    .line 64
    .line 65
    if-eqz v0, :cond_b

    .line 66
    .line 67
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    const/4 v8, 0x1

    .line 72
    if-le v7, v8, :cond_3

    .line 73
    .line 74
    move v7, v8

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    move v7, v1

    .line 77
    :goto_0
    iput-boolean v7, v0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->showSortButton:Z

    .line 78
    .line 79
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsSortMenuItem:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;

    .line 80
    .line 81
    if-eqz v0, :cond_a

    .line 82
    .line 83
    iput-boolean v2, v0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->listViewMode:Z

    .line 84
    .line 85
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarousel:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

    .line 86
    .line 87
    if-eqz v0, :cond_9

    .line 88
    .line 89
    const/4 v5, 0x2

    .line 90
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    iget-object v7, v0, Lcom/xwray/groupie/Item;->parentDataObserver:Lcom/xwray/groupie/GroupDataObserver;

    .line 95
    .line 96
    if-eqz v7, :cond_4

    .line 97
    .line 98
    invoke-interface {v7, v0, v1, v5}, Lcom/xwray/groupie/GroupDataObserver;->onItemChanged(Lcom/xwray/groupie/Group;ILjava/lang/Integer;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsSortMenuItem:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;

    .line 102
    .line 103
    if-eqz v0, :cond_8

    .line 104
    .line 105
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    iget-object v6, v0, Lcom/xwray/groupie/Item;->parentDataObserver:Lcom/xwray/groupie/GroupDataObserver;

    .line 110
    .line 111
    if-eqz v6, :cond_5

    .line 112
    .line 113
    invoke-interface {v6, v0, v1, v5}, Lcom/xwray/groupie/GroupDataObserver;->onItemChanged(Lcom/xwray/groupie/Group;ILjava/lang/Integer;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/xwray/groupie/GroupAdapter;->clear()V

    .line 121
    .line 122
    .line 123
    sget-object v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->WHATS_NEW:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 124
    .line 125
    const v4, 0x7f130023

    .line 126
    .line 127
    .line 128
    const-wide/16 v5, -0x1

    .line 129
    .line 130
    if-eqz v2, :cond_6

    .line 131
    .line 132
    new-instance v2, Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewItem;

    .line 133
    .line 134
    invoke-direct {v2}, Lcom/xwray/groupie/Item;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;

    .line 141
    .line 142
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-direct {v2, v5, v6, p0, v1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;-><init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v2}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_6
    new-instance v2, Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewGridItem;

    .line 157
    .line 158
    invoke-direct {v2}, Lcom/xwray/groupie/Item;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    .line 162
    .line 163
    .line 164
    new-instance v2, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    .line 165
    .line 166
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-direct {v2, v5, v6, p0, v1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;-><init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v2}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    .line 177
    .line 178
    .line 179
    :goto_1
    invoke-virtual {v0, v3}, Lcom/xwray/groupie/GroupAdapter;->addAll(Ljava/util/Collection;)V

    .line 180
    .line 181
    .line 182
    :goto_2
    return-void

    .line 183
    :cond_7
    const-string p0, "carouselAdapter"

    .line 184
    .line 185
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v4

    .line 189
    :cond_8
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v4

    .line 193
    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v4

    .line 197
    :cond_a
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v4

    .line 201
    :cond_b
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw v4

    .line 205
    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v4

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
