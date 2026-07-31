.class public final Lcom/fsck/k9/ui/messagelist/MessageListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public final appearance:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

.field public final avatarMonogramCreator:Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

.field public final colors:Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;

.field public final contactPictureContainerClickListener:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

.field public final contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

.field public final contactsPictureLoader:Lcom/fsck/k9/contacts/ContactPictureLoader;

.field public final featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

.field public final footerClickListener:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

.field public final formatDate:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public final listItemListener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

.field public final messageClickedListener:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

.field public final messageLongClickedListener:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda13;

.field public messagesMap:Ljava/util/Map;

.field public final res:Landroid/content/res/Resources;

.field public selected:Ljava/util/Set;

.field public selectedCount:I

.field public final starClickListener:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

.field public final theme:Landroid/content/res/Resources$Theme;

.field public final themeProvider:Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

.field public viewItems:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/fsck/k9/contacts/ContactPictureLoader;Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lapp/k9mail/core/android/common/contact/ContactRepository;Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->theme:Landroid/content/res/Resources$Theme;

    .line 21
    .line 22
    move-object/from16 v2, p2

    .line 23
    .line 24
    iput-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->res:Landroid/content/res/Resources;

    .line 25
    .line 26
    move-object/from16 v2, p3

    .line 27
    .line 28
    iput-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 29
    .line 30
    move-object/from16 v2, p4

    .line 31
    .line 32
    iput-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->contactsPictureLoader:Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 33
    .line 34
    move-object/from16 v2, p5

    .line 35
    .line 36
    iput-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->listItemListener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 37
    .line 38
    move-object/from16 v2, p6

    .line 39
    .line 40
    iput-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->appearance:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    .line 41
    .line 42
    move-object/from16 v2, p7

    .line 43
    .line 44
    iput-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->themeProvider:Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 45
    .line 46
    move-object/from16 v2, p8

    .line 47
    .line 48
    iput-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 49
    .line 50
    move-object/from16 v2, p9

    .line 51
    .line 52
    iput-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 53
    .line 54
    move-object/from16 v2, p10

    .line 55
    .line 56
    iput-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->avatarMonogramCreator:Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

    .line 57
    .line 58
    move-object/from16 v2, p11

    .line 59
    .line 60
    iput-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->formatDate:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;

    .line 61
    .line 62
    new-instance v2, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;

    .line 63
    .line 64
    const v3, 0x7f040130

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v3}, Lkotlin/math/MathKt;->resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const v4, 0x7f040145

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v4}, Lkotlin/math/MathKt;->resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    const v5, 0x7f040135

    .line 79
    .line 80
    .line 81
    move-object v6, v2

    .line 82
    move v2, v3

    .line 83
    move v3, v4

    .line 84
    invoke-static {v1, v5}, Lkotlin/math/MathKt;->resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const v7, 0x7f040152

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v7}, Lkotlin/math/MathKt;->resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    const v8, 0x7f040133

    .line 96
    .line 97
    .line 98
    move-object v9, v6

    .line 99
    invoke-static {v1, v8}, Lkotlin/math/MathKt;->resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    const v10, 0x7f040149

    .line 104
    .line 105
    .line 106
    move v11, v7

    .line 107
    invoke-static {v1, v10}, Lkotlin/math/MathKt;->resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    const v12, 0x7f04013a

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v12}, Lkotlin/math/MathKt;->resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    const v14, 0x7f04014c

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v14}, Lkotlin/math/MathKt;->resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    invoke-static {v1, v8}, Lkotlin/math/MathKt;->resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    invoke-static {v1, v10}, Lkotlin/math/MathKt;->resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    invoke-static {v1, v12}, Lkotlin/math/MathKt;->resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    const v15, 0x7f04012f

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v15}, Lkotlin/math/MathKt;->resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    invoke-static {v1, v5}, Lkotlin/math/MathKt;->resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    move v5, v14

    .line 149
    move v14, v1

    .line 150
    move-object v1, v9

    .line 151
    move v9, v5

    .line 152
    move v5, v11

    .line 153
    move v11, v10

    .line 154
    move v10, v8

    .line 155
    move v8, v13

    .line 156
    move v13, v15

    .line 157
    invoke-direct/range {v1 .. v14}, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;-><init>(IIIIIIIIIIIII)V

    .line 158
    .line 159
    .line 160
    move-object v6, v1

    .line 161
    iput-object v6, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->colors:Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;

    .line 162
    .line 163
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 164
    .line 165
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 166
    .line 167
    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 168
    .line 169
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->messagesMap:Ljava/util/Map;

    .line 170
    .line 171
    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 172
    .line 173
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 174
    .line 175
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

    .line 176
    .line 177
    const/4 v2, 0x0

    .line 178
    invoke-direct {v1, v0, v2}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;I)V

    .line 179
    .line 180
    .line 181
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->messageClickedListener:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

    .line 182
    .line 183
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda13;

    .line 184
    .line 185
    invoke-direct {v1, v0}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda13;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;)V

    .line 186
    .line 187
    .line 188
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->messageLongClickedListener:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda13;

    .line 189
    .line 190
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

    .line 191
    .line 192
    const/4 v2, 0x1

    .line 193
    invoke-direct {v1, v0, v2}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;I)V

    .line 194
    .line 195
    .line 196
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->footerClickListener:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

    .line 197
    .line 198
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

    .line 199
    .line 200
    const/4 v3, 0x2

    .line 201
    invoke-direct {v1, v0, v3}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;I)V

    .line 202
    .line 203
    .line 204
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->starClickListener:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

    .line 205
    .line 206
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

    .line 207
    .line 208
    const/4 v3, 0x3

    .line 209
    invoke-direct {v1, v0, v3}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;I)V

    .line 210
    .line 211
    .line 212
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->contactPictureContainerClickListener:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

    .line 213
    .line 214
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method public static filterMessageListItem(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 29
    .line 30
    const/16 v1, 0xa

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;->item:Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    return-object p0
.end method


# virtual methods
.method public final getItem(Lapp/k9mail/legacy/message/controller/MessageReference;)Lcom/fsck/k9/ui/messagelist/MessageListItem;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 5
    .line 6
    invoke-static {p0}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->filterMessageListItem(Ljava/util/List;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v1, v0

    .line 25
    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 26
    .line 27
    iget-object v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 28
    .line 29
    iget-object v2, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p1, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget-wide v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->folderId:J

    .line 40
    .line 41
    iget-wide v4, p1, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 42
    .line 43
    cmp-long v2, v2, v4

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    iget-object v1, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageUid:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v2, p1, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    :goto_0
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 60
    .line 61
    return-object v0
.end method

.method public final getItemById(J)Lcom/fsck/k9/ui/messagelist/MessageListItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->messagesMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getItemFromView(Landroid/view/View;)Lcom/fsck/k9/ui/messagelist/MessageListItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 2
    .line 3
    const-string/jumbo v1, "use_compose_for_message_list_items"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast p1, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;

    .line 24
    .line 25
    iget-wide v0, p1, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->uniqueId:J

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getItemById(J)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    check-cast p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;

    .line 40
    .line 41
    iget-wide v0, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->uniqueId:J

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getItemById(J)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListViewItem;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/fsck/k9/ui/messagelist/MessageListViewItem;->getViewId()J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListViewItem;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/fsck/k9/ui/messagelist/MessageListViewItem;->getViewType()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getPosition(Lapp/k9mail/legacy/message/controller/MessageReference;)Ljava/lang/Integer;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_5

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/fsck/k9/ui/messagelist/MessageListViewItem;

    .line 33
    .line 34
    instance-of v3, v2, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    check-cast v2, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v2, v0

    .line 42
    :goto_1
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget-object v2, v2, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;->item:Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move-object v2, v0

    .line 48
    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const/4 v1, 0x0

    .line 57
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v3, -0x1

    .line 62
    if-eqz v2, :cond_5

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    iget-object v4, v2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 73
    .line 74
    iget-object v4, v4, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 75
    .line 76
    iget-wide v5, v2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->folderId:J

    .line 77
    .line 78
    iget-object v2, v2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageUid:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1, v5, v6, v4, v2}, Lapp/k9mail/legacy/message/controller/MessageReference;->equals(JLjava/lang/String;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    move v1, v3

    .line 91
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    if-eq v1, v3, :cond_6

    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_6
    :goto_5
    return-object v0
.end method

.method public final getPosition(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Ljava/lang/Integer;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 102
    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListViewItem;

    .line 103
    instance-of v3, v1, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 104
    iget-object v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;->item:Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 105
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    return-object p0

    :cond_3
    return-object v2
.end method

.method public final getSelectedMessages()Ljava/util/ArrayList;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Number;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iget-object v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->messagesMap:Ljava/util/Map;

    .line 37
    .line 38
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    check-cast v2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-object v1
.end method

.method public final isActiveMessage(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 7
    .line 8
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-wide v0, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->folderId:J

    .line 19
    .line 20
    iget-wide v2, p0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 21
    .line 22
    cmp-long v0, v0, v2

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageUid:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p0, p0, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final isSelected(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 5
    .line 6
    iget-wide v0, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Lcom/fsck/k9/ui/messagelist/item/MessageListViewHolder;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getItemViewType(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x0

    .line 15
    iget-object v6, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    if-ne v3, v4, :cond_0

    .line 19
    .line 20
    const-string v4, "display_in_app_notifications"

    .line 21
    .line 22
    invoke-virtual {v6, v4}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    sget-object v8, Lnet/thunderbird/core/featureflag/FeatureFlagResult$Enabled;->INSTANCE:Lnet/thunderbird/core/featureflag/FeatureFlagResult$Enabled;

    .line 27
    .line 28
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    check-cast v2, Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;

    .line 35
    .line 36
    iget-object v0, v2, Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder;->view:Landroidx/compose/ui/platform/ComposeView;

    .line 37
    .line 38
    new-instance v1, Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-direct {v1, v2, v5, v5}, Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;IB)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 44
    .line 45
    const v3, -0x2c2f2b3b

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3, v1, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    if-nez v3, :cond_27

    .line 56
    .line 57
    iget-object v3, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;->item:Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 69
    .line 70
    iget-wide v3, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageDate:J

    .line 71
    .line 72
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-object v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->formatDate:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;

    .line 77
    .line 78
    invoke-virtual {v4, v3}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    move-object/from16 v18, v3

    .line 83
    .line 84
    check-cast v18, Ljava/lang/String;

    .line 85
    .line 86
    iget-object v9, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 87
    .line 88
    iget-object v10, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->subject:Ljava/lang/String;

    .line 89
    .line 90
    iget v11, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadCount:I

    .line 91
    .line 92
    iget-wide v12, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageDate:J

    .line 93
    .line 94
    iget-wide v14, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->internalDate:J

    .line 95
    .line 96
    iget-object v3, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayName:Ljava/lang/CharSequence;

    .line 97
    .line 98
    iget-object v4, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayAddress:Lcom/fsck/k9/mail/Address;

    .line 99
    .line 100
    iget-object v8, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->previewText:Ljava/lang/String;

    .line 101
    .line 102
    iget-boolean v5, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isMessageEncrypted:Z

    .line 103
    .line 104
    iget-boolean v7, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 105
    .line 106
    move-object/from16 v36, v2

    .line 107
    .line 108
    iget-boolean v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 109
    .line 110
    move/from16 v22, v2

    .line 111
    .line 112
    iget-boolean v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isAnswered:Z

    .line 113
    .line 114
    move/from16 v23, v2

    .line 115
    .line 116
    iget-boolean v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isForwarded:Z

    .line 117
    .line 118
    move/from16 v24, v2

    .line 119
    .line 120
    iget-boolean v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->hasAttachments:Z

    .line 121
    .line 122
    move/from16 v25, v2

    .line 123
    .line 124
    move-object/from16 v16, v3

    .line 125
    .line 126
    iget-wide v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 127
    .line 128
    move-wide/from16 v26, v2

    .line 129
    .line 130
    iget-wide v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->folderId:J

    .line 131
    .line 132
    move-wide/from16 v28, v2

    .line 133
    .line 134
    iget-object v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageUid:Ljava/lang/String;

    .line 135
    .line 136
    move-object/from16 v30, v2

    .line 137
    .line 138
    iget-wide v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->databaseId:J

    .line 139
    .line 140
    move-wide/from16 v31, v2

    .line 141
    .line 142
    iget-wide v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadRoot:J

    .line 143
    .line 144
    move-wide/from16 v33, v2

    .line 145
    .line 146
    iget v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->contactColor:I

    .line 147
    .line 148
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    move-object/from16 v19, v8

    .line 155
    .line 156
    new-instance v8, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 157
    .line 158
    move/from16 v35, v2

    .line 159
    .line 160
    move-object/from16 v17, v4

    .line 161
    .line 162
    move/from16 v20, v5

    .line 163
    .line 164
    move/from16 v21, v7

    .line 165
    .line 166
    invoke-direct/range {v8 .. v35}, Lcom/fsck/k9/ui/messagelist/MessageListItem;-><init>(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;IJJLjava/lang/CharSequence;Lcom/fsck/k9/mail/Address;Ljava/lang/String;Ljava/lang/String;ZZZZZZJJLjava/lang/String;JJI)V

    .line 167
    .line 168
    .line 169
    move-object v5, v8

    .line 170
    move-object/from16 v2, v17

    .line 171
    .line 172
    move-object/from16 v3, v18

    .line 173
    .line 174
    move/from16 v4, v22

    .line 175
    .line 176
    move-wide/from16 v7, v26

    .line 177
    .line 178
    const-string/jumbo v12, "use_compose_for_message_list_items"

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v12}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-interface {v6}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-eqz v6, :cond_1

    .line 190
    .line 191
    move-object/from16 v2, v36

    .line 192
    .line 193
    check-cast v2, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->isActiveMessage(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->isSelected(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    iput-wide v7, v2, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->uniqueId:J

    .line 204
    .line 205
    iget-object v1, v2, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->composeView:Landroidx/compose/ui/platform/ComposeView;

    .line 206
    .line 207
    new-instance v4, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;

    .line 208
    .line 209
    invoke-direct {v4, v2, v5, v3, v0}, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;Lcom/fsck/k9/ui/messagelist/MessageListItem;ZZ)V

    .line 210
    .line 211
    .line 212
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 213
    .line 214
    const v2, 0xe867ec5

    .line 215
    .line 216
    .line 217
    const/4 v3, 0x1

    .line 218
    invoke-direct {v0, v2, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :cond_1
    move-object/from16 v5, v36

    .line 226
    .line 227
    check-cast v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->isActiveMessage(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Z

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->isSelected(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    iget-object v1, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->statusView:Landroid/widget/ImageView;

    .line 238
    .line 239
    iget-object v12, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->attachmentView:Landroid/widget/ImageView;

    .line 240
    .line 241
    iget-object v13, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->starView:Landroid/widget/ImageView;

    .line 242
    .line 243
    iget-object v14, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->chipView:Landroid/widget/ImageView;

    .line 244
    .line 245
    iget-object v15, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->selectedView:Landroid/view/View;

    .line 246
    .line 247
    move/from16 p2, v6

    .line 248
    .line 249
    iget-object v6, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->contactPictureClickArea:Landroid/view/View;

    .line 250
    .line 251
    move-object/from16 v17, v10

    .line 252
    .line 253
    iget-object v10, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->dateView:Lcom/google/android/material/textview/MaterialTextView;

    .line 254
    .line 255
    move/from16 v18, v11

    .line 256
    .line 257
    iget-object v11, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->previewView:Lcom/google/android/material/textview/MaterialTextView;

    .line 258
    .line 259
    move-object/from16 v22, v1

    .line 260
    .line 261
    iget-object v1, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->colors:Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;

    .line 262
    .line 263
    move-object/from16 v26, v12

    .line 264
    .line 265
    iget-object v12, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->subjectView:Lcom/google/android/material/textview/MaterialTextView;

    .line 266
    .line 267
    move-object/from16 v27, v3

    .line 268
    .line 269
    iget-object v3, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->contactPictureView:Landroid/widget/ImageView;

    .line 270
    .line 271
    move-object/from16 v28, v10

    .line 272
    .line 273
    iget-object v10, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->res:Landroid/content/res/Resources;

    .line 274
    .line 275
    move-object/from16 v29, v12

    .line 276
    .line 277
    iget-object v12, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->appearance:Lkotlin/jvm/functions/Function0;

    .line 278
    .line 279
    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v30

    .line 283
    move-object/from16 v31, v12

    .line 284
    .line 285
    move-object/from16 v12, v30

    .line 286
    .line 287
    check-cast v12, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;

    .line 288
    .line 289
    move-object/from16 v30, v11

    .line 290
    .line 291
    iget-boolean v11, v12, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showContactPicture:Z

    .line 292
    .line 293
    move/from16 v32, v11

    .line 294
    .line 295
    iget-boolean v11, v12, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->senderAboveSubject:Z

    .line 296
    .line 297
    move/from16 v33, v11

    .line 298
    .line 299
    const/16 v11, 0x8

    .line 300
    .line 301
    if-eqz v32, :cond_4

    .line 302
    .line 303
    invoke-virtual {v6, v0}, Landroid/view/View;->setSelected(Z)V

    .line 304
    .line 305
    .line 306
    if-eqz v0, :cond_2

    .line 307
    .line 308
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    const/4 v11, 0x0

    .line 312
    invoke-virtual {v15, v11}, Landroid/view/View;->setVisibility(I)V

    .line 313
    .line 314
    .line 315
    move/from16 v32, v0

    .line 316
    .line 317
    goto :goto_0

    .line 318
    :cond_2
    move/from16 v32, v0

    .line 319
    .line 320
    move v0, v11

    .line 321
    const/4 v11, 0x0

    .line 322
    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 326
    .line 327
    .line 328
    :goto_0
    if-eqz v32, :cond_3

    .line 329
    .line 330
    const v0, 0x7f12062b

    .line 331
    .line 332
    .line 333
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    goto :goto_1

    .line 338
    :cond_3
    const v0, 0x7f120630

    .line 339
    .line 340
    .line 341
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    :goto_1
    invoke-virtual {v6, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    goto :goto_2

    .line 349
    :cond_4
    move/from16 v32, v0

    .line 350
    .line 351
    :goto_2
    iput-wide v7, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->uniqueId:J

    .line 352
    .line 353
    if-eqz v32, :cond_5

    .line 354
    .line 355
    iget v0, v1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->selected:I

    .line 356
    .line 357
    goto :goto_3

    .line 358
    :cond_5
    if-eqz p2, :cond_6

    .line 359
    .line 360
    iget v0, v1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->active:I

    .line 361
    .line 362
    goto :goto_3

    .line 363
    :cond_6
    if-eqz v21, :cond_7

    .line 364
    .line 365
    iget v0, v1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->read:I

    .line 366
    .line 367
    goto :goto_3

    .line 368
    :cond_7
    if-nez v21, :cond_8

    .line 369
    .line 370
    iget v0, v1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->unread:I

    .line 371
    .line 372
    goto :goto_3

    .line 373
    :cond_8
    iget v0, v1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->regular:I

    .line 374
    .line 375
    :goto_3
    xor-int/lit8 v6, v21, 0x1

    .line 376
    .line 377
    iget-boolean v7, v12, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showingThreadedList:Z

    .line 378
    .line 379
    if-eqz v7, :cond_9

    .line 380
    .line 381
    move/from16 v11, v18

    .line 382
    .line 383
    goto :goto_4

    .line 384
    :cond_9
    const/4 v11, 0x0

    .line 385
    :goto_4
    const v7, 0x7f120315

    .line 386
    .line 387
    .line 388
    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    if-eqz v17, :cond_c

    .line 396
    .line 397
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    if-nez v8, :cond_a

    .line 402
    .line 403
    goto :goto_5

    .line 404
    :cond_a
    const/4 v8, 0x1

    .line 405
    if-le v11, v8, :cond_b

    .line 406
    .line 407
    invoke-static/range {v17 .. v17}, Lcom/fsck/k9/helper/Utility;->stripSubject(Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    goto :goto_5

    .line 415
    :cond_b
    move-object/from16 v7, v17

    .line 416
    .line 417
    :cond_c
    :goto_5
    iget-boolean v8, v12, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showAccountIndicator:Z

    .line 418
    .line 419
    if-eqz v8, :cond_d

    .line 420
    .line 421
    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 426
    .line 427
    .line 428
    move-result-object v8

    .line 429
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    iget-object v9, v9, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 433
    .line 434
    iget v9, v9, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->color:I

    .line 435
    .line 436
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 440
    .line 441
    .line 442
    :cond_d
    iget-boolean v8, v12, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->stars:Z

    .line 443
    .line 444
    if-eqz v8, :cond_10

    .line 445
    .line 446
    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 447
    .line 448
    .line 449
    if-eqz v4, :cond_e

    .line 450
    .line 451
    invoke-virtual {v13}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 452
    .line 453
    .line 454
    goto :goto_6

    .line 455
    :cond_e
    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 456
    .line 457
    .line 458
    :goto_6
    iget-object v8, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->starClickAreaView:Landroid/view/View;

    .line 459
    .line 460
    if-eqz v4, :cond_f

    .line 461
    .line 462
    const v4, 0x7f120651

    .line 463
    .line 464
    .line 465
    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    goto :goto_7

    .line 470
    :cond_f
    const v4, 0x7f1202e5

    .line 471
    .line 472
    .line 473
    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    :goto_7
    invoke-virtual {v8, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 478
    .line 479
    .line 480
    :cond_10
    iget-boolean v4, v12, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showContactPicture:Z

    .line 481
    .line 482
    if-eqz v4, :cond_12

    .line 483
    .line 484
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 485
    .line 486
    .line 487
    move-result v4

    .line 488
    if-nez v4, :cond_12

    .line 489
    .line 490
    if-eqz v2, :cond_11

    .line 491
    .line 492
    iget-object v4, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->contactsPictureLoader:Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 493
    .line 494
    invoke-virtual {v4, v3, v2}, Lcom/fsck/k9/contacts/ContactPictureLoader;->setContactPicture(Landroid/widget/ImageView;Lcom/fsck/k9/mail/Address;)V

    .line 495
    .line 496
    .line 497
    goto :goto_8

    .line 498
    :cond_11
    const v2, 0x7f0800cc

    .line 499
    .line 500
    .line 501
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    .line 503
    .line 504
    :cond_12
    :goto_8
    iget-object v2, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 505
    .line 506
    invoke-interface/range {v31 .. v31}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    check-cast v3, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;

    .line 511
    .line 512
    iget-boolean v3, v3, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->backGroundAsReadIndicator:Z

    .line 513
    .line 514
    if-eqz v32, :cond_13

    .line 515
    .line 516
    iget v3, v1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->selectedBackground:I

    .line 517
    .line 518
    goto :goto_9

    .line 519
    :cond_13
    if-eqz p2, :cond_14

    .line 520
    .line 521
    iget v3, v1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->activeBackground:I

    .line 522
    .line 523
    goto :goto_9

    .line 524
    :cond_14
    if-eqz v3, :cond_15

    .line 525
    .line 526
    if-eqz v21, :cond_15

    .line 527
    .line 528
    iget v3, v1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->readBackground:I

    .line 529
    .line 530
    goto :goto_9

    .line 531
    :cond_15
    if-eqz v3, :cond_16

    .line 532
    .line 533
    if-nez v21, :cond_16

    .line 534
    .line 535
    iget v3, v1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->unreadBackground:I

    .line 536
    .line 537
    goto :goto_9

    .line 538
    :cond_16
    iget v3, v1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->regularBackground:I

    .line 539
    .line 540
    :goto_9
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 541
    .line 542
    .line 543
    iget-object v2, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->threadCountView:Lcom/google/android/material/textview/MaterialTextView;

    .line 544
    .line 545
    const/4 v3, 0x1

    .line 546
    if-le v11, v3, :cond_17

    .line 547
    .line 548
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 549
    .line 550
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 551
    .line 552
    .line 553
    move-result-object v8

    .line 554
    new-array v9, v3, [Ljava/lang/Object;

    .line 555
    .line 556
    const/4 v11, 0x0

    .line 557
    aput-object v8, v9, v11

    .line 558
    .line 559
    invoke-static {v9, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v8

    .line 563
    const-string v3, "%d"

    .line 564
    .line 565
    invoke-static {v4, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 573
    .line 574
    .line 575
    goto :goto_a

    .line 576
    :cond_17
    const/16 v3, 0x8

    .line 577
    .line 578
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 579
    .line 580
    .line 581
    :goto_a
    if-eqz v33, :cond_18

    .line 582
    .line 583
    move-object v3, v7

    .line 584
    goto :goto_b

    .line 585
    :cond_18
    move-object/from16 v3, v16

    .line 586
    .line 587
    :goto_b
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 588
    .line 589
    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 590
    .line 591
    .line 592
    iget v4, v12, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->previewLines:I

    .line 593
    .line 594
    if-lez v4, :cond_1a

    .line 595
    .line 596
    if-eqz v20, :cond_19

    .line 597
    .line 598
    const v4, 0x7f120541

    .line 599
    .line 600
    .line 601
    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v8

    .line 605
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    goto :goto_c

    .line 609
    :cond_19
    move-object/from16 v8, v19

    .line 610
    .line 611
    :goto_c
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 612
    .line 613
    .line 614
    move-result v4

    .line 615
    if-lez v4, :cond_1a

    .line 616
    .line 617
    const-string v4, " \u2013 "

    .line 618
    .line 619
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 620
    .line 621
    .line 622
    move-result-object v4

    .line 623
    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 624
    .line 625
    .line 626
    :cond_1a
    move-object/from16 v4, v30

    .line 627
    .line 628
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 629
    .line 630
    .line 631
    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 632
    .line 633
    invoke-virtual {v4, v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 641
    .line 642
    .line 643
    check-cast v2, Landroid/text/Spannable;

    .line 644
    .line 645
    if-eqz v32, :cond_1b

    .line 646
    .line 647
    iget v1, v1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewSelectedText:I

    .line 648
    .line 649
    goto :goto_d

    .line 650
    :cond_1b
    if-eqz p2, :cond_1c

    .line 651
    .line 652
    iget v1, v1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewActiveText:I

    .line 653
    .line 654
    goto :goto_d

    .line 655
    :cond_1c
    iget v1, v1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewText:I

    .line 656
    .line 657
    :goto_d
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 658
    .line 659
    .line 660
    move-result v3

    .line 661
    invoke-interface/range {v31 .. v31}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v4

    .line 665
    check-cast v4, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;

    .line 666
    .line 667
    iget-boolean v8, v4, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->senderAboveSubject:Z

    .line 668
    .line 669
    iget-object v4, v4, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 670
    .line 671
    if-eqz v8, :cond_1d

    .line 672
    .line 673
    iget v4, v4, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    .line 674
    .line 675
    goto :goto_e

    .line 676
    :cond_1d
    iget v4, v4, Lcom/fsck/k9/FontSizes;->messageListSender:I

    .line 677
    .line 678
    :goto_e
    const/4 v8, -0x1

    .line 679
    const/16 v9, 0x21

    .line 680
    .line 681
    if-eq v4, v8, :cond_1e

    .line 682
    .line 683
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    .line 684
    .line 685
    const/4 v11, 0x1

    .line 686
    invoke-direct {v8, v4, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 687
    .line 688
    .line 689
    const/4 v4, 0x0

    .line 690
    invoke-interface {v2, v8, v4, v3, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 691
    .line 692
    .line 693
    goto :goto_f

    .line 694
    :cond_1e
    const/4 v4, 0x0

    .line 695
    const/4 v11, 0x1

    .line 696
    :goto_f
    if-nez v21, :cond_1f

    .line 697
    .line 698
    new-instance v8, Landroid/text/style/StyleSpan;

    .line 699
    .line 700
    invoke-direct {v8, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 701
    .line 702
    .line 703
    invoke-interface {v2, v8, v4, v3, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 704
    .line 705
    .line 706
    :cond_1f
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 707
    .line 708
    invoke-direct {v4, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 709
    .line 710
    .line 711
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 712
    .line 713
    .line 714
    move-result v1

    .line 715
    invoke-interface {v2, v4, v3, v1, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 716
    .line 717
    .line 718
    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    move-object/from16 v2, v29

    .line 727
    .line 728
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 732
    .line 733
    .line 734
    if-eqz v33, :cond_20

    .line 735
    .line 736
    move-object/from16 v3, v16

    .line 737
    .line 738
    goto :goto_10

    .line 739
    :cond_20
    move-object v3, v7

    .line 740
    :goto_10
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    .line 742
    .line 743
    const/4 v1, 0x0

    .line 744
    if-eqz v21, :cond_21

    .line 745
    .line 746
    move-object v3, v1

    .line 747
    goto :goto_11

    .line 748
    :cond_21
    const/4 v8, 0x1

    .line 749
    new-array v4, v8, [Ljava/lang/Object;

    .line 750
    .line 751
    const/4 v11, 0x0

    .line 752
    aput-object v3, v4, v11

    .line 753
    .line 754
    const v3, 0x7f120445

    .line 755
    .line 756
    .line 757
    invoke-virtual {v10, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v3

    .line 761
    :goto_11
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 765
    .line 766
    .line 767
    move-result-object v2

    .line 768
    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 769
    .line 770
    .line 771
    move-result-object v2

    .line 772
    move-object/from16 v3, v28

    .line 773
    .line 774
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 778
    .line 779
    .line 780
    move-object/from16 v2, v27

    .line 781
    .line 782
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    .line 784
    .line 785
    if-eqz v25, :cond_22

    .line 786
    .line 787
    const/4 v11, 0x0

    .line 788
    :goto_12
    move-object/from16 v2, v26

    .line 789
    .line 790
    goto :goto_13

    .line 791
    :cond_22
    const/16 v11, 0x8

    .line 792
    .line 793
    goto :goto_12

    .line 794
    :goto_13
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 798
    .line 799
    .line 800
    iget-object v0, v5, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->theme:Landroid/content/res/Resources$Theme;

    .line 801
    .line 802
    if-eqz v24, :cond_23

    .line 803
    .line 804
    if-eqz v23, :cond_23

    .line 805
    .line 806
    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 807
    .line 808
    const v1, 0x7f0800d5

    .line 809
    .line 810
    .line 811
    invoke-virtual {v10, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 816
    .line 817
    .line 818
    goto :goto_14

    .line 819
    :cond_23
    if-eqz v23, :cond_24

    .line 820
    .line 821
    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 822
    .line 823
    const v1, 0x7f08010c

    .line 824
    .line 825
    .line 826
    invoke-virtual {v10, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 827
    .line 828
    .line 829
    move-result-object v1

    .line 830
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 831
    .line 832
    .line 833
    goto :goto_14

    .line 834
    :cond_24
    if-eqz v24, :cond_25

    .line 835
    .line 836
    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 837
    .line 838
    const v1, 0x7f0800e8

    .line 839
    .line 840
    .line 841
    invoke-virtual {v10, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 846
    .line 847
    .line 848
    :cond_25
    :goto_14
    if-eqz v1, :cond_26

    .line 849
    .line 850
    move-object/from16 v0, v22

    .line 851
    .line 852
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 853
    .line 854
    .line 855
    const/4 v11, 0x0

    .line 856
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 857
    .line 858
    .line 859
    return-void

    .line 860
    :cond_26
    move-object/from16 v0, v22

    .line 861
    .line 862
    const/16 v3, 0x8

    .line 863
    .line 864
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 865
    .line 866
    .line 867
    return-void

    .line 868
    :cond_27
    move-object/from16 v36, v2

    .line 869
    .line 870
    move v8, v7

    .line 871
    if-ne v3, v8, :cond_28

    .line 872
    .line 873
    move-object/from16 v2, v36

    .line 874
    .line 875
    check-cast v2, Lcom/fsck/k9/ui/messagelist/item/FooterViewHolder;

    .line 876
    .line 877
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 878
    .line 879
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 884
    .line 885
    .line 886
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Footer;

    .line 887
    .line 888
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Footer;->text:Ljava/lang/String;

    .line 889
    .line 890
    iget-object v1, v2, Lcom/fsck/k9/ui/messagelist/item/FooterViewHolder;->textView:Lcom/google/android/material/textview/MaterialTextView;

    .line 891
    .line 892
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    .line 894
    .line 895
    return-void

    .line 896
    :cond_28
    const-string v0, "Unsupported type: "

    .line 897
    .line 898
    invoke-static {v0, v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;I)V

    .line 899
    .line 900
    .line 901
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    iget-object v8, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 14
    .line 15
    if-nez v2, :cond_b

    .line 16
    .line 17
    const-string/jumbo v2, "use_compose_for_message_list_items"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v2}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v2}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v11, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->appearance:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    sget v2, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->$r8$clinit:I

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v12, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    invoke-direct {v12, v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;I)V

    .line 45
    .line 46
    .line 47
    new-instance v13, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

    .line 48
    .line 49
    const/4 v1, 0x4

    .line 50
    invoke-direct {v13, v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;I)V

    .line 51
    .line 52
    .line 53
    new-instance v15, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

    .line 54
    .line 55
    const/4 v1, 0x5

    .line 56
    invoke-direct {v15, v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;I)V

    .line 57
    .line 58
    .line 59
    new-instance v14, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

    .line 60
    .line 61
    const/4 v1, 0x6

    .line 62
    invoke-direct {v14, v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;I)V

    .line 63
    .line 64
    .line 65
    move-object/from16 v16, v11

    .line 66
    .line 67
    iget-object v11, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->themeProvider:Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 68
    .line 69
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->avatarMonogramCreator:Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    new-instance v3, Landroidx/compose/ui/platform/ComposeView;

    .line 86
    .line 87
    const/4 v7, 0x6

    .line 88
    const/4 v8, 0x0

    .line 89
    const/4 v5, 0x0

    .line 90
    const/4 v6, 0x0

    .line 91
    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    .line 93
    .line 94
    new-instance v9, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;

    .line 95
    .line 96
    move-object/from16 v18, v0

    .line 97
    .line 98
    move-object/from16 v17, v1

    .line 99
    .line 100
    move-object v10, v3

    .line 101
    invoke-direct/range {v9 .. v18}, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;-><init>(Landroidx/compose/ui/platform/ComposeView;Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;Lapp/k9mail/core/android/common/contact/ContactRepository;Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object v9

    .line 108
    :cond_0
    move-object/from16 v16, v11

    .line 109
    .line 110
    sget v2, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->$r8$clinit:I

    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iget-object v12, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->theme:Landroid/content/res/Resources$Theme;

    .line 119
    .line 120
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    iget-object v13, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->res:Landroid/content/res/Resources;

    .line 124
    .line 125
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object v14, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->contactsPictureLoader:Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 129
    .line 130
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-object v15, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->colors:Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;

    .line 134
    .line 135
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iget-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->messageClickedListener:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget-object v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->messageLongClickedListener:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda13;

    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    iget-object v9, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->contactPictureContainerClickListener:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

    .line 149
    .line 150
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->starClickListener:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    const v10, 0x7f0c02d7

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8, v10, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    invoke-virtual {v10, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 169
    .line 170
    .line 171
    move-object v1, v9

    .line 172
    new-instance v9, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;

    .line 173
    .line 174
    invoke-direct/range {v9 .. v15}, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;-><init>(Landroid/view/View;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lcom/fsck/k9/contacts/ContactPictureLoader;Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;->get()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    check-cast v2, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;

    .line 182
    .line 183
    iget-object v4, v2, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 184
    .line 185
    iget-boolean v8, v2, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->stars:Z

    .line 186
    .line 187
    iget-boolean v11, v2, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->senderAboveSubject:Z

    .line 188
    .line 189
    iget-object v12, v9, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->subjectView:Lcom/google/android/material/textview/MaterialTextView;

    .line 190
    .line 191
    if-eqz v11, :cond_1

    .line 192
    .line 193
    iget v11, v4, Lcom/fsck/k9/FontSizes;->messageListSender:I

    .line 194
    .line 195
    invoke-static {v12, v11}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_1
    iget v11, v4, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    .line 200
    .line 201
    invoke-static {v12, v11}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 202
    .line 203
    .line 204
    :goto_0
    iget-object v11, v9, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->dateView:Lcom/google/android/material/textview/MaterialTextView;

    .line 205
    .line 206
    iget v12, v4, Lcom/fsck/k9/FontSizes;->messageListDate:I

    .line 207
    .line 208
    invoke-static {v11, v12}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 209
    .line 210
    .line 211
    iget-object v11, v2, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 212
    .line 213
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    if-eqz v11, :cond_4

    .line 218
    .line 219
    if-eq v11, v7, :cond_3

    .line 220
    .line 221
    if-ne v11, v5, :cond_2

    .line 222
    .line 223
    const v5, 0x7f0703bc

    .line 224
    .line 225
    .line 226
    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    const v11, 0x7f0703bb

    .line 231
    .line 232
    .line 233
    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 234
    .line 235
    .line 236
    move-result v11

    .line 237
    const v12, 0x7f0703ba

    .line 238
    .line 239
    .line 240
    invoke-static {v12, v13}, Landroidx/sqlite/SQLite;->getFloatCompat(ILandroid/content/res/Resources;)F

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    goto :goto_1

    .line 245
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 246
    .line 247
    .line 248
    return-object v3

    .line 249
    :cond_3
    const v5, 0x7f0703b8

    .line 250
    .line 251
    .line 252
    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    const v11, 0x7f0703b7

    .line 257
    .line 258
    .line 259
    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 260
    .line 261
    .line 262
    move-result v11

    .line 263
    const v12, 0x7f0703b6

    .line 264
    .line 265
    .line 266
    invoke-static {v12, v13}, Landroidx/sqlite/SQLite;->getFloatCompat(ILandroid/content/res/Resources;)F

    .line 267
    .line 268
    .line 269
    move-result v12

    .line 270
    goto :goto_1

    .line 271
    :cond_4
    const v5, 0x7f0703b4

    .line 272
    .line 273
    .line 274
    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    const v11, 0x7f0703b3

    .line 279
    .line 280
    .line 281
    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 282
    .line 283
    .line 284
    move-result v11

    .line 285
    const v12, 0x7f0703b2

    .line 286
    .line 287
    .line 288
    invoke-static {v12, v13}, Landroidx/sqlite/SQLite;->getFloatCompat(ILandroid/content/res/Resources;)F

    .line 289
    .line 290
    .line 291
    move-result v12

    .line 292
    :goto_1
    const v13, 0x7f09044c

    .line 293
    .line 294
    .line 295
    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v13

    .line 299
    check-cast v13, Landroidx/constraintlayout/widget/Guideline;

    .line 300
    .line 301
    invoke-virtual {v13, v5}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    .line 302
    .line 303
    .line 304
    const v13, 0x7f0900b1

    .line 305
    .line 306
    .line 307
    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v13

    .line 311
    check-cast v13, Landroidx/constraintlayout/widget/Guideline;

    .line 312
    .line 313
    invoke-virtual {v13, v5}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    .line 314
    .line 315
    .line 316
    iget-object v5, v9, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->previewView:Lcom/google/android/material/textview/MaterialTextView;

    .line 317
    .line 318
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 319
    .line 320
    .line 321
    move-result-object v13

    .line 322
    instance-of v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 323
    .line 324
    if-eqz v14, :cond_5

    .line 325
    .line 326
    move-object v3, v13

    .line 327
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 328
    .line 329
    :cond_5
    if-eqz v3, :cond_6

    .line 330
    .line 331
    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 332
    .line 333
    :cond_6
    invoke-virtual {v5}, Landroid/widget/TextView;->getLineSpacingExtra()F

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    invoke-virtual {v5, v3, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 338
    .line 339
    .line 340
    iget-boolean v3, v2, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showContactPicture:Z

    .line 341
    .line 342
    const/16 v11, 0x8

    .line 343
    .line 344
    iget-object v12, v9, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->contactPictureClickArea:Landroid/view/View;

    .line 345
    .line 346
    if-eqz v3, :cond_7

    .line 347
    .line 348
    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    .line 350
    .line 351
    goto :goto_2

    .line 352
    :cond_7
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 353
    .line 354
    .line 355
    iget-object v1, v9, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->selectedView:Landroid/view/View;

    .line 356
    .line 357
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 358
    .line 359
    .line 360
    iget-object v1, v9, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->contactPictureView:Landroid/widget/ImageView;

    .line 361
    .line 362
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 363
    .line 364
    .line 365
    :goto_2
    iget-boolean v1, v2, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showAccountIndicator:Z

    .line 366
    .line 367
    if-eqz v1, :cond_8

    .line 368
    .line 369
    move v1, v6

    .line 370
    goto :goto_3

    .line 371
    :cond_8
    move v1, v11

    .line 372
    :goto_3
    iget-object v3, v9, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->chipView:Landroid/widget/ImageView;

    .line 373
    .line 374
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    .line 376
    .line 377
    iget v1, v2, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->previewLines:I

    .line 378
    .line 379
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 384
    .line 385
    .line 386
    iget v1, v4, Lcom/fsck/k9/FontSizes;->messageListPreview:I

    .line 387
    .line 388
    invoke-static {v5, v1}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 389
    .line 390
    .line 391
    iget-object v1, v9, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->threadCountView:Lcom/google/android/material/textview/MaterialTextView;

    .line 392
    .line 393
    iget v2, v4, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    .line 394
    .line 395
    invoke-static {v1, v2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 396
    .line 397
    .line 398
    if-eqz v8, :cond_9

    .line 399
    .line 400
    move v1, v6

    .line 401
    goto :goto_4

    .line 402
    :cond_9
    move v1, v11

    .line 403
    :goto_4
    iget-object v2, v9, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->starView:Landroid/widget/ImageView;

    .line 404
    .line 405
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    .line 407
    .line 408
    if-eqz v8, :cond_a

    .line 409
    .line 410
    goto :goto_5

    .line 411
    :cond_a
    move v6, v11

    .line 412
    :goto_5
    iget-object v1, v9, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->starClickAreaView:Landroid/view/View;

    .line 413
    .line 414
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v10, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    return-object v9

    .line 424
    :cond_b
    if-ne v2, v7, :cond_c

    .line 425
    .line 426
    sget v2, Lcom/fsck/k9/ui/messagelist/item/FooterViewHolder;->$r8$clinit:I

    .line 427
    .line 428
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->footerClickListener:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;

    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    const v2, 0x7f0c02d8

    .line 437
    .line 438
    .line 439
    invoke-virtual {v8, v2, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    .line 445
    .line 446
    new-instance v0, Lcom/fsck/k9/ui/messagelist/item/FooterViewHolder;

    .line 447
    .line 448
    invoke-direct {v0, v1}, Lcom/fsck/k9/ui/messagelist/item/FooterViewHolder;-><init>(Landroid/view/View;)V

    .line 449
    .line 450
    .line 451
    return-object v0

    .line 452
    :cond_c
    if-ne v2, v5, :cond_d

    .line 453
    .line 454
    const-string v5, "display_in_app_notifications"

    .line 455
    .line 456
    invoke-virtual {v4, v5}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    sget-object v5, Lnet/thunderbird/core/featureflag/FeatureFlagResult$Enabled;->INSTANCE:Lnet/thunderbird/core/featureflag/FeatureFlagResult$Enabled;

    .line 461
    .line 462
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    if-eqz v4, :cond_d

    .line 467
    .line 468
    new-instance v5, Landroidx/compose/ui/platform/ComposeView;

    .line 469
    .line 470
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 471
    .line 472
    .line 473
    move-result-object v6

    .line 474
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .line 476
    .line 477
    const/4 v9, 0x6

    .line 478
    const/4 v10, 0x0

    .line 479
    const/4 v7, 0x0

    .line 480
    const/4 v8, 0x0

    .line 481
    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 482
    .line 483
    .line 484
    new-instance v6, Landroidx/room/InvalidationTracker$implementation$1;

    .line 485
    .line 486
    const/4 v12, 0x0

    .line 487
    const/16 v13, 0xb

    .line 488
    .line 489
    const/4 v7, 0x1

    .line 490
    iget-object v8, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->listItemListener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 491
    .line 492
    const-class v9, Lcom/fsck/k9/ui/messagelist/MessageListItemActionListener;

    .line 493
    .line 494
    const-string v10, "filterInAppNotificationEvents"

    .line 495
    .line 496
    const-string v11, "filterInAppNotificationEvents(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Z"

    .line 497
    .line 498
    invoke-direct/range {v6 .. v13}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 499
    .line 500
    .line 501
    new-instance v7, Landroidx/room/InvalidationTracker$implementation$1;

    .line 502
    .line 503
    const/4 v13, 0x0

    .line 504
    const/16 v14, 0xc

    .line 505
    .line 506
    const/4 v8, 0x1

    .line 507
    iget-object v9, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->listItemListener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 508
    .line 509
    const-class v10, Lcom/fsck/k9/ui/messagelist/MessageListItemActionListener;

    .line 510
    .line 511
    const-string v11, "onNotificationActionClicked"

    .line 512
    .line 513
    const-string v12, "onNotificationActionClicked(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)V"

    .line 514
    .line 515
    invoke-direct/range {v7 .. v14}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 516
    .line 517
    .line 518
    new-instance v0, Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;

    .line 519
    .line 520
    invoke-direct {v0, v7, v6, v5}, Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;-><init>(Landroidx/room/InvalidationTracker$implementation$1;Landroidx/room/InvalidationTracker$implementation$1;Landroidx/compose/ui/platform/ComposeView;)V

    .line 521
    .line 522
    .line 523
    return-object v0

    .line 524
    :cond_d
    const-string v0, "Unsupported type: "

    .line 525
    .line 526
    invoke-static {v0, v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;I)V

    .line 527
    .line 528
    .line 529
    return-object v3
.end method

.method public final setActiveMessage(Lapp/k9mail/legacy/message/controller/MessageReference;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getPosition(Lapp/k9mail/legacy/message/controller/MessageReference;)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getPosition(Lapp/k9mail/legacy/message/controller/MessageReference;)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0, v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0, v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public final setSelected(Ljava/util/Set;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/fsck/k9/controller/NotificationOperations$$ExternalSyntheticLambda2;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v1, p1, v2}, Lcom/fsck/k9/controller/NotificationOperations$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lkotlin/sequences/FilteringSequence;

    .line 25
    .line 26
    invoke-direct {v3, v0, v2, v1}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    const/4 v1, 0x7

    .line 32
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;I)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lkotlin/sequences/TakeWhileSequence;

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-direct {v1, v3, v0, v4}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

    .line 46
    .line 47
    const/16 v3, 0x8

    .line 48
    .line 49
    invoke-direct {v1, p0, v3}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;I)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Lkotlin/sequences/TakeWhileSequence;

    .line 53
    .line 54
    invoke-direct {v3, v0, v1, v4}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v3}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 62
    .line 63
    invoke-direct {v1, v0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v3, 0x0

    .line 71
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Ljava/lang/Number;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {v5, v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    move-object v0, p1

    .line 90
    check-cast v0, Ljava/lang/Iterable;

    .line 91
    .line 92
    new-instance v1, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 93
    .line 94
    invoke-direct {v1, v4, v0}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

    .line 98
    .line 99
    const/16 v6, 0x9

    .line 100
    .line 101
    invoke-direct {v0, p0, v6}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;I)V

    .line 102
    .line 103
    .line 104
    new-instance v6, Lkotlin/sequences/FilteringSequence;

    .line 105
    .line 106
    invoke-direct {v6, v1, v2, v0}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

    .line 110
    .line 111
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;I)V

    .line 112
    .line 113
    .line 114
    new-instance v1, Lkotlin/sequences/TakeWhileSequence;

    .line 115
    .line 116
    invoke-direct {v1, v6, v0, v4}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

    .line 124
    .line 125
    invoke-direct {v1, p0, v4}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;I)V

    .line 126
    .line 127
    .line 128
    new-instance v6, Lkotlin/sequences/TakeWhileSequence;

    .line 129
    .line 130
    invoke-direct {v6, v0, v1, v4}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 131
    .line 132
    .line 133
    invoke-static {v6}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-instance v1, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 138
    .line 139
    invoke-direct {v1, v0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 140
    .line 141
    .line 142
    :goto_1
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_2

    .line 147
    .line 148
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Ljava/lang/Number;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {v5, v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_2
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 163
    .line 164
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    const/4 v0, 0x0

    .line 169
    if-eqz p1, :cond_3

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_3
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->appearance:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    .line 173
    .line 174
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;->get()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;

    .line 179
    .line 180
    iget-boolean p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showingThreadedList:Z

    .line 181
    .line 182
    if-nez p1, :cond_4

    .line 183
    .line 184
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 185
    .line 186
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    goto :goto_3

    .line 191
    :cond_4
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 192
    .line 193
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    new-instance v1, Lkotlin/sequences/FilteringSequence;

    .line 198
    .line 199
    sget-object v3, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$calculateSelectionCount$$inlined$filterIsInstance$1;->INSTANCE:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$calculateSelectionCount$$inlined$filterIsInstance$1;

    .line 200
    .line 201
    invoke-direct {v1, p1, v2, v3}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 202
    .line 203
    .line 204
    new-instance p1, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 205
    .line 206
    const/4 v3, 0x4

    .line 207
    invoke-direct {p1, v3}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 208
    .line 209
    .line 210
    new-instance v3, Lkotlin/sequences/TakeWhileSequence;

    .line 211
    .line 212
    invoke-direct {v3, v1, p1, v4}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 213
    .line 214
    .line 215
    new-instance p1, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

    .line 216
    .line 217
    invoke-direct {p1, p0, v0}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;I)V

    .line 218
    .line 219
    .line 220
    new-instance v1, Lkotlin/sequences/FilteringSequence;

    .line 221
    .line 222
    invoke-direct {v1, v3, v2, p1}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 223
    .line 224
    .line 225
    new-instance p1, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 226
    .line 227
    invoke-direct {p1, v1}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 228
    .line 229
    .line 230
    :goto_2
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_6

    .line 235
    .line 236
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 241
    .line 242
    iget v1, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadCount:I

    .line 243
    .line 244
    if-ge v1, v2, :cond_5

    .line 245
    .line 246
    move v1, v2

    .line 247
    :cond_5
    add-int/2addr v0, v1

    .line 248
    goto :goto_2

    .line 249
    :cond_6
    :goto_3
    iput v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selectedCount:I

    .line 250
    .line 251
    return-void
.end method

.method public final setViewItems(Ljava/util/AbstractList;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->filterMessageListItem(Ljava/util/List;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/16 v3, 0xa

    .line 15
    .line 16
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 38
    .line 39
    iget-object v5, v5, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 40
    .line 41
    iget-object v5, v5, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/16 v3, 0x10

    .line 59
    .line 60
    if-ge v2, v3, :cond_1

    .line 61
    .line 62
    move v2, v3

    .line 63
    :cond_1
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    move-object v4, v2

    .line 83
    check-cast v4, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 84
    .line 85
    iget-wide v4, v4, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 86
    .line 87
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->messagesMap:Ljava/util/Map;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 98
    .line 99
    check-cast v1, Ljava/util/Collection;

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_3

    .line 106
    .line 107
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->messagesMap:Ljava/util/Map;

    .line 108
    .line 109
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 114
    .line 115
    check-cast v2, Ljava/lang/Iterable;

    .line 116
    .line 117
    check-cast v1, Ljava/lang/Iterable;

    .line 118
    .line 119
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->setSelected(Ljava/util/Set;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;

    .line 127
    .line 128
    const/4 v2, 0x0

    .line 129
    invoke-direct {v1, v0, p1, v2}, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method
