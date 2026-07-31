.class public final Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final toDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 90

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSensitiveDebugLoggingEnabled:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iget-object v3, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 11
    .line 12
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    new-instance v6, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 17
    .line 18
    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 19
    .line 20
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAvatar()Lnet/thunderbird/feature/account/storage/profile/AvatarDto;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-direct {v6, v1, v5, v7, v8}, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;-><init>(Lnet/thunderbird/feature/account/AccountId;Ljava/lang/String;ILnet/thunderbird/feature/account/storage/profile/AvatarDto;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentities()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v83

    .line 39
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getEmail()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDeletePolicy()Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOutgoingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOAuthState()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAlwaysBcc()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAutomaticCheckIntervalMinutes()I

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayCount()I

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifyNewMail()Z

    .line 72
    .line 73
    .line 74
    move-result v14

    .line 75
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getFolderNotifyNewMailMode()Lnet/thunderbird/core/android/account/FolderMode;

    .line 76
    .line 77
    .line 78
    move-result-object v15

    .line 79
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifySelfNewMail()Z

    .line 80
    .line 81
    .line 82
    move-result v16

    .line 83
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifyContactsMailOnly()Z

    .line 84
    .line 85
    .line 86
    move-result v17

    .line 87
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isIgnoreChatMessages()Z

    .line 88
    .line 89
    .line 90
    move-result v18

    .line 91
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getLegacyInboxFolder()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v19

    .line 95
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedDraftsFolder()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v20

    .line 99
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedSentFolder()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v21

    .line 103
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedTrashFolder()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v22

    .line 107
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedArchiveFolder()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v23

    .line 111
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedSpamFolder()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v24

    .line 115
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getInboxFolderId()Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v25

    .line 119
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDraftsFolderId()Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v26

    .line 123
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSentFolderId()Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object v27

    .line 127
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getTrashFolderId()Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v28

    .line 131
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getArchiveFolderId()Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v29

    .line 135
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSpamFolderId()Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v30

    .line 139
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDraftsFolderSelection()Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 140
    .line 141
    .line 142
    move-result-object v31

    .line 143
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSentFolderSelection()Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 144
    .line 145
    .line 146
    move-result-object v32

    .line 147
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getTrashFolderSelection()Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 148
    .line 149
    .line 150
    move-result-object v33

    .line 151
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getArchiveFolderSelection()Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 152
    .line 153
    .line 154
    move-result-object v34

    .line 155
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSpamFolderSelection()Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 156
    .line 157
    .line 158
    move-result-object v35

    .line 159
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedAutoExpandFolder()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v36

    .line 163
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAutoExpandFolderId()Ljava/lang/Long;

    .line 164
    .line 165
    .line 166
    move-result-object v37

    .line 167
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getFolderDisplayMode()Lnet/thunderbird/core/android/account/FolderMode;

    .line 168
    .line 169
    .line 170
    move-result-object v38

    .line 171
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getFolderSyncMode()Lnet/thunderbird/core/android/account/FolderMode;

    .line 172
    .line 173
    .line 174
    move-result-object v39

    .line 175
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getFolderPushMode()Lnet/thunderbird/core/android/account/FolderMode;

    .line 176
    .line 177
    .line 178
    move-result-object v40

    .line 179
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 180
    .line 181
    .line 182
    move-result v41

    .line 183
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifySync()Z

    .line 184
    .line 185
    .line 186
    move-result v42

    .line 187
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSortType()Lnet/thunderbird/core/android/account/SortType;

    .line 188
    .line 189
    .line 190
    move-result-object v43

    .line 191
    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->sortAscending:Ljava/util/LinkedHashMap;

    .line 192
    .line 193
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getShowPictures()Lnet/thunderbird/core/android/account/ShowPictures;

    .line 194
    .line 195
    .line 196
    move-result-object v45

    .line 197
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSignatureBeforeQuotedText()Z

    .line 198
    .line 199
    .line 200
    move-result v46

    .line 201
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getExpungePolicy()Lnet/thunderbird/core/android/account/Expunge;

    .line 202
    .line 203
    .line 204
    move-result-object v47

    .line 205
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMaxPushFolders()I

    .line 206
    .line 207
    .line 208
    move-result v48

    .line 209
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdleRefreshMinutes()I

    .line 210
    .line 211
    .line 212
    move-result v49

    .line 213
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->useCompression()Z

    .line 214
    .line 215
    .line 216
    move-result v50

    .line 217
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSendClientInfoEnabled()Z

    .line 218
    .line 219
    .line 220
    move-result v51

    .line 221
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSubscribedFoldersOnly()Z

    .line 222
    .line 223
    .line 224
    move-result v52

    .line 225
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMaximumPolledMessageAge()I

    .line 226
    .line 227
    .line 228
    move-result v53

    .line 229
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMaximumAutoDownloadMessageSize()I

    .line 230
    .line 231
    .line 232
    move-result v54

    .line 233
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMessageFormat()Lnet/thunderbird/core/android/account/MessageFormat;

    .line 234
    .line 235
    .line 236
    move-result-object v55

    .line 237
    monitor-enter v0

    .line 238
    monitor-exit v0

    .line 239
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isMessageReadReceipt()Z

    .line 240
    .line 241
    .line 242
    move-result v56

    .line 243
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getQuoteStyle()Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 244
    .line 245
    .line 246
    move-result-object v57

    .line 247
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getQuotePrefix()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v58

    .line 251
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isDefaultQuotedTextShown()Z

    .line 252
    .line 253
    .line 254
    move-result v59

    .line 255
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isReplyAfterQuote()Z

    .line 256
    .line 257
    .line 258
    move-result v60

    .line 259
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isStripSignature()Z

    .line 260
    .line 261
    .line 262
    move-result v61

    .line 263
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSyncRemoteDeletions()Z

    .line 264
    .line 265
    .line 266
    move-result v62

    .line 267
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpProvider()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v63

    .line 271
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpKey()J

    .line 272
    .line 273
    .line 274
    move-result-wide v64

    .line 275
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAutocryptPreferEncryptMutual()Z

    .line 276
    .line 277
    .line 278
    move-result v66

    .line 279
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isOpenPgpHideSignOnly()Z

    .line 280
    .line 281
    .line 282
    move-result v67

    .line 283
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isOpenPgpEncryptSubject()Z

    .line 284
    .line 285
    .line 286
    move-result v68

    .line 287
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isOpenPgpEncryptAllDrafts()Z

    .line 288
    .line 289
    .line 290
    move-result v69

    .line 291
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isMarkMessageAsReadOnView()Z

    .line 292
    .line 293
    .line 294
    move-result v70

    .line 295
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isMarkMessageAsReadOnDelete()Z

    .line 296
    .line 297
    .line 298
    move-result v71

    .line 299
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isAlwaysShowCcBcc()Z

    .line 300
    .line 301
    .line 302
    move-result v72

    .line 303
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isRemoteSearchFullText()Z

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getRemoteSearchNumResults()I

    .line 307
    .line 308
    .line 309
    move-result v73

    .line 310
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isUploadSentMessages()Z

    .line 311
    .line 312
    .line 313
    move-result v74

    .line 314
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getLastSyncTime()J

    .line 315
    .line 316
    .line 317
    move-result-wide v75

    .line 318
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getLastFolderListRefreshTime()J

    .line 319
    .line 320
    .line 321
    move-result-wide v77

    .line 322
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isFinishedSetup()Z

    .line 323
    .line 324
    .line 325
    move-result v79

    .line 326
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMessagesNotificationChannelVersion()I

    .line 327
    .line 328
    .line 329
    move-result v80

    .line 330
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isChangedVisibleLimits()Z

    .line 331
    .line 332
    .line 333
    move-result v81

    .line 334
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getLastSelectedFolderId()Ljava/lang/Long;

    .line 335
    .line 336
    .line 337
    move-result-object v82

    .line 338
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 339
    .line 340
    .line 341
    move-result-object v84

    .line 342
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSenderName()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v85

    .line 346
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSignatureUse()Z

    .line 347
    .line 348
    .line 349
    move-result v86

    .line 350
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSignature()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v87

    .line 354
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->shouldMigrateToOAuth()Z

    .line 355
    .line 356
    .line 357
    move-result v88

    .line 358
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->folderPathDelimiter()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v89

    .line 362
    move-object/from16 v44, v1

    .line 363
    .line 364
    new-instance v1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 365
    .line 366
    invoke-direct/range {v1 .. v89}, Lnet/thunderbird/core/android/account/LegacyAccount;-><init>(Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/account/AccountId;Ljava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;IIZLnet/thunderbird/core/android/account/FolderMode;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/String;Ljava/lang/Long;Lnet/thunderbird/core/android/account/FolderMode;Lnet/thunderbird/core/android/account/FolderMode;Lnet/thunderbird/core/android/account/FolderMode;IZLnet/thunderbird/core/android/account/SortType;Ljava/util/Map;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIZZZIILnet/thunderbird/core/android/account/MessageFormat;ZLnet/thunderbird/core/android/account/QuoteStyle;Ljava/lang/String;ZZZZLjava/lang/String;JZZZZZZZIZJJZIZLjava/lang/Long;Ljava/util/List;Lnet/thunderbird/feature/notification/NotificationSettings;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 367
    .line 368
    .line 369
    return-object v1
.end method

.method public final toDto(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 7
    .line 8
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isSensitiveDebugLoggingEnabled:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->identities:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setIdentities(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->email:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setEmail(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 30
    .line 31
    iget-object v1, v0, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->name:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setName(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v1, v0, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->color:I

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setChipColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, v0, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->avatar:Lnet/thunderbird/feature/account/storage/profile/AvatarDto;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAvatar(Lnet/thunderbird/feature/account/storage/profile/AvatarDto;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->deletePolicy:Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDeletePolicy(Lnet/thunderbird/core/android/account/DeletePolicy;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 52
    .line 53
    iput-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->internalIncomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 54
    .line 55
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 56
    .line 57
    iput-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->internalOutgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 58
    .line 59
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->oAuthState:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOAuthState(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->alwaysBcc:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAlwaysBcc(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->automaticCheckIntervalMinutes:I

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAutomaticCheckIntervalMinutes(I)V

    .line 72
    .line 73
    .line 74
    iget v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->displayCount:I

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDisplayCount(I)V

    .line 77
    .line 78
    .line 79
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifyNewMail:Z

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifyNewMail(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->folderNotifyNewMailMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setFolderNotifyNewMailMode(Lnet/thunderbird/core/android/account/FolderMode;)V

    .line 87
    .line 88
    .line 89
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifySelfNewMail:Z

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifySelfNewMail(Z)V

    .line 92
    .line 93
    .line 94
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifyContactsMailOnly:Z

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifyContactsMailOnly(Z)V

    .line 97
    .line 98
    .line 99
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isIgnoreChatMessages:Z

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setIgnoreChatMessages(Z)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->legacyInboxFolder:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setLegacyInboxFolder(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedDraftsFolder:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedDraftsFolder(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSentFolder:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedSentFolder(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedTrashFolder:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedTrashFolder(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedArchiveFolder:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedArchiveFolder(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSpamFolder:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedSpamFolder(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->inboxFolderId:Ljava/lang/Long;

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setInboxFolderId(Ljava/lang/Long;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderId:Ljava/lang/Long;

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDraftsFolderId(Ljava/lang/Long;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderId:Ljava/lang/Long;

    .line 145
    .line 146
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSentFolderId(Ljava/lang/Long;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderId:Ljava/lang/Long;

    .line 150
    .line 151
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setTrashFolderId(Ljava/lang/Long;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderId:Ljava/lang/Long;

    .line 155
    .line 156
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setArchiveFolderId(Ljava/lang/Long;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    .line 160
    .line 161
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSpamFolderId(Ljava/lang/Long;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    iput-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->draftsFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 170
    .line 171
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    iput-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->sentFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 177
    .line 178
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    iput-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->trashFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 184
    .line 185
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    iput-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->archiveFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 191
    .line 192
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    iput-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->spamFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 198
    .line 199
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedAutoExpandFolder:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedAutoExpandFolder(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->autoExpandFolderId:Ljava/lang/Long;

    .line 205
    .line 206
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAutoExpandFolderId(Ljava/lang/Long;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->folderDisplayMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 210
    .line 211
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setFolderDisplayMode(Lnet/thunderbird/core/android/account/FolderMode;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->folderSyncMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 215
    .line 216
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setFolderSyncMode(Lnet/thunderbird/core/android/account/FolderMode;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->folderPushMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 220
    .line 221
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setFolderPushMode(Lnet/thunderbird/core/android/account/FolderMode;)V

    .line 222
    .line 223
    .line 224
    iget v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->accountNumber:I

    .line 225
    .line 226
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAccountNumber(I)V

    .line 227
    .line 228
    .line 229
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifySync:Z

    .line 230
    .line 231
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifySync(Z)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 235
    .line 236
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSortType(Lnet/thunderbird/core/android/account/SortType;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->sortAscending:Ljava/util/Map;

    .line 240
    .line 241
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iput-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->sortAscending:Ljava/util/LinkedHashMap;

    .line 246
    .line 247
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->showPictures:Lnet/thunderbird/core/android/account/ShowPictures;

    .line 248
    .line 249
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setShowPictures(Lnet/thunderbird/core/android/account/ShowPictures;)V

    .line 250
    .line 251
    .line 252
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isSignatureBeforeQuotedText:Z

    .line 253
    .line 254
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSignatureBeforeQuotedText(Z)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->expungePolicy:Lnet/thunderbird/core/android/account/Expunge;

    .line 258
    .line 259
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setExpungePolicy(Lnet/thunderbird/core/android/account/Expunge;)V

    .line 260
    .line 261
    .line 262
    iget v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->maxPushFolders:I

    .line 263
    .line 264
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMaxPushFolders(I)V

    .line 265
    .line 266
    .line 267
    iget v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->idleRefreshMinutes:I

    .line 268
    .line 269
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setIdleRefreshMinutes(I)V

    .line 270
    .line 271
    .line 272
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->useCompression:Z

    .line 273
    .line 274
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setUseCompression(Z)V

    .line 275
    .line 276
    .line 277
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isSendClientInfoEnabled:Z

    .line 278
    .line 279
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSendClientInfoEnabled(Z)V

    .line 280
    .line 281
    .line 282
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isSubscribedFoldersOnly:Z

    .line 283
    .line 284
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSubscribedFoldersOnly(Z)V

    .line 285
    .line 286
    .line 287
    iget v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumPolledMessageAge:I

    .line 288
    .line 289
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMaximumPolledMessageAge(I)V

    .line 290
    .line 291
    .line 292
    iget v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumAutoDownloadMessageSize:I

    .line 293
    .line 294
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMaximumAutoDownloadMessageSize(I)V

    .line 295
    .line 296
    .line 297
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->messageFormat:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 298
    .line 299
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMessageFormat(Lnet/thunderbird/core/android/account/MessageFormat;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMessageFormatAuto()V

    .line 303
    .line 304
    .line 305
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isMessageReadReceipt:Z

    .line 306
    .line 307
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMessageReadReceipt(Z)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->quoteStyle:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 311
    .line 312
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setQuoteStyle(Lnet/thunderbird/core/android/account/QuoteStyle;)V

    .line 313
    .line 314
    .line 315
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->quotePrefix:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setQuotePrefix(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isDefaultQuotedTextShown:Z

    .line 321
    .line 322
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDefaultQuotedTextShown(Z)V

    .line 323
    .line 324
    .line 325
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isReplyAfterQuote:Z

    .line 326
    .line 327
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setReplyAfterQuote(Z)V

    .line 328
    .line 329
    .line 330
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isStripSignature:Z

    .line 331
    .line 332
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setStripSignature(Z)V

    .line 333
    .line 334
    .line 335
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isSyncRemoteDeletions:Z

    .line 336
    .line 337
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSyncRemoteDeletions(Z)V

    .line 338
    .line 339
    .line 340
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->openPgpProvider:Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpProvider(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    iget-wide v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->openPgpKey:J

    .line 346
    .line 347
    invoke-virtual {p0, v0, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpKey(J)V

    .line 348
    .line 349
    .line 350
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->autocryptPreferEncryptMutual:Z

    .line 351
    .line 352
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAutocryptPreferEncryptMutual(Z)V

    .line 353
    .line 354
    .line 355
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpHideSignOnly:Z

    .line 356
    .line 357
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpHideSignOnly(Z)V

    .line 358
    .line 359
    .line 360
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpEncryptSubject:Z

    .line 361
    .line 362
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpEncryptSubject(Z)V

    .line 363
    .line 364
    .line 365
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpEncryptAllDrafts:Z

    .line 366
    .line 367
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpEncryptAllDrafts(Z)V

    .line 368
    .line 369
    .line 370
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnView:Z

    .line 371
    .line 372
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMarkMessageAsReadOnView(Z)V

    .line 373
    .line 374
    .line 375
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnDelete:Z

    .line 376
    .line 377
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMarkMessageAsReadOnDelete(Z)V

    .line 378
    .line 379
    .line 380
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isAlwaysShowCcBcc:Z

    .line 381
    .line 382
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAlwaysShowCcBcc(Z)V

    .line 383
    .line 384
    .line 385
    monitor-enter p0

    .line 386
    monitor-exit p0

    .line 387
    iget v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->remoteSearchNumResults:I

    .line 388
    .line 389
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setRemoteSearchNumResults(I)V

    .line 390
    .line 391
    .line 392
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isUploadSentMessages:Z

    .line 393
    .line 394
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setUploadSentMessages(Z)V

    .line 395
    .line 396
    .line 397
    iget-wide v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->lastSyncTime:J

    .line 398
    .line 399
    invoke-virtual {p0, v0, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setLastSyncTime(J)V

    .line 400
    .line 401
    .line 402
    iget-wide v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->lastFolderListRefreshTime:J

    .line 403
    .line 404
    invoke-virtual {p0, v0, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setLastFolderListRefreshTime(J)V

    .line 405
    .line 406
    .line 407
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isFinishedSetup:Z

    .line 408
    .line 409
    iput-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isFinishedSetup:Z

    .line 410
    .line 411
    iget v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->messagesNotificationChannelVersion:I

    .line 412
    .line 413
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMessagesNotificationChannelVersion(I)V

    .line 414
    .line 415
    .line 416
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isChangedVisibleLimits:Z

    .line 417
    .line 418
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setChangedVisibleLimits(Z)V

    .line 419
    .line 420
    .line 421
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->lastSelectedFolderId:Ljava/lang/Long;

    .line 422
    .line 423
    iput-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->lastSelectedFolderId:Ljava/lang/Long;

    .line 424
    .line 425
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->notificationSettings:Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 426
    .line 427
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    iput-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->notificationSettings:Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 431
    .line 432
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->senderName:Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSenderName(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->signatureUse:Z

    .line 438
    .line 439
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSignatureUse(Z)V

    .line 440
    .line 441
    .line 442
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->signature:Ljava/lang/String;

    .line 443
    .line 444
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSignature(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    iget-boolean v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->shouldMigrateToOAuth:Z

    .line 448
    .line 449
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setShouldMigrateToOAuth(Z)V

    .line 450
    .line 451
    .line 452
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->folderPathDelimiter:Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setFolderPathDelimiter(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    return-object p0
.end method
