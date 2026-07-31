.class public final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Lkotlin/Pair;

    .line 12
    .line 13
    sget-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarouselState:Landroid/os/Parcelable;

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    iget-object v4, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarousel:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    iget-object v5, v4, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 42
    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iput-object v3, v4, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->listState:Landroid/os/Parcelable;

    .line 49
    .line 50
    iput-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarouselState:Landroid/os/Parcelable;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string p0, "feedGroupsCarousel"

    .line 54
    .line 55
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v2

    .line 59
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->_binding:Lorg/jsoup/parser/TokenData;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object v2, v2, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    new-instance v3, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;

    .line 69
    .line 70
    invoke-direct {v3, p0, p1, v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;ZLjava/util/List;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    :cond_3
    return-object v1

    .line 77
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState;

    .line 78
    .line 79
    if-eqz p1, :cond_b

    .line 80
    .line 81
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->subscriptionsSection:Lcom/xwray/groupie/Section;

    .line 82
    .line 83
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->hideLoading()V

    .line 84
    .line 85
    .line 86
    instance-of v3, p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$LoadedState;

    .line 87
    .line 88
    if-eqz v3, :cond_9

    .line 89
    .line 90
    check-cast p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$LoadedState;

    .line 91
    .line 92
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$LoadedState;->subscriptions:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_6

    .line 103
    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lcom/xwray/groupie/Group;

    .line 109
    .line 110
    instance-of v5, v4, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;

    .line 111
    .line 112
    if-eqz v5, :cond_4

    .line 113
    .line 114
    check-cast v4, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;

    .line 115
    .line 116
    iget-object v5, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->listenerChannelItem:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 117
    .line 118
    iput-object v5, v4, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->gesturesListener:Lorg/schabi/newpipe/util/OnClickGesture;

    .line 119
    .line 120
    sget-object v5, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;

    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-static {v6}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;->shouldUseGridForSubscription(Landroid/content/Context;)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_5

    .line 137
    .line 138
    sget-object v5, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->GRID:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    sget-object v5, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->MINI:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    .line 142
    .line 143
    :goto_2
    iput-object v5, v4, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->itemVersion:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    const/4 v3, 0x1

    .line 147
    invoke-virtual {v0, p1, v3}, Lcom/xwray/groupie/Section;->update(Ljava/util/Collection;Z)V

    .line 148
    .line 149
    .line 150
    iget-boolean p1, v0, Lcom/xwray/groupie/Section;->hideWhenEmpty:Z

    .line 151
    .line 152
    if-nez p1, :cond_7

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    const/4 p1, 0x0

    .line 156
    iput-boolean p1, v0, Lcom/xwray/groupie/Section;->hideWhenEmpty:Z

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/xwray/groupie/Section;->refreshEmptyState()V

    .line 159
    .line 160
    .line 161
    :goto_3
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->itemsListState:Landroid/os/Parcelable;

    .line 162
    .line 163
    if-eqz p1, :cond_c

    .line 164
    .line 165
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->_binding:Lorg/jsoup/parser/TokenData;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    iget-object p1, p1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 173
    .line 174
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    if-eqz p1, :cond_8

    .line 179
    .line 180
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->itemsListState:Landroid/os/Parcelable;

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 183
    .line 184
    .line 185
    :cond_8
    iput-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->itemsListState:Landroid/os/Parcelable;

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_9
    instance-of v0, p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;

    .line 189
    .line 190
    if-eqz v0, :cond_a

    .line 191
    .line 192
    check-cast p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;

    .line 193
    .line 194
    iget-object v3, p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;->error:Ljava/lang/Throwable;

    .line 195
    .line 196
    if-eqz v3, :cond_c

    .line 197
    .line 198
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 199
    .line 200
    const/4 v6, 0x0

    .line 201
    const/16 v7, 0x18

    .line 202
    .line 203
    sget-object v4, Lorg/schabi/newpipe/error/UserAction;->SOMETHING_ELSE:Lorg/schabi/newpipe/error/UserAction;

    .line 204
    .line 205
    const-string v5, "Subscriptions"

    .line 206
    .line 207
    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_a
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 215
    .line 216
    .line 217
    move-object v1, v2

    .line 218
    goto :goto_4

    .line 219
    :cond_b
    sget-object p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 220
    .line 221
    :cond_c
    :goto_4
    return-object v1

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
