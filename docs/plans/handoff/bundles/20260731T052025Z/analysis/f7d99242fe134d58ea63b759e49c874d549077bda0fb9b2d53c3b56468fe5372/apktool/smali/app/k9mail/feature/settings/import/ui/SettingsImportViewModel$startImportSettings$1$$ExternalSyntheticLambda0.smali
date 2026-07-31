.class public final synthetic Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

.field public final synthetic f$2:Lcom/fsck/k9/preferences/ImportResults;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(ZLapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;Lcom/fsck/k9/preferences/ImportResults;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1$$ExternalSyntheticLambda0;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1$$ExternalSyntheticLambda0;->f$1:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1$$ExternalSyntheticLambda0;->f$2:Lcom/fsck/k9/preferences/ImportResults;

    .line 9
    .line 10
    iput-boolean p4, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1$$ExternalSyntheticLambda0;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 6
    .line 7
    sget-object v2, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->NOT_SELECTED:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 8
    .line 9
    sget-object v3, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->IMPORT_FAILURE:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 10
    .line 11
    sget-object v4, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->IMPORT_SUCCESS:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 12
    .line 13
    iget-boolean v5, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1$$ExternalSyntheticLambda0;->f$0:Z

    .line 14
    .line 15
    iget-object v6, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1$$ExternalSyntheticLambda0;->f$2:Lcom/fsck/k9/preferences/ImportResults;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    if-eqz v5, :cond_2

    .line 19
    .line 20
    iget-boolean v5, v6, Lcom/fsck/k9/preferences/ImportResults;->globalSettings:Z

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    move-object v5, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean v5, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1$$ExternalSyntheticLambda0;->f$3:Z

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    move-object v5, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v5, v2

    .line 33
    :goto_0
    invoke-virtual {v1, v7, v5}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->setSettingsListState(ILapp/k9mail/feature/settings/import/ui/ImportStatus;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v5, v6, Lcom/fsck/k9/preferences/ImportResults;->erroneousAccounts:Ljava/util/List;

    .line 37
    .line 38
    new-instance v8, Ljava/util/ArrayList;

    .line 39
    .line 40
    const/16 v9, 0xa

    .line 41
    .line 42
    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-eqz v9, :cond_3

    .line 58
    .line 59
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Lcom/fsck/k9/preferences/AccountDescription;

    .line 64
    .line 65
    iget-object v9, v9, Lcom/fsck/k9/preferences/AccountDescription;->uuid:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    new-instance v5, Ljava/util/HashSet;

    .line 72
    .line 73
    const/16 v9, 0xc

    .line 74
    .line 75
    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    invoke-static {v9}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    invoke-direct {v5, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-static {v8, v5}, Lkotlin/collections/CollectionsKt;->toCollection(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 87
    .line 88
    .line 89
    iget-object v8, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_d

    .line 100
    .line 101
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    add-int/lit8 v10, v7, 0x1

    .line 106
    .line 107
    if-ltz v7, :cond_c

    .line 108
    .line 109
    check-cast v9, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 110
    .line 111
    instance-of v12, v9, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;

    .line 112
    .line 113
    if-eqz v12, :cond_b

    .line 114
    .line 115
    check-cast v9, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;

    .line 116
    .line 117
    iget v12, v9, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;->accountIndex:I

    .line 118
    .line 119
    iget-object v13, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1$$ExternalSyntheticLambda0;->f$1:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 120
    .line 121
    iget-object v14, v13, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountsMap:Ljava/util/LinkedHashMap;

    .line 122
    .line 123
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    invoke-virtual {v14, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    check-cast v14, Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v5, v14}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v15

    .line 137
    if-eqz v15, :cond_4

    .line 138
    .line 139
    invoke-virtual {v1, v7, v3}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->setSettingsListState(ILapp/k9mail/feature/settings/import/ui/ImportStatus;)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_5

    .line 143
    .line 144
    :cond_4
    iget-object v15, v6, Lcom/fsck/k9/preferences/ImportResults;->importedAccounts:Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v16

    .line 154
    if-eqz v16, :cond_6

    .line 155
    .line 156
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v16

    .line 160
    const/16 p1, 0x0

    .line 161
    .line 162
    move-object/from16 v11, v16

    .line 163
    .line 164
    check-cast v11, Lcom/fsck/k9/preferences/AccountDescriptionPair;

    .line 165
    .line 166
    iget-object v11, v11, Lcom/fsck/k9/preferences/AccountDescriptionPair;->original:Lcom/fsck/k9/preferences/AccountDescription;

    .line 167
    .line 168
    iget-object v11, v11, Lcom/fsck/k9/preferences/AccountDescription;->uuid:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    if-eqz v11, :cond_5

    .line 175
    .line 176
    move-object/from16 v11, v16

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_6
    const/16 p1, 0x0

    .line 180
    .line 181
    move-object/from16 v11, p1

    .line 182
    .line 183
    :goto_3
    check-cast v11, Lcom/fsck/k9/preferences/AccountDescriptionPair;

    .line 184
    .line 185
    if-eqz v11, :cond_a

    .line 186
    .line 187
    iget-boolean v14, v11, Lcom/fsck/k9/preferences/AccountDescriptionPair;->outgoingPasswordNeeded:Z

    .line 188
    .line 189
    iget-boolean v15, v11, Lcom/fsck/k9/preferences/AccountDescriptionPair;->incomingPasswordNeeded:Z

    .line 190
    .line 191
    iget-object v0, v11, Lcom/fsck/k9/preferences/AccountDescriptionPair;->imported:Lcom/fsck/k9/preferences/AccountDescription;

    .line 192
    .line 193
    move-object/from16 v16, v3

    .line 194
    .line 195
    iget-object v3, v13, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountsMap:Ljava/util/LinkedHashMap;

    .line 196
    .line 197
    move-object/from16 v17, v5

    .line 198
    .line 199
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    move-object/from16 v18, v6

    .line 204
    .line 205
    iget-object v6, v0, Lcom/fsck/k9/preferences/AccountDescription;->uuid:Ljava/lang/String;

    .line 206
    .line 207
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    iget-object v0, v0, Lcom/fsck/k9/preferences/AccountDescription;->name:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    iput-object v0, v9, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;->displayName:Ljava/lang/String;

    .line 216
    .line 217
    iget-boolean v0, v11, Lcom/fsck/k9/preferences/AccountDescriptionPair;->authorizationNeeded:Z

    .line 218
    .line 219
    if-eqz v0, :cond_7

    .line 220
    .line 221
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->IMPORT_SUCCESS_AUTHORIZATION_REQUIRED:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 222
    .line 223
    invoke-virtual {v1, v7, v0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->setSettingsListState(ILapp/k9mail/feature/settings/import/ui/ImportStatus;)V

    .line 224
    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_7
    if-nez v15, :cond_9

    .line 228
    .line 229
    if-eqz v14, :cond_8

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_8
    invoke-virtual {v1, v7, v4}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->setSettingsListState(ILapp/k9mail/feature/settings/import/ui/ImportStatus;)V

    .line 233
    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_9
    :goto_4
    iget-object v0, v13, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountStateMap:Ljava/util/LinkedHashMap;

    .line 237
    .line 238
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    new-instance v5, Lapp/k9mail/feature/settings/import/ui/AccountState;

    .line 243
    .line 244
    iget-object v6, v11, Lcom/fsck/k9/preferences/AccountDescriptionPair;->incomingServerName:Ljava/lang/String;

    .line 245
    .line 246
    iget-object v9, v11, Lcom/fsck/k9/preferences/AccountDescriptionPair;->outgoingServerName:Ljava/lang/String;

    .line 247
    .line 248
    invoke-direct {v5, v6, v9, v15, v14}, Lapp/k9mail/feature/settings/import/ui/AccountState;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 249
    .line 250
    .line 251
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->IMPORT_SUCCESS_PASSWORD_REQUIRED:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 255
    .line 256
    invoke-virtual {v1, v7, v0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->setSettingsListState(ILapp/k9mail/feature/settings/import/ui/ImportStatus;)V

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_a
    move-object/from16 v16, v3

    .line 261
    .line 262
    move-object/from16 v17, v5

    .line 263
    .line 264
    move-object/from16 v18, v6

    .line 265
    .line 266
    invoke-virtual {v1, v7, v2}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->setSettingsListState(ILapp/k9mail/feature/settings/import/ui/ImportStatus;)V

    .line 267
    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_b
    :goto_5
    move-object/from16 v16, v3

    .line 271
    .line 272
    move-object/from16 v17, v5

    .line 273
    .line 274
    move-object/from16 v18, v6

    .line 275
    .line 276
    :goto_6
    move-object/from16 v0, p0

    .line 277
    .line 278
    move v7, v10

    .line 279
    move-object/from16 v3, v16

    .line 280
    .line 281
    move-object/from16 v5, v17

    .line 282
    .line 283
    move-object/from16 v6, v18

    .line 284
    .line 285
    goto/16 :goto_2

    .line 286
    .line 287
    :cond_c
    const/16 p1, 0x0

    .line 288
    .line 289
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 290
    .line 291
    .line 292
    throw p1

    .line 293
    :cond_d
    invoke-virtual {v1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->updateCloseButtonAndImportStatusText()V

    .line 294
    .line 295
    .line 296
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 297
    .line 298
    return-object v0
.end method
