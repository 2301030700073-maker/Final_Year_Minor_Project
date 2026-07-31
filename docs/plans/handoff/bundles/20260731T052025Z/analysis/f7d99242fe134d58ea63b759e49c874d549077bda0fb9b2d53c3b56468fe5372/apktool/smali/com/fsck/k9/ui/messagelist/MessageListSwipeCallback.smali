.class public final Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;
.super Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$Callback;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public activeSwipingMessageListItem:Lcom/fsck/k9/ui/messagelist/MessageListItem;

.field public final adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

.field public final backgroundColorPaint:Landroid/graphics/Paint;

.field public final listener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;

.field public maxSwipeLeftDistance:I

.field public maxSwipeRightDistance:I

.field public final resourceProvider:Landroidx/navigation/internal/NavContext;

.field public final swipeActionSupportProvider:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;

.field public final swipeActions:Lkotlinx/coroutines/flow/StateFlow;

.field public final swipeLeftConfig:Ljava/util/LinkedHashMap;

.field public final swipeLeftIcon:Landroid/widget/ImageView;

.field public final swipeLeftLayout:Landroid/view/View;

.field public final swipeLeftText:Lcom/google/android/material/textview/MaterialTextView;

.field public final swipePadding:I

.field public final swipeRightConfig:Ljava/util/LinkedHashMap;

.field public final swipeRightIcon:Landroid/widget/ImageView;

.field public final swipeRightLayout:Landroid/view/View;

.field public final swipeRightText:Lcom/google/android/material/textview/MaterialTextView;

