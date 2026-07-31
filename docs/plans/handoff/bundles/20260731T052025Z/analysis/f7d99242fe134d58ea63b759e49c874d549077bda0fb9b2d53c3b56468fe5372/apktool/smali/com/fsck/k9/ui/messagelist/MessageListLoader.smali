.class public final Lcom/fsck/k9/ui/messagelist/MessageListLoader;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final contactLetterBitmapCreator:Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

.field public final featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

.field public final localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

.field public final messageHelper:Lcom/fsck/k9/helper/MessageHelper;

.field public final messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

.field public final messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

.field public final outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/mailstore/LocalStoreProvider;Lcom/fsck/k9/mailstore/DefaultMessageListRepository;Lcom/fsck/k9/helper/MessageHelper;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->messageHelper:Lcom/fsck/k9/helper/MessageHelper;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->contactLetterBitmapCreator:Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

    .line 19
    .line 20
    return-void
.end method

.method public static buildSelection(Lnet/thunderbird/core/android/account/LegacyAccount;Lcom/fsck/k9/ui/messagelist/MessageListConfig;)Lkotlin/Pair;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p1, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v5, v2, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    move p0, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p0, v4

    .line 30
    :goto_0
    if-eqz p0, :cond_1

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const-string v5, "(uid = ? AND folder_id = ?) OR ("

    .line 35
    .line 36
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v5, v2, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget-wide v5, v2, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 45
    .line 46
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 54
    .line 55
    invoke-virtual {p1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getConditions()Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v5, v2}, Lkotlin/io/ByteStreamsKt;->buildWhereClause(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Lorg/jsoup/internal/SoftPool;

    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-direct {p1, v3, v5, v2}, Lorg/jsoup/internal/SoftPool;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, p1, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object p1, p1, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 93
    .line 94
    .line 95
    if-eqz p0, :cond_2

    .line 96
    .line 97
    const/16 p0, 0x29

    .line 98
    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    new-array p1, v4, [Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, [Ljava/lang/String;

    .line 113
    .line 114
    new-instance v0, Lkotlin/Pair;

    .line 115
    .line 116
    invoke-direct {v0, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-object v0
.end method


# virtual methods
.method public final getMessageListInfo(Lcom/fsck/k9/ui/messagelist/MessageListConfig;)Lcom/fsck/k9/ui/messagelist/MessageListInfo;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 6
    .line 7
    iget-boolean v3, v1, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->sortAscending:Z

    .line 8
    .line 9
    iget-object v4, v1, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 12
    .line 13
    invoke-static {v2, v5}, Landroidx/room/util/SchemaInfoUtilKt;->getLegacyAccountsFromLocalSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    new-instance v6, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    const/4 v9, 0x4

    .line 31
    if-eqz v8, :cond_d

    .line 32
    .line 33
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    move-object v14, v8

    .line 38
    check-cast v14, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 39
    .line 40
    iget-object v8, v14, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v12, v2, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->leafSet:Ljava/util/Set;

    .line 43
    .line 44
    check-cast v12, Ljava/lang/Iterable;

    .line 45
    .line 46
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    if-eqz v13, :cond_2

    .line 55
    .line 56
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    move-object v15, v13

    .line 61
    check-cast v15, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 62
    .line 63
    iget-object v15, v15, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->condition:Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 64
    .line 65
    if-eqz v15, :cond_1

    .line 66
    .line 67
    iget-object v15, v15, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->field:Lnet/thunderbird/feature/search/legacy/api/SearchField;

    .line 68
    .line 69
    :goto_1
    const/16 v16, 0x0

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    const/4 v15, 0x0

    .line 73
    goto :goto_1

    .line 74
    :goto_2
    sget-object v10, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->THREAD_ID:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 75
    .line 76
    if-ne v15, v10, :cond_0

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_2
    const/16 v16, 0x0

    .line 80
    .line 81
    move-object/from16 v13, v16

    .line 82
    .line 83
    :goto_3
    check-cast v13, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 84
    .line 85
    if-eqz v13, :cond_3

    .line 86
    .line 87
    iget-object v10, v13, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->condition:Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 88
    .line 89
    if-eqz v10, :cond_3

    .line 90
    .line 91
    iget-object v10, v10, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->value:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v10, :cond_3

    .line 94
    .line 95
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v12

    .line 99
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    goto :goto_4

    .line 104
    :cond_3
    move-object/from16 v10, v16

    .line 105
    .line 106
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    packed-switch v12, :pswitch_data_0

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 114
    .line 115
    .line 116
    return-object v16

    .line 117
    :pswitch_0
    const-string v12, "(attachment_count < 1)"

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :pswitch_1
    const-string v12, "(flagged != 1)"

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :pswitch_2
    const-string v12, "read"

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :pswitch_3
    const-string v12, "sender_list"

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :pswitch_4
    const-string v12, "subject COLLATE NOCASE"

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :pswitch_5
    const-string v12, "internal_date"

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :pswitch_6
    const-string v12, "date"

    .line 136
    .line 137
    :goto_5
    if-eqz v3, :cond_4

    .line 138
    .line 139
    const-string v13, " ASC"

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_4
    const-string v13, " DESC"

    .line 143
    .line 144
    :goto_6
    sget-object v15, Lnet/thunderbird/core/android/account/SortType;->SORT_DATE:Lnet/thunderbird/core/android/account/SortType;

    .line 145
    .line 146
    if-eq v4, v15, :cond_7

    .line 147
    .line 148
    sget-object v15, Lnet/thunderbird/core/android/account/SortType;->SORT_ARRIVAL:Lnet/thunderbird/core/android/account/SortType;

    .line 149
    .line 150
    if-ne v4, v15, :cond_5

    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_5
    iget-boolean v15, v1, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->sortDateAscending:Z

    .line 154
    .line 155
    if-eqz v15, :cond_6

    .line 156
    .line 157
    const-string v15, "date ASC, "

    .line 158
    .line 159
    goto :goto_8

    .line 160
    :cond_6
    const-string v15, "date DESC, "

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_7
    :goto_7
    const-string v15, ""

    .line 164
    .line 165
    :goto_8
    new-instance v11, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v12, ", "

    .line 177
    .line 178
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v12, "id DESC"

    .line 185
    .line 186
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v11

    .line 193
    const-string/jumbo v12, "use_compose_for_message_list_items"

    .line 194
    .line 195
    .line 196
    iget-object v13, v0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 197
    .line 198
    invoke-virtual {v13, v12}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    invoke-interface {v12}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    if-nez v12, :cond_9

    .line 207
    .line 208
    const-string v12, "enable_message_list_new_state"

    .line 209
    .line 210
    invoke-virtual {v13, v12}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    invoke-interface {v12}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    if-eqz v12, :cond_8

    .line 219
    .line 220
    goto :goto_9

    .line 221
    :cond_8
    move-object/from16 v17, v16

    .line 222
    .line 223
    goto :goto_a

    .line 224
    :cond_9
    :goto_9
    iget-object v12, v0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->contactLetterBitmapCreator:Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

    .line 225
    .line 226
    move-object/from16 v17, v12

    .line 227
    .line 228
    :goto_a
    new-instance v20, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 229
    .line 230
    const/16 v18, 0xf

    .line 231
    .line 232
    iget-object v13, v0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->messageHelper:Lcom/fsck/k9/helper/MessageHelper;

    .line 233
    .line 234
    iget-object v15, v0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 235
    .line 236
    iget-object v12, v0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 237
    .line 238
    move-object/from16 v16, v12

    .line 239
    .line 240
    move-object/from16 v12, v20

    .line 241
    .line 242
    invoke-direct/range {v12 .. v18}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 243
    .line 244
    .line 245
    iget-object v15, v0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 246
    .line 247
    if-eqz v10, :cond_b

    .line 248
    .line 249
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 250
    .line 251
    .line 252
    move-result-wide v13

    .line 253
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    iget-object v10, v15, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 257
    .line 258
    invoke-virtual {v10, v8}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Ljava/lang/String;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    sget-object v15, Lcom/fsck/k9/mailstore/MessageListCache;->Companion:Lcom/fsck/k9/mailstore/SendState$Companion;

    .line 263
    .line 264
    invoke-virtual {v15, v8}, Lcom/fsck/k9/mailstore/SendState$Companion;->getCache(Ljava/lang/String;)Lcom/fsck/k9/mailstore/MessageListCache;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    invoke-virtual {v8}, Lcom/fsck/k9/mailstore/MessageListCache;->isEmpty()Z

    .line 269
    .line 270
    .line 271
    move-result v15

    .line 272
    if-eqz v15, :cond_a

    .line 273
    .line 274
    move-object v15, v12

    .line 275
    goto :goto_b

    .line 276
    :cond_a
    new-instance v15, Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 277
    .line 278
    invoke-direct {v15, v9, v8, v12}, Lcom/fsck/k9/mailstore/LocalStore$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    :goto_b
    iget-object v8, v10, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 282
    .line 283
    iget-object v8, v8, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v8, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 286
    .line 287
    iget-object v8, v8, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveMessageListOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 288
    .line 289
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    iget-object v8, v8, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 293
    .line 294
    new-instance v9, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda0;

    .line 295
    .line 296
    invoke-direct {v9, v11, v13, v14, v15}, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;JLapp/k9mail/legacy/mailstore/MessageMapper;)V

    .line 297
    .line 298
    .line 299
    const/4 v10, 0x0

    .line 300
    invoke-virtual {v8, v10, v9}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v8

    .line 304
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    check-cast v8, Ljava/util/List;

    .line 308
    .line 309
    goto :goto_c

    .line 310
    :cond_b
    iget-boolean v9, v1, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->showingThreadedList:Z

    .line 311
    .line 312
    if-eqz v9, :cond_c

    .line 313
    .line 314
    invoke-static {v14, v1}, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->buildSelection(Lnet/thunderbird/core/android/account/LegacyAccount;Lcom/fsck/k9/ui/messagelist/MessageListConfig;)Lkotlin/Pair;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    iget-object v10, v9, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 319
    .line 320
    move-object/from16 v17, v10

    .line 321
    .line 322
    check-cast v17, Ljava/lang/String;

    .line 323
    .line 324
    iget-object v9, v9, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 325
    .line 326
    move-object/from16 v18, v9

    .line 327
    .line 328
    check-cast v18, [Ljava/lang/String;

    .line 329
    .line 330
    move-object/from16 v16, v8

    .line 331
    .line 332
    move-object/from16 v19, v11

    .line 333
    .line 334
    move-object/from16 v20, v12

    .line 335
    .line 336
    invoke-virtual/range {v15 .. v20}, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;->getThreadedMessages(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/legacy/mailstore/MessageMapper;)Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    goto :goto_c

    .line 341
    :cond_c
    move-object/from16 v16, v8

    .line 342
    .line 343
    move-object/from16 v19, v11

    .line 344
    .line 345
    move-object/from16 v20, v12

    .line 346
    .line 347
    invoke-static {v14, v1}, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->buildSelection(Lnet/thunderbird/core/android/account/LegacyAccount;Lcom/fsck/k9/ui/messagelist/MessageListConfig;)Lkotlin/Pair;

    .line 348
    .line 349
    .line 350
    move-result-object v8

    .line 351
    iget-object v9, v8, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 352
    .line 353
    move-object/from16 v17, v9

    .line 354
    .line 355
    check-cast v17, Ljava/lang/String;

    .line 356
    .line 357
    iget-object v8, v8, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 358
    .line 359
    move-object/from16 v18, v8

    .line 360
    .line 361
    check-cast v18, [Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual/range {v15 .. v20}, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;->getMessages(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/legacy/mailstore/MessageMapper;)Ljava/util/List;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    :goto_c
    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_0

    .line 371
    .line 372
    :cond_d
    const/16 v16, 0x0

    .line 373
    .line 374
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    const/4 v7, 0x3

    .line 379
    const/4 v8, 0x2

    .line 380
    const/4 v10, 0x1

    .line 381
    sget-object v11, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 382
    .line 383
    packed-switch v4, :pswitch_data_1

    .line 384
    .line 385
    .line 386
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 387
    .line 388
    .line 389
    return-object v16

    .line 390
    :pswitch_7
    if-nez v3, :cond_e

    .line 391
    .line 392
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;

    .line 393
    .line 394
    const/4 v4, 0x5

    .line 395
    invoke-direct {v3, v4}, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;-><init>(I)V

    .line 396
    .line 397
    .line 398
    goto :goto_d

    .line 399
    :cond_e
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;

    .line 400
    .line 401
    invoke-direct {v3, v10}, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;-><init>(I)V

    .line 402
    .line 403
    .line 404
    :goto_d
    invoke-static {v3, v1}, Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;->access$thenByDate(Ljava/util/Comparator;Lcom/fsck/k9/ui/messagelist/MessageListConfig;)Ljava/util/Comparator;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    goto/16 :goto_12

    .line 409
    .line 410
    :pswitch_8
    if-nez v3, :cond_f

    .line 411
    .line 412
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$5;

    .line 413
    .line 414
    invoke-direct {v3, v1, v8}, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$5;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListConfig;I)V

    .line 415
    .line 416
    .line 417
    goto :goto_e

    .line 418
    :cond_f
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$5;

    .line 419
    .line 420
    invoke-direct {v3, v1, v7}, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$5;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListConfig;I)V

    .line 421
    .line 422
    .line 423
    :goto_e
    invoke-static {v3, v1}, Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;->access$thenByDate(Ljava/util/Comparator;Lcom/fsck/k9/ui/messagelist/MessageListConfig;)Ljava/util/Comparator;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    goto :goto_12

    .line 428
    :pswitch_9
    if-eqz v3, :cond_10

    .line 429
    .line 430
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$5;

    .line 431
    .line 432
    const/4 v4, 0x0

    .line 433
    invoke-direct {v3, v1, v4}, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$5;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListConfig;I)V

    .line 434
    .line 435
    .line 436
    goto :goto_f

    .line 437
    :cond_10
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$5;

    .line 438
    .line 439
    invoke-direct {v3, v1, v10}, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$5;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListConfig;I)V

    .line 440
    .line 441
    .line 442
    :goto_f
    invoke-static {v3, v1}, Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;->access$thenByDate(Ljava/util/Comparator;Lcom/fsck/k9/ui/messagelist/MessageListConfig;)Ljava/util/Comparator;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    goto :goto_12

    .line 447
    :pswitch_a
    if-eqz v3, :cond_11

    .line 448
    .line 449
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;

    .line 453
    .line 454
    const/16 v4, 0x8

    .line 455
    .line 456
    invoke-direct {v3, v4}, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;-><init>(I)V

    .line 457
    .line 458
    .line 459
    goto :goto_10

    .line 460
    :cond_11
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 461
    .line 462
    .line 463
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;

    .line 464
    .line 465
    const/16 v4, 0x9

    .line 466
    .line 467
    invoke-direct {v3, v4}, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;-><init>(I)V

    .line 468
    .line 469
    .line 470
    :goto_10
    invoke-static {v3, v1}, Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;->access$thenByDate(Ljava/util/Comparator;Lcom/fsck/k9/ui/messagelist/MessageListConfig;)Ljava/util/Comparator;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    goto :goto_12

    .line 475
    :pswitch_b
    if-eqz v3, :cond_12

    .line 476
    .line 477
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;

    .line 481
    .line 482
    const/4 v4, 0x6

    .line 483
    invoke-direct {v3, v4}, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;-><init>(I)V

    .line 484
    .line 485
    .line 486
    goto :goto_11

    .line 487
    :cond_12
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;

    .line 491
    .line 492
    const/4 v4, 0x7

    .line 493
    invoke-direct {v3, v4}, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;-><init>(I)V

    .line 494
    .line 495
    .line 496
    :goto_11
    invoke-static {v3, v1}, Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;->access$thenByDate(Ljava/util/Comparator;Lcom/fsck/k9/ui/messagelist/MessageListConfig;)Ljava/util/Comparator;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    goto :goto_12

    .line 501
    :pswitch_c
    if-eqz v3, :cond_13

    .line 502
    .line 503
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;

    .line 504
    .line 505
    invoke-direct {v1, v7}, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;-><init>(I)V

    .line 506
    .line 507
    .line 508
    goto :goto_12

    .line 509
    :cond_13
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;

    .line 510
    .line 511
    invoke-direct {v1, v9}, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;-><init>(I)V

    .line 512
    .line 513
    .line 514
    goto :goto_12

    .line 515
    :pswitch_d
    if-eqz v3, :cond_14

    .line 516
    .line 517
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;

    .line 518
    .line 519
    const/4 v4, 0x0

    .line 520
    invoke-direct {v1, v4}, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;-><init>(I)V

    .line 521
    .line 522
    .line 523
    goto :goto_12

    .line 524
    :cond_14
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;

    .line 525
    .line 526
    invoke-direct {v1, v8}, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;-><init>(I)V

    .line 527
    .line 528
    .line 529
    :goto_12
    new-instance v3, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;

    .line 530
    .line 531
    invoke-direct {v3, v1, v8}, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;I)V

    .line 532
    .line 533
    .line 534
    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-virtual {v2}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getFolderIds()Ljava/util/ArrayList;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    if-ne v3, v10, :cond_15

    .line 547
    .line 548
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 549
    .line 550
    .line 551
    move-result v3

    .line 552
    if-ne v3, v10, :cond_15

    .line 553
    .line 554
    const/4 v4, 0x0

    .line 555
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 560
    .line 561
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    check-cast v2, Ljava/lang/Number;

    .line 566
    .line 567
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 568
    .line 569
    .line 570
    move-result-wide v5

    .line 571
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 572
    .line 573
    invoke-virtual {v0, v3}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstanceByLegacyAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 578
    .line 579
    invoke-direct {v2, v0, v5, v6}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 583
    .line 584
    .line 585
    iget v0, v2, Lcom/fsck/k9/mailstore/LocalFolder;->moreMessages:I

    .line 586
    .line 587
    if-eq v0, v8, :cond_16

    .line 588
    .line 589
    move v11, v10

    .line 590
    goto :goto_13

    .line 591
    :cond_15
    const/4 v4, 0x0

    .line 592
    :cond_16
    move v11, v4

    .line 593
    :goto_13
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListInfo;

    .line 594
    .line 595
    invoke-direct {v0, v1, v11}, Lcom/fsck/k9/ui/messagelist/MessageListInfo;-><init>(Ljava/util/List;Z)V

    .line 596
    .line 597
    .line 598
    return-object v0

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