.field public final swipeThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Landroidx/navigation/internal/NavContext;Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;Lkotlinx/coroutines/flow/StateFlow;Lcom/fsck/k9/ui/messagelist/MessageListAdapter;Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    .line 21
    .line 22
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->resourceProvider:Landroidx/navigation/internal/NavContext;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeActionSupportProvider:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeActions:Lkotlinx/coroutines/flow/StateFlow;

    .line 27
    .line 28
    iput-object p6, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 29
    .line 30
    iput-object p7, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->listener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    const p4, 0x7f0703be

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    float-to-int p3, p3

    .line 44
    iput p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipePadding:I

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    const p4, 0x7f0703c0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    iput p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeThreshold:F

    .line 58
    .line 59
    new-instance p3, Landroid/graphics/Paint;

    .line 60
    .line 61
    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->backgroundColorPaint:Landroid/graphics/Paint;

    .line 65
    .line 66
    new-instance p3, Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeRightConfig:Ljava/util/LinkedHashMap;

    .line 72
    .line 73
    new-instance p3, Ljava/util/LinkedHashMap;

    .line 74
    .line 75
    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeLeftConfig:Ljava/util/LinkedHashMap;

    .line 79
    .line 80
    iput v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->maxSwipeRightDistance:I

    .line 81
    .line 82
    iput v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->maxSwipeLeftDistance:I

    .line 83
    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const p3, 0x7f0c057a

    .line 89
    .line 90
    .line 91
    const/4 p4, 0x0

    .line 92
    const/4 p6, 0x0

    .line 93
    invoke-virtual {p1, p3, p4, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeRightLayout:Landroid/view/View;

    .line 101
    .line 102
    const p7, 0x7f0c0579

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p7, p4, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeLeftLayout:Landroid/view/View;

    .line 113
    .line 114
    const p6, 0x7f090407

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p7

    .line 121
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    check-cast p7, Landroid/widget/ImageView;

    .line 125
    .line 126
    iput-object p7, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeRightIcon:Landroid/widget/ImageView;

    .line 127
    .line 128
    const p7, 0x7f090408

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    check-cast p3, Lcom/google/android/material/textview/MaterialTextView;

    .line 139
    .line 140
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeRightText:Lcom/google/android/material/textview/MaterialTextView;

    .line 141
    .line 142
    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    check-cast p3, Landroid/widget/ImageView;

    .line 150
    .line 151
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeLeftIcon:Landroid/widget/ImageView;

    .line 152
    .line 153
    invoke-virtual {p1, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 161
    .line 162
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeLeftText:Lcom/google/android/material/textview/MaterialTextView;

    .line 163
    .line 164
    new-instance p1, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 165
    .line 166
    const/4 p3, 0x6

    .line 167
    invoke-direct {p1, p0, p8, p4, p3}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 168
    .line 169
    .line 170
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 171
    .line 172
    const/4 p3, 0x2

    .line 173
    invoke-direct {p0, p5, p1, p3}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 174
    .line 175
    .line 176
    invoke-static {p0, p2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public static final access$setupSwipeActionConfig(Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;Ljava/util/Map;Ljava/util/List;Landroidx/navigation/internal/NavContext;Z)Ljava/util/LinkedHashMap;
    .locals 16

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 22
    .line 23
    iget-object v4, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 24
    .line 25
    move-object/from16 v5, p1

    .line 26
    .line 27
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lnet/thunderbird/core/common/action/SwipeActions;

    .line 32
    .line 33
    if-eqz v4, :cond_3

    .line 34
    .line 35
    iget-object v6, v4, Lnet/thunderbird/core/common/action/SwipeActions;->leftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 36
    .line 37
    iget-object v4, v4, Lnet/thunderbird/core/common/action/SwipeActions;->rightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 38
    .line 39
    if-eqz p4, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-object v6, v4

    .line 43
    :goto_1
    if-eqz v6, :cond_3

    .line 44
    .line 45
    sget-object v4, Lnet/thunderbird/core/common/action/SwipeAction;->None:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 46
    .line 47
    if-eq v6, v4, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move-object v6, v3

    .line 51
    :goto_2
    if-eqz v6, :cond_3

    .line 52
    .line 53
    iget-object v2, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 54
    .line 55
    new-instance v3, Lkotlin/Pair;

    .line 56
    .line 57
    invoke-direct {v3, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    if-eqz v3, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    const/16 v1, 0xa

    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/16 v2, 0x10

    .line 77
    .line 78
    if-ge v1, v2, :cond_5

    .line 79
    .line 80
    move v1, v2

    .line 81
    :cond_5
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 82
    .line 83
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_10

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Lkotlin/Pair;

    .line 101
    .line 102
    iget-object v4, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v4, Lnet/thunderbird/feature/account/AccountId;

    .line 105
    .line 106
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 109
    .line 110
    new-instance v5, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;

    .line 111
    .line 112
    move-object/from16 v11, p3

    .line 113
    .line 114
    iget-object v6, v11, Landroidx/navigation/internal/NavContext;->context:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    const-string v8, "action == SwipeAction.None"

    .line 124
    .line 125
    packed-switch v7, :pswitch_data_0

    .line 126
    .line 127
    .line 128
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 129
    .line 130
    .line 131
    return-object v3

    .line 132
    :pswitch_0
    const v7, 0x7f040408

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :pswitch_1
    const v7, 0x7f04040a

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :pswitch_2
    const v7, 0x7f040407

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :pswitch_3
    const v7, 0x7f04014f

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :pswitch_4
    const v7, 0x7f040406

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :pswitch_5
    const v7, 0x7f04040c

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :pswitch_6
    const v7, 0x7f04040b

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :pswitch_7
    const v7, 0x7f040409

    .line 161
    .line 162
    .line 163
    :goto_4
    new-instance v9, Landroid/util/TypedValue;

    .line 164
    .line 165
    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    const/4 v12, 0x1

    .line 173
    invoke-virtual {v10, v7, v9, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    if-eqz v10, :cond_f

    .line 178
    .line 179
    iget v7, v9, Landroid/util/TypedValue;->data:I

    .line 180
    .line 181
    const-class v9, Landroidx/work/Data$Companion;

    .line 182
    .line 183
    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    const v10, 0x7f04013c

    .line 188
    .line 189
    .line 190
    invoke-static {v6, v10, v9}, Landroidx/work/OperationKt;->resolveTypedValueOrThrow(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    .line 195
    .line 196
    if-eqz v10, :cond_6

    .line 197
    .line 198
    invoke-virtual {v6, v10}, Landroid/content/Context;->getColor(I)I

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    goto :goto_5

    .line 203
    :cond_6
    iget v9, v9, Landroid/util/TypedValue;->data:I

    .line 204
    .line 205
    :goto_5
    invoke-static {v7, v9}, Landroidx/work/Data$Companion;->harmonize(II)I

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    invoke-static {v6, v7}, Landroidx/work/Data$Companion;->getColorRoles(Landroid/content/Context;I)Lcom/google/android/material/color/ColorRoles;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    packed-switch v9, :pswitch_data_1

    .line 218
    .line 219
    .line 220
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 221
    .line 222
    .line 223
    return-object v3

    .line 224
    :pswitch_8
    const v9, 0x7f0800dd

    .line 225
    .line 226
    .line 227
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    goto :goto_6

    .line 232
    :pswitch_9
    const v9, 0x7f08010e

    .line 233
    .line 234
    .line 235
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    goto :goto_6

    .line 240
    :pswitch_a
    const v9, 0x7f0800d7

    .line 241
    .line 242
    .line 243
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    goto :goto_6

    .line 248
    :pswitch_b
    move-object v9, v3

    .line 249
    goto :goto_6

    .line 250
    :pswitch_c
    const v9, 0x7f0800be

    .line 251
    .line 252
    .line 253
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    goto :goto_6

    .line 258
    :pswitch_d
    const v9, 0x7f080119

    .line 259
    .line 260
    .line 261
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    goto :goto_6

    .line 266
    :pswitch_e
    const v9, 0x7f0800fa

    .line 267
    .line 268
    .line 269
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    goto :goto_6

    .line 274
    :pswitch_f
    const v9, 0x7f0800cd

    .line 275
    .line 276
    .line 277
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    :goto_6
    if-eqz v9, :cond_7

    .line 282
    .line 283
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 284
    .line 285
    .line 286
    move-result v9

    .line 287
    invoke-static {v6, v9}, Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;->access$loadDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    goto :goto_7

    .line 292
    :cond_7
    move-object v9, v3

    .line 293
    :goto_7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 294
    .line 295
    .line 296
    move-result v10

    .line 297
    if-eqz v10, :cond_e

    .line 298
    .line 299
    const/4 v13, 0x3

    .line 300
    const/4 v14, 0x2

    .line 301
    if-eq v10, v14, :cond_9

    .line 302
    .line 303
    if-eq v10, v13, :cond_8

    .line 304
    .line 305
    move-object v10, v3

    .line 306
    goto :goto_8

    .line 307
    :cond_8
    const v10, 0x7f080118

    .line 308
    .line 309
    .line 310
    invoke-static {v6, v10}, Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;->access$loadDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 311
    .line 312
    .line 313
    move-result-object v10

    .line 314
    goto :goto_8

    .line 315
    :cond_9
    const v10, 0x7f0800fb

    .line 316
    .line 317
    .line 318
    invoke-static {v6, v10}, Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;->access$loadDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 319
    .line 320
    .line 321
    move-result-object v10

    .line 322
    :goto_8
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 323
    .line 324
    .line 325
    move-result v15

    .line 326
    packed-switch v15, :pswitch_data_2

    .line 327
    .line 328
    .line 329
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 330
    .line 331
    .line 332
    return-object v3

    .line 333
    :pswitch_10
    const v15, 0x7f12062e

    .line 334
    .line 335
    .line 336
    :goto_9
    move-object/from16 p0, v3

    .line 337
    .line 338
    goto :goto_a

    .line 339
    :pswitch_11
    const v15, 0x7f120631

    .line 340
    .line 341
    .line 342
    goto :goto_9

    .line 343
    :pswitch_12
    const v15, 0x7f12062a

    .line 344
    .line 345
    .line 346
    goto :goto_9

    .line 347
    :pswitch_13
    const v15, 0x7f120628

    .line 348
    .line 349
    .line 350
    goto :goto_9

    .line 351
    :pswitch_14
    const v15, 0x7f120629

    .line 352
    .line 353
    .line 354
    goto :goto_9

    .line 355
    :pswitch_15
    const v15, 0x7f120627

    .line 356
    .line 357
    .line 358
    goto :goto_9

    .line 359
    :pswitch_16
    const v15, 0x7f120626

    .line 360
    .line 361
    .line 362
    goto :goto_9

    .line 363
    :pswitch_17
    const v15, 0x7f12062c

    .line 364
    .line 365
    .line 366
    goto :goto_9

    .line 367
    :pswitch_18
    const v15, 0x7f120630

    .line 368
    .line 369
    .line 370
    goto :goto_9

    .line 371
    :goto_a
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    if-eqz v1, :cond_d

    .line 387
    .line 388
    if-eq v1, v12, :cond_c

    .line 389
    .line 390
    if-eq v1, v14, :cond_b

    .line 391
    .line 392
    if-eq v1, v13, :cond_a

    .line 393
    .line 394
    move-object v6, v7

    .line 395
    move-object v7, v9

    .line 396
    move-object v8, v10

    .line 397
    move-object/from16 v10, p0

    .line 398
    .line 399
    :goto_b
    move-object v9, v3

    .line 400
    goto :goto_d

    .line 401
    :cond_a
    const v1, 0x7f12062f

    .line 402
    .line 403
    .line 404
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    .line 414
    .line 415
    :goto_c
    move-object v6, v7

    .line 416
    move-object v7, v9

    .line 417
    move-object v8, v10

    .line 418
    move-object v10, v1

    .line 419
    goto :goto_b

    .line 420
    :cond_b
    const v1, 0x7f12062d

    .line 421
    .line 422
    .line 423
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    goto :goto_c

    .line 435
    :cond_c
    const v1, 0x7f12062b

    .line 436
    .line 437
    .line 438
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 439
    .line 440
    .line 441
    move-result-object v6

    .line 442
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    goto :goto_c

    .line 450
    :goto_d
    invoke-direct/range {v5 .. v10}, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;-><init>(Lcom/google/android/material/color/ColorRoles;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-object/from16 v3, p0

    .line 457
    .line 458
    goto/16 :goto_3

    .line 459
    .line 460
    :cond_d
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    return-object p0

    .line 464
    :pswitch_19
    move-object/from16 p0, v3

    .line 465
    .line 466
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    return-object p0

    .line 470
    :cond_e
    move-object/from16 p0, v3

    .line 471
    .line 472
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    return-object p0

    .line 476
    :pswitch_1a
    move-object/from16 p0, v3

    .line 477
    .line 478
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    return-object p0

    .line 482
    :cond_f
    move-object/from16 p0, v3

    .line 483
    .line 484
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    const-string v1, "Couldn\'t resolve attribute ("

    .line 493
    .line 494
    invoke-static {v0, v1}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    return-object p0

    .line 498
    :pswitch_1b
    move-object/from16 p0, v3

    .line 499
    .line 500
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    return-object p0

    .line 504
    :cond_10
    return-object v2

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public final clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    .line 9
    const p1, 0x7f090248

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    instance-of v0, p2, Ljava/lang/Float;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    check-cast p2, Ljava/lang/Float;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Landroid/view/View;->setElevation(F)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p2, 0x0

    .line 32
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 40
    .line 41
    .line 42
    const p1, 0x7f0902ac

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final drawLayout(Landroid/graphics/Canvas;FIILcom/fsck/k9/ui/messagelist/MessageListItem;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    iget-boolean v4, v3, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 10
    .line 11
    iget-boolean v5, v3, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    cmpl-float v6, p2, v6

    .line 15
    .line 16
    const/4 v7, 0x1

    .line 17
    if-lez v6, :cond_0

    .line 18
    .line 19
    move v6, v7

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v6, 0x0

    .line 22
    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    iget v10, v0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeThreshold:F

    .line 27
    .line 28
    cmpl-float v9, v9, v10

    .line 29
    .line 30
    if-lez v9, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v7, 0x0

    .line 34
    :goto_1
    iget-object v9, v3, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 35
    .line 36
    iget-object v9, v9, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 37
    .line 38
    iget-object v10, v0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeLeftConfig:Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    iget-object v11, v0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeRightConfig:Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    invoke-virtual {v11, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    :goto_2
    check-cast v9, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_2
    invoke-virtual {v10, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    goto :goto_2

    .line 56
    :goto_3
    if-eqz v9, :cond_16

    .line 57
    .line 58
    iget v10, v9, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->foregroundColor:I

    .line 59
    .line 60
    iget v11, v9, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->backgroundColor:I

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getSwipeActions(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Lnet/thunderbird/core/common/action/SwipeActions;

    .line 63
    .line 64
    .line 65
    move-result-object v12

    .line 66
    iget-object v13, v12, Lnet/thunderbird/core/common/action/SwipeActions;->leftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 67
    .line 68
    iget-object v12, v12, Lnet/thunderbird/core/common/action/SwipeActions;->rightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 69
    .line 70
    if-eqz v6, :cond_3

    .line 71
    .line 72
    iget-object v14, v0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeRightLayout:Landroid/view/View;

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_3
    iget-object v14, v0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeLeftLayout:Landroid/view/View;

    .line 76
    .line 77
    :goto_4
    if-eqz v6, :cond_4

    .line 78
    .line 79
    move-object v13, v12

    .line 80
    :cond_4
    if-eqz v6, :cond_5

    .line 81
    .line 82
    iget-object v12, v0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeRightIcon:Landroid/widget/ImageView;

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_5
    iget-object v12, v0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeLeftIcon:Landroid/widget/ImageView;

    .line 86
    .line 87
    :goto_5
    if-eqz v6, :cond_6

    .line 88
    .line 89
    iget-object v15, v0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeRightText:Lcom/google/android/material/textview/MaterialTextView;

    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_6
    iget-object v15, v0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeLeftText:Lcom/google/android/material/textview/MaterialTextView;

    .line 93
    .line 94
    :goto_6
    if-eqz v7, :cond_7

    .line 95
    .line 96
    move v8, v11

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    move v8, v10

    .line 99
    :goto_7
    if-eqz v7, :cond_8

    .line 100
    .line 101
    goto :goto_8

    .line 102
    :cond_8
    move v10, v11

    .line 103
    :goto_8
    invoke-virtual {v14, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    const/4 v10, 0x3

    .line 111
    const/4 v11, 0x2

    .line 112
    if-eq v7, v11, :cond_a

    .line 113
    .line 114
    if-eq v7, v10, :cond_9

    .line 115
    .line 116
    const/4 v7, 0x0

    .line 117
    goto :goto_9

    .line 118
    :cond_9
    move v7, v5

    .line 119
    goto :goto_9

    .line 120
    :cond_a
    move v7, v4

    .line 121
    :goto_9
    if-eqz v7, :cond_c

    .line 122
    .line 123
    iget-object v7, v9, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->iconToggled:Landroid/graphics/drawable/Drawable;

    .line 124
    .line 125
    if-eqz v7, :cond_b

    .line 126
    .line 127
    goto :goto_a

    .line 128
    :cond_b
    const-string v0, "action has no toggled icon"

    .line 129
    .line 130
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_c
    iget-object v7, v9, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->icon:Landroid/graphics/drawable/Drawable;

    .line 135
    .line 136
    :goto_a
    if-eqz v7, :cond_d

    .line 137
    .line 138
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 139
    .line 140
    .line 141
    :cond_d
    invoke-virtual {v12, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    .line 143
    .line 144
    if-eqz v7, :cond_e

    .line 145
    .line 146
    const/4 v7, 0x0

    .line 147
    goto :goto_b

    .line 148
    :cond_e
    const/16 v7, 0x8

    .line 149
    .line 150
    :goto_b
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    iget-object v7, v0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 154
    .line 155
    invoke-virtual {v7, v3}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->isSelected(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-eq v7, v11, :cond_10

    .line 164
    .line 165
    if-eq v7, v10, :cond_f

    .line 166
    .line 167
    const/4 v4, 0x0

    .line 168
    goto :goto_c

    .line 169
    :cond_f
    move v4, v5

    .line 170
    :cond_10
    :goto_c
    if-nez v4, :cond_12

    .line 171
    .line 172
    if-eqz v3, :cond_11

    .line 173
    .line 174
    goto :goto_d

    .line 175
    :cond_11
    iget-object v3, v9, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->actionName:Ljava/lang/String;

    .line 176
    .line 177
    goto :goto_e

    .line 178
    :cond_12
    :goto_d
    iget-object v3, v9, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->actionNameToggled:Ljava/lang/String;

    .line 179
    .line 180
    if-eqz v3, :cond_15

    .line 181
    .line 182
    :goto_e
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v14}, Landroid/view/View;->isDirty()Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_13

    .line 193
    .line 194
    const/high16 v3, 0x40000000    # 2.0f

    .line 195
    .line 196
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    invoke-virtual {v14, v4, v3}, Landroid/view/View;->measure(II)V

    .line 205
    .line 206
    .line 207
    const/4 v3, 0x0

    .line 208
    invoke-virtual {v14, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 209
    .line 210
    .line 211
    iget v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipePadding:I

    .line 212
    .line 213
    if-eqz v6, :cond_14

    .line 214
    .line 215
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    add-int/2addr v2, v1

    .line 220
    iput v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->maxSwipeRightDistance:I

    .line 221
    .line 222
    :cond_13
    :goto_f
    move-object/from16 v0, p1

    .line 223
    .line 224
    goto :goto_10

    .line 225
    :cond_14
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    sub-int/2addr v2, v3

    .line 234
    add-int/2addr v2, v1

    .line 235
    iput v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->maxSwipeLeftDistance:I

    .line 236
    .line 237
    goto :goto_f

    .line 238
    :goto_10
    invoke-virtual {v14, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_15
    const-string v0, "action has no toggled name"

    .line 243
    .line 244
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 249
    .line 250
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeActions:Lkotlinx/coroutines/flow/StateFlow;

    .line 251
    .line 252
    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v3, "drawLayout() called despite swipeActionConfig == null. \nswipeActions = "

    .line 259
    .line 260
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v0, ", \nswipeRightConfig = "

    .line 267
    .line 268
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v0, ", \nswipeLeftConfig = "

    .line 275
    .line 276
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw v1
.end method

.method public final getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IF)J
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    int-to-float p3, p3

    .line 13
    div-float/2addr p0, p3

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/16 p3, 0x8

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    if-ne p2, p3, :cond_0

    .line 23
    .line 24
    const-wide/16 p1, 0xc8

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-wide/16 p1, 0xfa

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-ne p2, p3, :cond_2

    .line 31
    .line 32
    iget-wide p1, p1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-wide p1, p1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 36
    .line 37
    :goto_0
    long-to-float p1, p1

    .line 38
    mul-float/2addr p1, p0

    .line 39
    float-to-long p0, p1

    .line 40
    return-wide p0
.end method

.method public final getMaxSwipeDistance(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p2, v0, :cond_2

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-eq p2, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    iget p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->maxSwipeRightDistance:I

    .line 17
    .line 18
    if-lez p0, :cond_1

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_2
    iget p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->maxSwipeLeftDistance:I

    .line 27
    .line 28
    if-lez p0, :cond_3

    .line 29
    .line 30
    return p0

    .line 31
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final getMessageListItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/fsck/k9/ui/messagelist/MessageListItem;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;

    .line 8
    .line 9
    iget-wide v0, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->uniqueId:J

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getItemById(J)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    instance-of v0, p1, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;

    .line 21
    .line 22
    iget-wide v0, p1, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->uniqueId:J

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getItemById(J)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getMessageListItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return p2

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getSwipeActions(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Lnet/thunderbird/core/common/action/SwipeActions;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, v0, Lnet/thunderbird/core/common/action/SwipeActions;->leftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 20
    .line 21
    iget-object v0, v0, Lnet/thunderbird/core/common/action/SwipeActions;->rightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeActionSupportProvider:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;->isActionSupported(Lcom/fsck/k9/ui/messagelist/MessageListItem;Lnet/thunderbird/core/common/action/SwipeAction;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/16 p2, 0x8

    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;->isActionSupported(Lcom/fsck/k9/ui/messagelist/MessageListItem;Lnet/thunderbird/core/common/action/SwipeAction;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    or-int/lit8 p2, p2, 0x4

    .line 40
    .line 41
    :cond_2
    shl-int/lit8 p0, p2, 0x8

    .line 42
    .line 43
    or-int/2addr p0, p2

    .line 44
    return p0
.end method

.method public final getSwipeActions(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Lnet/thunderbird/core/common/action/SwipeActions;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeActions:Lkotlinx/coroutines/flow/StateFlow;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 10
    .line 11
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast v0, Lnet/thunderbird/core/common/action/SwipeActions;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "Could not find swipe actions for account "

    .line 25
    .line 26
    const-string v1, ". swipeActions = "

    .line 27
    .line 28
    invoke-static {v0, p1, v1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public final onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZZ)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v7, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v8, 0x0

    .line 21
    cmpg-float v5, p4, v8

    .line 22
    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    int-to-float v5, v5

    .line 31
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    int-to-float v6, v6

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getMessageListItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    if-nez p6, :cond_2

    .line 51
    .line 52
    if-nez p7, :cond_3

    .line 53
    .line 54
    :cond_2
    move-object v0, p0

    .line 55
    move-object v1, p1

    .line 56
    move v2, p4

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    iget-object v2, v5, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 59
    .line 60
    iget-object v6, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->backgroundColorPaint:Landroid/graphics/Paint;

    .line 61
    .line 62
    cmpl-float v5, p4, v8

    .line 63
    .line 64
    if-lez v5, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeRightConfig:Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeLeftConfig:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    :goto_0
    iget-object v5, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 72
    .line 73
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-eqz v5, :cond_5

    .line 78
    .line 79
    iget-object v2, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 80
    .line 81
    invoke-static {v0, v2}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;

    .line 86
    .line 87
    iget v0, v0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->backgroundColor:I

    .line 88
    .line 89
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    .line 91
    .line 92
    int-to-float v0, v3

    .line 93
    int-to-float v5, v4

    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    move-object v1, p1

    .line 97
    move v4, v0

    .line 98
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    const-string v0, "drawBackground() called despite swipeActionConfig[item.accountWrapper] == null"

    .line 103
    .line 104
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->drawLayout(Landroid/graphics/Canvas;FIILcom/fsck/k9/ui/messagelist/MessageListItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    .line 111
    :goto_2
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 112
    .line 113
    .line 114
    :goto_3
    if-eqz p6, :cond_9

    .line 115
    .line 116
    const v0, 0x7f090248

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-nez v1, :cond_9

    .line 124
    .line 125
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 126
    .line 127
    invoke-virtual {v7}, Landroid/view/View;->getElevation()F

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    const/4 v4, 0x0

    .line 140
    :goto_4
    if-ge v4, v3, :cond_8

    .line 141
    .line 142
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    if-ne v6, v7, :cond_6

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_6
    sget-object v9, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 150
    .line 151
    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    cmpl-float v9, v6, v8

    .line 156
    .line 157
    if-lez v9, :cond_7

    .line 158
    .line 159
    move v8, v6

    .line 160
    :cond_7
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 164
    .line 165
    add-float/2addr v8, v3

    .line 166
    invoke-virtual {v7, v8}, Landroid/view/View;->setElevation(F)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_9
    invoke-virtual {v7, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7, p5}, Landroid/view/View;->setTranslationY(F)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 181
    .line 182
    .line 183
    throw v0
.end method

.method public final onSwipeEnded(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getMessageListItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->listener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;->this$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->itemSelectedOnSwipeStart:Z

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->access$isMessageSelected(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;Lcom/fsck/k9/ui/messagelist/MessageListItem;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v3, v1, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 42
    .line 43
    iget-wide v4, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 44
    .line 45
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v3, p1}, Lorg/jsoup/helper/Validate;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v1, p1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->setSelected(Ljava/util/Set;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->updateAfterSelectionChange()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const-string p0, "adapter"

    .line 61
    .line 62
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v2

    .line 66
    :cond_3
    :goto_0
    iput-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->activeSwipingMessageListItem:Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 67
    .line 68
    return-void
.end method

.method public final shouldAnimateOut(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->activeSwipingMessageListItem:Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeActions:Lkotlinx/coroutines/flow/StateFlow;

    .line 7
    .line 8
    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/util/Map;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 15
    .line 16
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 17
    .line 18
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lnet/thunderbird/core/common/action/SwipeActions;

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x8

    .line 30
    .line 31
    if-ne p1, v0, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lnet/thunderbird/core/common/action/SwipeActions;->rightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p0, "Unsupported direction"

    .line 37
    .line 38
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    iget-object p0, p0, Lnet/thunderbird/core/common/action/SwipeActions;->leftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 43
    .line 44
    :goto_0
    iget-boolean p0, p0, Lnet/thunderbird/core/common/action/SwipeAction;->removesItem:Z

    .line 45
    .line 46
    return p0

    .line 47
    :cond_2
    return v1
.end method
