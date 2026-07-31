.class public final synthetic Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagesource/MessageHeadersFragment;Lcom/google/android/material/textview/MaterialTextView;)V
    .locals 0

    .line 1
    const/16 p1, 0xf

    .line 2
    .line 3
    iput p1, p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V
    .locals 0

    .line 12
    const/16 p2, 0x1b

    iput p2, p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const-string v2, "fragmentListener"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    iget-object p0, p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p0, Lkotlinx/serialization/ContextualSerializer;

    .line 18
    .line 19
    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lkotlinx/serialization/ContextualSerializer;->fallbackSerializer:Lkotlinx/serialization/KSerializer;

    .line 25
    .line 26
    check-cast p0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 27
    .line 28
    invoke-virtual {p0}, Lkotlinx/serialization/PolymorphicSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getAnnotations()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    :cond_0
    if-nez v5, :cond_1

    .line 39
    .line 40
    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 41
    .line 42
    :cond_1
    iput-object v5, p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->annotations:Ljava/util/List;

    .line 43
    .line 44
    return-object v6

    .line 45
    :pswitch_0
    check-cast p0, Lkotlinx/datetime/internal/format/OptionalFormatStructure;

    .line 46
    .line 47
    iget-object p0, p0, Lkotlinx/datetime/internal/format/OptionalFormatStructure;->fields:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lkotlinx/datetime/internal/format/OptionalFormatStructure$PropertyWithDefault;

    .line 64
    .line 65
    iget-object v1, v0, Lkotlinx/datetime/internal/format/OptionalFormatStructure$PropertyWithDefault;->accessor:Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 66
    .line 67
    iget-object v0, v0, Lkotlinx/datetime/internal/format/OptionalFormatStructure$PropertyWithDefault;->defaultValue:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {v1, p1, v0}, Lkotlinx/datetime/internal/format/PropertyAccessor;->trySetWithoutReassigning(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    return-object v6

    .line 74
    :pswitch_1
    check-cast p0, Lkotlinx/coroutines/sync/MutexImpl;

    .line 75
    .line 76
    check-cast p1, Ljava/lang/Throwable;

    .line 77
    .line 78
    invoke-virtual {p0, v5}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-object v6

    .line 82
    :pswitch_2
    check-cast p0, Lkotlin/text/MatcherMatchResult$groups$1;

    .line 83
    .line 84
    check-cast p1, Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {p0, p1}, Lkotlin/text/MatcherMatchResult$groups$1;->get(I)Lkotlin/text/MatchGroup;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :pswitch_3
    check-cast p0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :pswitch_4
    check-cast p0, Lkotlin/collections/AbstractCollection;

    .line 106
    .line 107
    if-ne p1, p0, :cond_3

    .line 108
    .line 109
    const-string p0, "(this Collection)"

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    :goto_1
    return-object p0

    .line 117
    :pswitch_5
    check-cast p0, Lcom/skydoves/landscapist/coil3/CoilImageState;

    .line 118
    .line 119
    check-cast p1, Lcom/skydoves/landscapist/coil3/CoilImageState;

    .line 120
    .line 121
    invoke-static {p0, p1}, Lcom/skydoves/landscapist/coil3/CoilImageKt;->$r8$lambda$xZqpc94FlrSwSJEte_zek5NE_i4(Lcom/skydoves/landscapist/coil3/CoilImageState;Lcom/skydoves/landscapist/coil3/CoilImageState;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :pswitch_6
    check-cast p0, Lcom/skydoves/landscapist/ImageOptions;

    .line 127
    .line 128
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/skydoves/landscapist/ImageOptions;->getContentDescription()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const/4 p0, 0x5

    .line 141
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 142
    .line 143
    .line 144
    return-object v6

    .line 145
    :pswitch_7
    check-cast p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 146
    .line 147
    check-cast p1, Lcom/fsck/k9/ui/settings/export/SettingsListItem$Account;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->accountsMap:Ljava/util/Map;

    .line 153
    .line 154
    iget p1, p1, Lcom/fsck/k9/ui/settings/export/SettingsListItem$Account;->accountNumber:I

    .line 155
    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Ljava/lang/String;

    .line 165
    .line 166
    if-eqz p0, :cond_4

    .line 167
    .line 168
    move-object v5, p0

    .line 169
    goto :goto_2

    .line 170
    :cond_4
    const-string p0, "Unknown account number: "

    .line 171
    .line 172
    invoke-static {p0, p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    :goto_2
    return-object v5

    .line 176
    :pswitch_8
    check-cast p0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;

    .line 177
    .line 178
    check-cast p1, Lcom/fsck/k9/ui/settings/export/Action;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    instance-of v0, p1, Lcom/fsck/k9/ui/settings/export/Action$PickDocument;

    .line 184
    .line 185
    const-string v1, "application/octet-stream"

    .line 186
    .line 187
    if-eqz v0, :cond_5

    .line 188
    .line 189
    check-cast p1, Lcom/fsck/k9/ui/settings/export/Action$PickDocument;

    .line 190
    .line 191
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/export/Action$PickDocument;->fileNameSuggestion:Ljava/lang/String;

    .line 192
    .line 193
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->createDocumentLauncher:Landroidx/fragment/app/Fragment$10;

    .line 194
    .line 195
    new-instance v0, Lapp/k9mail/core/android/common/activity/CreateDocumentResultContract$Input;

    .line 196
    .line 197
    invoke-direct {v0, p1, v1}, Lapp/k9mail/core/android/common/activity/CreateDocumentResultContract$Input;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_5
    instance-of v0, p1, Lcom/fsck/k9/ui/settings/export/Action$ShareDocument;

    .line 205
    .line 206
    if-eqz v0, :cond_6

    .line 207
    .line 208
    check-cast p1, Lcom/fsck/k9/ui/settings/export/Action$ShareDocument;

    .line 209
    .line 210
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/export/Action$ShareDocument;->contentUri:Landroid/net/Uri;

    .line 211
    .line 212
    new-instance v0, Landroid/content/Intent;

    .line 213
    .line 214
    const-string v2, "android.intent.action.SEND"

    .line 215
    .line 216
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    .line 221
    .line 222
    const-string v1, "android.intent.extra.STREAM"

    .line 223
    .line 224
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    .line 229
    .line 230
    invoke-static {v0, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 235
    .line 236
    .line 237
    :goto_3
    move-object v5, v6

    .line 238
    goto :goto_4

    .line 239
    :cond_6
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 240
    .line 241
    .line 242
    :goto_4
    return-object v5

    .line 243
    :pswitch_9
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 244
    .line 245
    check-cast p1, Lcom/fsck/k9/ui/settings/account/RemoteFolderInfo;

    .line 246
    .line 247
    sget v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->$r8$clinit:I

    .line 248
    .line 249
    if-eqz p1, :cond_9

    .line 250
    .line 251
    iget-object v0, p1, Lcom/fsck/k9/ui/settings/account/RemoteFolderInfo;->folders:Ljava/util/List;

    .line 252
    .line 253
    const-string v1, "auto_select_folder"

    .line 254
    .line 255
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    instance-of v2, v1, Lcom/fsck/k9/ui/settings/account/FolderListPreference;

    .line 260
    .line 261
    if-eqz v2, :cond_7

    .line 262
    .line 263
    move-object v5, v1

    .line 264
    check-cast v5, Lcom/fsck/k9/ui/settings/account/FolderListPreference;

    .line 265
    .line 266
    :cond_7
    if-nez v5, :cond_8

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_8
    iget-object v1, v5, Lcom/fsck/k9/ui/settings/account/FolderListPreference;->noFolderSelectedName:Landroid/text/SpannableString;

    .line 270
    .line 271
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v5, v0}, Lcom/fsck/k9/ui/settings/account/FolderListPreference;->getFolderDisplayNames(Ljava/util/List;)Ljava/util/ArrayList;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 284
    .line 285
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    check-cast v1, [Ljava/lang/CharSequence;

    .line 290
    .line 291
    iput-object v1, v5, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 292
    .line 293
    const-string v1, "MANUAL|"

    .line 294
    .line 295
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-static {v0}, Lcom/fsck/k9/ui/settings/account/FolderListPreference;->getFolderValues(Ljava/util/List;)Ljava/util/ArrayList;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    new-array v1, v3, [Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    check-cast v0, [Ljava/lang/CharSequence;

    .line 314
    .line 315
    iput-object v0, v5, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 316
    .line 317
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 318
    .line 319
    .line 320
    :goto_5
    const-string v0, "archive_folder"

    .line 321
    .line 322
    sget-object v1, Lnet/thunderbird/feature/mail/folder/api/FolderType;->ARCHIVE:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 323
    .line 324
    invoke-virtual {p0, v0, p1, v1}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->setFolders(Ljava/lang/String;Lcom/fsck/k9/ui/settings/account/RemoteFolderInfo;Lnet/thunderbird/feature/mail/folder/api/FolderType;)V

    .line 325
    .line 326
    .line 327
    const-string v0, "drafts_folder"

    .line 328
    .line 329
    sget-object v1, Lnet/thunderbird/feature/mail/folder/api/FolderType;->DRAFTS:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 330
    .line 331
    invoke-virtual {p0, v0, p1, v1}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->setFolders(Ljava/lang/String;Lcom/fsck/k9/ui/settings/account/RemoteFolderInfo;Lnet/thunderbird/feature/mail/folder/api/FolderType;)V

    .line 332
    .line 333
    .line 334
    const-string v0, "sent_folder"

    .line 335
    .line 336
    sget-object v1, Lnet/thunderbird/feature/mail/folder/api/FolderType;->SENT:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 337
    .line 338
    invoke-virtual {p0, v0, p1, v1}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->setFolders(Ljava/lang/String;Lcom/fsck/k9/ui/settings/account/RemoteFolderInfo;Lnet/thunderbird/feature/mail/folder/api/FolderType;)V

    .line 339
    .line 340
    .line 341
    const-string v0, "spam_folder"

    .line 342
    .line 343
    sget-object v1, Lnet/thunderbird/feature/mail/folder/api/FolderType;->SPAM:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 344
    .line 345
    invoke-virtual {p0, v0, p1, v1}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->setFolders(Ljava/lang/String;Lcom/fsck/k9/ui/settings/account/RemoteFolderInfo;Lnet/thunderbird/feature/mail/folder/api/FolderType;)V

    .line 346
    .line 347
    .line 348
    const-string v0, "trash_folder"

    .line 349
    .line 350
    sget-object v1, Lnet/thunderbird/feature/mail/folder/api/FolderType;->TRASH:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 351
    .line 352
    invoke-virtual {p0, v0, p1, v1}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->setFolders(Ljava/lang/String;Lcom/fsck/k9/ui/settings/account/RemoteFolderInfo;Lnet/thunderbird/feature/mail/folder/api/FolderType;)V

    .line 353
    .line 354
    .line 355
    :cond_9
    return-object v6

    .line 356
    :pswitch_a
    check-cast p0, Lnet/thunderbird/feature/notification/NotificationLight;

    .line 357
    .line 358
    check-cast p1, Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 359
    .line 360
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    const/16 v0, 0xb

    .line 364
    .line 365
    invoke-static {p1, v5, p0, v5, v0}, Lnet/thunderbird/feature/notification/NotificationSettings;->copy$default(Lnet/thunderbird/feature/notification/NotificationSettings;Ljava/lang/String;Lnet/thunderbird/feature/notification/NotificationLight;Lnet/thunderbird/feature/notification/NotificationVibration;I)Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    return-object p0

    .line 370
    :pswitch_b
    check-cast p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 371
    .line 372
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListInfo;

    .line 373
    .line 374
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListInfo;->messageListItems:Ljava/util/List;

    .line 375
    .line 376
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-nez v0, :cond_18

    .line 381
    .line 382
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-eqz v0, :cond_a

    .line 387
    .line 388
    goto/16 :goto_9

    .line 389
    .line 390
    :cond_a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-eqz v1, :cond_18

    .line 399
    .line 400
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 405
    .line 406
    invoke-virtual {v1}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    iget-object v7, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 411
    .line 412
    const-string v8, "messageReference"

    .line 413
    .line 414
    if-eqz v7, :cond_17

    .line 415
    .line 416
    invoke-virtual {v1, v7}, Lapp/k9mail/legacy/message/controller/MessageReference;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_b

    .line 421
    .line 422
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 423
    .line 424
    const-string/jumbo v1, "viewPager"

    .line 425
    .line 426
    .line 427
    if-eqz v0, :cond_16

    .line 428
    .line 429
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->adapter:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;

    .line 434
    .line 435
    const-string v7, "adapter"

    .line 436
    .line 437
    if-eqz v2, :cond_15

    .line 438
    .line 439
    new-instance v9, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;

    .line 440
    .line 441
    iget-object v10, v2, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->messageList:Ljava/util/List;

    .line 442
    .line 443
    invoke-direct {v9, v10, p1, v4}, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 444
    .line 445
    .line 446
    invoke-static {v9}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    iput-object p1, v2, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->messageList:Ljava/util/List;

    .line 451
    .line 452
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 453
    .line 454
    .line 455
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 456
    .line 457
    if-eqz p1, :cond_14

    .line 458
    .line 459
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    if-nez p1, :cond_e

    .line 464
    .line 465
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 466
    .line 467
    if-eqz p1, :cond_d

    .line 468
    .line 469
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->adapter:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;

    .line 470
    .line 471
    if-eqz v2, :cond_c

    .line 472
    .line 473
    invoke-virtual {p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 474
    .line 475
    .line 476
    goto :goto_6

    .line 477
    :cond_c
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    throw v5

    .line 481
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    throw v5

    .line 485
    :cond_e
    :goto_6
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->adapter:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;

    .line 486
    .line 487
    if-eqz p1, :cond_13

    .line 488
    .line 489
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 490
    .line 491
    if-eqz v2, :cond_12

    .line 492
    .line 493
    iget-object p1, p1, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->messageList:Ljava/util/List;

    .line 494
    .line 495
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    move v4, v3

    .line 500
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 501
    .line 502
    .line 503
    move-result v7

    .line 504
    if-eqz v7, :cond_10

    .line 505
    .line 506
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v7

    .line 510
    check-cast v7, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 511
    .line 512
    invoke-virtual {v7}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 513
    .line 514
    .line 515
    move-result-object v7

    .line 516
    invoke-virtual {v7, v2}, Lapp/k9mail/legacy/message/controller/MessageReference;->equals(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v7

    .line 520
    if-eqz v7, :cond_f

    .line 521
    .line 522
    goto :goto_8

    .line 523
    :cond_f
    add-int/lit8 v4, v4, 0x1

    .line 524
    .line 525
    goto :goto_7

    .line 526
    :cond_10
    const/4 v4, -0x1

    .line 527
    :goto_8
    if-eq v4, v0, :cond_19

    .line 528
    .line 529
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 530
    .line 531
    if-eqz p0, :cond_11

    .line 532
    .line 533
    invoke-virtual {p0, v4, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 534
    .line 535
    .line 536
    goto :goto_a

    .line 537
    :cond_11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    throw v5

    .line 541
    :cond_12
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    throw v5

    .line 545
    :cond_13
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    throw v5

    .line 549
    :cond_14
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    throw v5

    .line 553
    :cond_15
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    throw v5

    .line 557
    :cond_16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw v5

    .line 561
    :cond_17
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    throw v5

    .line 565
    :cond_18
    :goto_9
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 566
    .line 567
    if-eqz p0, :cond_1a

    .line 568
    .line 569
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->returnToMessageList()V

    .line 570
    .line 571
    .line 572
    :cond_19
    :goto_a
    return-object v6

    .line 573
    :cond_1a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    throw v5

    .line 577
    :pswitch_c
    check-cast p0, Lcom/fsck/k9/mail/Address;

    .line 578
    .line 579
    check-cast p1, Lcom/fsck/k9/mail/Address;

    .line 580
    .line 581
    if-eq p1, p0, :cond_1b

    .line 582
    .line 583
    move v3, v4

    .line 584
    :cond_1b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 585
    .line 586
    .line 587
    move-result-object p0

    .line 588
    return-object p0

    .line 589
    :pswitch_d
    check-cast p0, Lcom/google/android/material/textview/MaterialTextView;

    .line 590
    .line 591
    check-cast p1, Ljava/util/List;

    .line 592
    .line 593
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 600
    .line 601
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 602
    .line 603
    .line 604
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 605
    .line 606
    .line 607
    move-result-object p1

    .line 608
    move v1, v4

    .line 609
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 610
    .line 611
    .line 612
    move-result v2

    .line 613
    if-eqz v2, :cond_1e

    .line 614
    .line 615
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    check-cast v2, Lcom/fsck/k9/mail/Header;

    .line 620
    .line 621
    iget-object v7, v2, Lcom/fsck/k9/mail/Header;->name:Ljava/lang/String;

    .line 622
    .line 623
    iget-object v2, v2, Lcom/fsck/k9/mail/Header;->value:Ljava/lang/String;

    .line 624
    .line 625
    if-nez v1, :cond_1c

    .line 626
    .line 627
    const-string v8, "\n"

    .line 628
    .line 629
    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 630
    .line 631
    .line 632
    goto :goto_c

    .line 633
    :cond_1c
    move v1, v3

    .line 634
    :goto_c
    new-instance v8, Landroid/text/style/StyleSpan;

    .line 635
    .line 636
    invoke-direct {v8, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 637
    .line 638
    .line 639
    new-instance v9, Landroid/text/SpannableString;

    .line 640
    .line 641
    const-string v10, ": "

    .line 642
    .line 643
    invoke-static {v7, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v7

    .line 647
    invoke-direct {v9, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    .line 651
    .line 652
    .line 653
    move-result v7

    .line 654
    invoke-virtual {v9, v8, v3, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-static {v2}, Lcom/fsck/k9/mail/internet/JisSupport;->unfold(Ljava/lang/String;)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    if-nez v2, :cond_1d

    .line 665
    .line 666
    move-object v2, v5

    .line 667
    goto :goto_d

    .line 668
    :cond_1d
    invoke-static {v2, v5}, Lcom/fsck/k9/mail/internet/JisSupport;->decodeEncodedWords(Ljava/lang/String;Lcom/fsck/k9/mail/internet/MimeMessage;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    :goto_d
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 673
    .line 674
    .line 675
    goto :goto_b

    .line 676
    :cond_1e
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    .line 678
    .line 679
    return-object v6

    .line 680
    :pswitch_e
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 681
    .line 682
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListInfo;

    .line 683
    .line 684
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageListLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 685
    .line 686
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    return-object v6

    .line 690
    :pswitch_f
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 691
    .line 692
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListInfo;

    .line 693
    .line 694
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 695
    .line 696
    .line 697
    iget-object v0, p1, Lcom/fsck/k9/ui/messagelist/MessageListInfo;->messageListItems:Ljava/util/List;

    .line 698
    .line 699
    iget-boolean v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isThreadDisplay:Z

    .line 700
    .line 701
    if-eqz v4, :cond_20

    .line 702
    .line 703
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 704
    .line 705
    .line 706
    move-result v4

    .line 707
    if-eqz v4, :cond_20

    .line 708
    .line 709
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 710
    .line 711
    if-eqz p0, :cond_1f

    .line 712
    .line 713
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 714
    .line 715
    .line 716
    move-result-object p0

    .line 717
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 718
    .line 719
    .line 720
    goto/16 :goto_11

    .line 721
    .line 722
    :cond_1f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    throw v5

    .line 726
    :cond_20
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isThreadDisplay:Z

    .line 727
    .line 728
    if-eqz v2, :cond_24

    .line 729
    .line 730
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    check-cast v2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 735
    .line 736
    iget-object v2, v2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->subject:Ljava/lang/String;

    .line 737
    .line 738
    if-eqz v2, :cond_21

    .line 739
    .line 740
    invoke-static {v2}, Lcom/fsck/k9/helper/Utility;->stripSubject(Ljava/lang/String;)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    goto :goto_e

    .line 745
    :cond_21
    move-object v2, v5

    .line 746
    :goto_e
    if-eqz v2, :cond_22

    .line 747
    .line 748
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 749
    .line 750
    .line 751
    move-result v4

    .line 752
    if-nez v4, :cond_23

    .line 753
    .line 754
    :cond_22
    const v2, 0x7f120315

    .line 755
    .line 756
    .line 757
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    :cond_23
    iput-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->threadTitle:Ljava/lang/String;

    .line 762
    .line 763
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->updateTitle()V

    .line 764
    .line 765
    .line 766
    :cond_24
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->rememberedSelected:Ljava/util/Set;

    .line 767
    .line 768
    if-eqz v2, :cond_25

    .line 769
    .line 770
    iput-object v5, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->rememberedSelected:Ljava/util/Set;

    .line 771
    .line 772
    :cond_25
    new-instance v2, Ljava/util/ArrayList;

    .line 773
    .line 774
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 775
    .line 776
    .line 777
    move-result v1

    .line 778
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 779
    .line 780
    .line 781
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 786
    .line 787
    .line 788
    move-result v1

    .line 789
    if-eqz v1, :cond_26

    .line 790
    .line 791
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 796
    .line 797
    iget-object v1, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 798
    .line 799
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    goto :goto_f

    .line 803
    :cond_26
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    check-cast v0, Ljava/lang/Iterable;

    .line 808
    .line 809
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 814
    .line 815
    .line 816
    move-result v1

    .line 817
    if-eqz v1, :cond_27

    .line 818
    .line 819
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 824
    .line 825
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 826
    .line 827
    .line 828
    move-result-object v2

    .line 829
    iget-object v1, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 830
    .line 831
    invoke-virtual {v2, v1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->checkAuthenticationProblem(Lnet/thunderbird/feature/account/AccountId;)V

    .line 832
    .line 833
    .line 834
    goto :goto_10

    .line 835
    :cond_27
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->resetActionMode$1()V

    .line 836
    .line 837
    .line 838
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    if-eqz v0, :cond_28

    .line 843
    .line 844
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 845
    .line 846
    .line 847
    :cond_28
    iput-boolean v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->initialMessageListLoad:Z

    .line 848
    .line 849
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 850
    .line 851
    if-eqz v0, :cond_29

    .line 852
    .line 853
    iget-boolean p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListInfo;->hasMoreMessages:Z

    .line 854
    .line 855
    iput-boolean p1, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->moreMessages:Z

    .line 856
    .line 857
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->updateFooterText$1()V

    .line 858
    .line 859
    .line 860
    :cond_29
    :goto_11
    return-object v6

    .line 861
    :pswitch_10
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 862
    .line 863
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    .line 864
    .line 865
    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 866
    .line 867
    const-wide v2, 0xffffffffL

    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    and-long/2addr v0, v2

    .line 873
    long-to-int p1, v0

    .line 874
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 875
    .line 876
    .line 877
    move-result v0

    .line 878
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 879
    .line 880
    .line 881
    move-result v1

    .line 882
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 883
    .line 884
    .line 885
    move-result v2

    .line 886
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 887
    .line 888
    .line 889
    return-object v6

    .line 890
    :pswitch_11
    check-cast p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;

    .line 891
    .line 892
    check-cast p1, Ljava/util/List;

    .line 893
    .line 894
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 895
    .line 896
    .line 897
    new-instance v0, Ljava/util/ArrayList;

    .line 898
    .line 899
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 900
    .line 901
    .line 902
    move-result v1

    .line 903
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 904
    .line 905
    .line 906
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 907
    .line 908
    .line 909
    move-result-object p1

    .line 910
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 911
    .line 912
    .line 913
    move-result v1

    .line 914
    if-eqz v1, :cond_2a

    .line 915
    .line 916
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    check-cast v1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 921
    .line 922
    iget-object v1, v1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 923
    .line 924
    iget-wide v2, v1, Lnet/thunderbird/feature/mail/folder/api/Folder;->id:J

    .line 925
    .line 926
    iget-object v7, p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->folderIconProvider$delegate:Lkotlin/Lazy;

    .line 927
    .line 928
    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v7

    .line 932
    check-cast v7, Lapp/k9mail/legacy/ui/folder/FolderIconProvider;

    .line 933
    .line 934
    iget-object v8, v1, Lnet/thunderbird/feature/mail/folder/api/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 935
    .line 936
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 937
    .line 938
    .line 939
    invoke-static {v8}, Lapp/k9mail/legacy/ui/folder/FolderIconProvider;->getFolderIcon(Lnet/thunderbird/feature/mail/folder/api/FolderType;)I

    .line 940
    .line 941
    .line 942
    move-result v7

    .line 943
    iget-object v8, p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->folderNameFormatter$delegate:Lkotlin/Lazy;

    .line 944
    .line 945
    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v8

    .line 949
    check-cast v8, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 950
    .line 951
    invoke-virtual {v8, v1}, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;->displayName(Lnet/thunderbird/feature/mail/folder/api/Folder;)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v1

    .line 955
    new-instance v8, Lcom/fsck/k9/ui/managefolders/FolderListItem;

    .line 956
    .line 957
    invoke-direct {v8, v7, v2, v3, v1}, Lcom/fsck/k9/ui/managefolders/FolderListItem;-><init>(IJLjava/lang/String;)V

    .line 958
    .line 959
    .line 960
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    .line 962
    .line 963
    goto :goto_12

    .line 964
    :cond_2a
    iget-object p0, p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 965
    .line 966
    if-eqz p0, :cond_2b

    .line 967
    .line 968
    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->intercept(Ljava/util/List;)Ljava/util/ArrayList;

    .line 969
    .line 970
    .line 971
    move-result-object p1

    .line 972
    invoke-virtual {p0, p1, v4}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->setInternal(Ljava/util/List;Z)V

    .line 973
    .line 974
    .line 975
    return-object v6

    .line 976
    :cond_2b
    const-string p0, "itemAdapter"

    .line 977
    .line 978
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    throw v5

    .line 982
    :pswitch_12
    check-cast p0, Lcom/fsck/k9/ui/base/BaseActivity;

    .line 983
    .line 984
    check-cast p1, Ljava/util/Locale;

    .line 985
    .line 986
    iget-object v0, p0, Lcom/fsck/k9/ui/base/BaseActivity;->overrideLocaleOnLaunch:Ljava/util/Locale;

    .line 987
    .line 988
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 989
    .line 990
    .line 991
    move-result p1

    .line 992
    if-nez p1, :cond_2c

    .line 993
    .line 994
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    .line 995
    .line 996
    .line 997
    :cond_2c
    return-object v6

    .line 998
    :pswitch_13
    check-cast p0, Ljava/lang/Long;

    .line 999
    .line 1000
    check-cast p1, Ljava/lang/Long;

    .line 1001
    .line 1002
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 1003
    .line 1004
    .line 1005
    move-result-wide v0

    .line 1006
    if-nez p0, :cond_2d

    .line 1007
    .line 1008
    goto :goto_13

    .line 1009
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 1010
    .line 1011
    .line 1012
    move-result-wide p0

    .line 1013
    cmp-long p0, v0, p0

    .line 1014
    .line 1015
    if-nez p0, :cond_2e

    .line 1016
    .line 1017
    move v3, v4

    .line 1018
    :cond_2e
    :goto_13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1019
    .line 1020
    .line 1021
    move-result-object p0

    .line 1022
    return-object p0

    .line 1023
    :pswitch_14
    check-cast p0, Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 1024
    .line 1025
    check-cast p1, Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 1026
    .line 1027
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1028
    .line 1029
    .line 1030
    move-result-wide v10

    .line 1031
    iget-object v0, p0, Lcom/fsck/k9/preferences/K9StorageEditor;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 1032
    .line 1033
    new-instance v1, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 1034
    .line 1035
    const/16 v2, 0x14

    .line 1036
    .line 1037
    invoke-direct {v1, v2}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1038
    .line 1039
    .line 1040
    invoke-interface {v0, v5, v5, v1}, Lnet/thunderbird/core/logging/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 1041
    .line 1042
    .line 1043
    new-instance v1, Ljava/util/HashMap;

    .line 1044
    .line 1045
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1046
    .line 1047
    .line 1048
    iget-object p1, p1, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->values:Ljava/util/HashMap;

    .line 1049
    .line 1050
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1051
    .line 1052
    invoke-direct {v2, p0, p1, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 1053
    .line 1054
    .line 1055
    iget-object p0, p0, Lcom/fsck/k9/preferences/K9StorageEditor;->storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 1056
    .line 1057
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1058
    .line 1059
    .line 1060
    new-instance v3, Ljava/util/HashMap;

    .line 1061
    .line 1062
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    .line 1066
    .line 1067
    .line 1068
    move-result-object p0

    .line 1069
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1070
    .line 1071
    .line 1072
    new-instance p1, Lorg/slf4j/event/EventRecodingLogger;

    .line 1073
    .line 1074
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 1075
    .line 1076
    .line 1077
    iput-object v3, p1, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/Object;

    .line 1078
    .line 1079
    const-string v4, "INSERT INTO preferences_storage (primkey, value) VALUES (?, ?)"

    .line 1080
    .line 1081
    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v4

    .line 1085
    iput-object v4, p1, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 1086
    .line 1087
    const-string v4, "DELETE FROM preferences_storage WHERE primkey = ?"

    .line 1088
    .line 1089
    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v4

    .line 1093
    iput-object v4, p1, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 1094
    .line 1095
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v2, p1}, Lcom/google/zxing/BinaryBitmap;->persist(Lorg/slf4j/event/EventRecodingLogger;)V

    .line 1099
    .line 1100
    .line 1101
    iget-object v2, p1, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 1102
    .line 1103
    check-cast v2, Landroid/database/sqlite/SQLiteStatement;

    .line 1104
    .line 1105
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1106
    .line 1107
    .line 1108
    iget-object p1, p1, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 1109
    .line 1110
    check-cast p1, Landroid/database/sqlite/SQLiteStatement;

    .line 1111
    .line 1112
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1125
    .line 1126
    .line 1127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1128
    .line 1129
    .line 1130
    move-result-wide v8

    .line 1131
    new-instance v6, Lcom/fsck/k9/preferences/K9StorageEditor$$ExternalSyntheticLambda3;

    .line 1132
    .line 1133
    const/4 v7, 0x0

    .line 1134
    invoke-direct/range {v6 .. v11}, Lcom/fsck/k9/preferences/K9StorageEditor$$ExternalSyntheticLambda3;-><init>(IJJ)V

    .line 1135
    .line 1136
    .line 1137
    invoke-interface {v0, v5, v5, v6}, Lnet/thunderbird/core/logging/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 1138
    .line 1139
    .line 1140
    new-instance p0, Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 1141
    .line 1142
    invoke-direct {p0, v1, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;-><init>(Ljava/util/HashMap;Lnet/thunderbird/core/logging/Logger;)V

    .line 1143
    .line 1144
    .line 1145
    return-object p0

    .line 1146
    :catchall_0
    move-exception v0

    .line 1147
    move-object p1, v0

    .line 1148
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1152
    .line 1153
    .line 1154
    throw p1

    .line 1155
    :pswitch_15
    check-cast p0, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 1156
    .line 1157
    check-cast p1, Ljava/util/List;

    .line 1158
    .line 1159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1160
    .line 1161
    .line 1162
    invoke-static {p0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1163
    .line 1164
    .line 1165
    move-result-object p0

    .line 1166
    return-object p0

    .line 1167
    :pswitch_16
    check-cast p0, Lcom/fsck/k9/message/html/DisplayHtml;

    .line 1168
    .line 1169
    check-cast p1, Lnet/thunderbird/feature/mail/message/reader/api/css/CssStyleProvider$Factory;

    .line 1170
    .line 1171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1172
    .line 1173
    .line 1174
    iget-object p0, p0, Lcom/fsck/k9/message/html/DisplayHtml;->htmlSettings:Lnet/thunderbird/core/common/mail/html/HtmlSettings;

    .line 1175
    .line 1176
    invoke-interface {p1, p0}, Lnet/thunderbird/feature/mail/message/reader/api/css/CssStyleProvider$Factory;->create(Lnet/thunderbird/core/common/mail/html/HtmlSettings;)Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 1177
    .line 1178
    .line 1179
    move-result-object p0

    .line 1180
    iget p1, p0, Lcom/fsck/k9/mailstore/LocalStore$8;->$r8$classId:I

    .line 1181
    .line 1182
    packed-switch p1, :pswitch_data_1

    .line 1183
    .line 1184
    .line 1185
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 1186
    .line 1187
    goto :goto_14

    .line 1188
    :pswitch_17
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 1189
    .line 1190
    goto :goto_14

    .line 1191
    :pswitch_18
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 1192
    .line 1193
    goto :goto_14

    .line 1194
    :pswitch_19
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 1195
    .line 1196
    :goto_14
    return-object p0

    .line 1197
    :pswitch_1a
    check-cast p0, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 1198
    .line 1199
    check-cast p1, Lcom/fsck/k9/mail/Message$RecipientType;

    .line 1200
    .line 1201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 1205
    .line 1206
    .line 1207
    move-result-object p0

    .line 1208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1209
    .line 1210
    .line 1211
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 1212
    .line 1213
    .line 1214
    move-result-object p0

    .line 1215
    return-object p0

    .line 1216
    :pswitch_1b
    check-cast p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;

    .line 1217
    .line 1218
    check-cast p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 1219
    .line 1220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1221
    .line 1222
    .line 1223
    iget-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 1224
    .line 1225
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->senderName:Ljava/lang/String;

    .line 1226
    .line 1227
    const-string v1, ""

    .line 1228
    .line 1229
    if-nez v0, :cond_2f

    .line 1230
    .line 1231
    move-object v6, v1

    .line 1232
    goto :goto_15

    .line 1233
    :cond_2f
    move-object v6, v0

    .line 1234
    :goto_15
    iget-object v7, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->email:Ljava/lang/String;

    .line 1235
    .line 1236
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->alwaysBcc:Ljava/lang/String;

    .line 1237
    .line 1238
    if-nez v0, :cond_30

    .line 1239
    .line 1240
    move-object v8, v1

    .line 1241
    goto :goto_16

    .line 1242
    :cond_30
    move-object v8, v0

    .line 1243
    :goto_16
    iget-boolean v9, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->signatureUse:Z

    .line 1244
    .line 1245
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->signature:Ljava/lang/String;

    .line 1246
    .line 1247
    if-nez v0, :cond_31

    .line 1248
    .line 1249
    move-object v10, v1

    .line 1250
    goto :goto_17

    .line 1251
    :cond_31
    move-object v10, v0

    .line 1252
    :goto_17
    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->signatureLocations:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 1253
    .line 1254
    iget-boolean p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isSignatureBeforeQuotedText:Z

    .line 1255
    .line 1256
    iget-object p0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 1257
    .line 1258
    if-eqz p1, :cond_32

    .line 1259
    .line 1260
    new-instance p1, Lkotlin/Pair;

    .line 1261
    .line 1262
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v0

    .line 1266
    const v1, 0x7f120151

    .line 1267
    .line 1268
    .line 1269
    check-cast p0, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 1270
    .line 1271
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object p0

    .line 1275
    invoke-direct {p1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1276
    .line 1277
    .line 1278
    :goto_18
    move-object v12, p1

    .line 1279
    goto :goto_19

    .line 1280
    :cond_32
    new-instance p1, Lkotlin/Pair;

    .line 1281
    .line 1282
    const/4 v0, 0x2

    .line 1283
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v0

    .line 1287
    const v1, 0x7f120150

    .line 1288
    .line 1289
    .line 1290
    check-cast p0, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 1291
    .line 1292
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 1293
    .line 1294
    .line 1295
    move-result-object p0

    .line 1296
    invoke-direct {p1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1297
    .line 1298
    .line 1299
    goto :goto_18

    .line 1300
    :goto_19
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1301
    .line 1302
    .line 1303
    new-instance v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 1304
    .line 1305
    invoke-direct/range {v5 .. v12}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;Lkotlin/Pair;)V

    .line 1306
    .line 1307
    .line 1308
    return-object v5

    .line 1309
    :pswitch_1c
    check-cast p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;

    .line 1310
    .line 1311
    check-cast p1, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 1312
    .line 1313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1314
    .line 1315
    .line 1316
    invoke-interface {p1}, Lnet/thunderbird/feature/notification/api/content/Notification;->getAccountUuid()Ljava/lang/String;

    .line 1317
    .line 1318
    .line 1319
    move-result-object p1

    .line 1320
    if-eqz p1, :cond_33

    .line 1321
    .line 1322
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;->accountIds:Ljava/util/Set;

    .line 1323
    .line 1324
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1325
    .line 1326
    .line 1327
    move-result p0

    .line 1328
    if-eqz p0, :cond_33

    .line 1329
    .line 1330
    move v3, v4

    .line 1331
    :cond_33
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1332
    .line 1333
    .line 1334
    move-result-object p0

    .line 1335
    return-object p0

    .line 1336
    :pswitch_1d
    check-cast p0, Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 1337
    .line 1338
    check-cast p1, Ljava/lang/String;

    .line 1339
    .line 1340
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 1341
    .line 1342
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1343
    .line 1344
    .line 1345
    const-string v0, "unified_account"

    .line 1346
    .line 1347
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1348
    .line 1349
    .line 1350
    move-result v0

    .line 1351
    if-eqz v0, :cond_34

    .line 1352
    .line 1353
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->openUnifiedFolders()V

    .line 1354
    .line 1355
    .line 1356
    goto :goto_1b

    .line 1357
    :cond_34
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getAccountManager$1()Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v0

    .line 1361
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 1362
    .line 1363
    invoke-virtual {v0, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1364
    .line 1365
    .line 1366
    move-result-object p1

    .line 1367
    if-nez p1, :cond_35

    .line 1368
    .line 1369
    goto :goto_1b

    .line 1370
    :cond_35
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->defaultFolderProvider$delegate$1:Lkotlin/Lazy;

    .line 1371
    .line 1372
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v0

    .line 1376
    check-cast v0, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 1377
    .line 1378
    invoke-virtual {v0, p1}, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;->getDefaultFolder(Lnet/thunderbird/core/android/account/LegacyAccountDto;)J

    .line 1379
    .line 1380
    .line 1381
    move-result-wide v0

    .line 1382
    new-instance v2, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 1383
    .line 1384
    invoke-direct {v2}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v2, v0, v1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAllowedFolder(J)V

    .line 1388
    .line 1389
    .line 1390
    iget-object v4, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 1391
    .line 1392
    invoke-virtual {v2, v4}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAutoExpandFolderId()Ljava/lang/Long;

    .line 1396
    .line 1397
    .line 1398
    move-result-object p1

    .line 1399
    if-nez p1, :cond_36

    .line 1400
    .line 1401
    goto :goto_1a

    .line 1402
    :cond_36
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 1403
    .line 1404
    .line 1405
    move-result-wide v4

    .line 1406
    cmp-long p1, v0, v4

    .line 1407
    .line 1408
    if-nez p1, :cond_37

    .line 1409
    .line 1410
    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/MessageHomeActivity;->performSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)V

    .line 1411
    .line 1412
    .line 1413
    goto :goto_1b

    .line 1414
    :cond_37
    :goto_1a
    sget-object p1, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 1415
    .line 1416
    invoke-static {p0, v2, v3}, Lcom/fsck/k9/activity/MessageHomeActivity$Companion;->actionDisplaySearch$default(Landroid/content/Context;Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Z)V

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->initializeFolderDrawer()V

    .line 1420
    .line 1421
    .line 1422
    :goto_1b
    return-object v6

    .line 1423
    :pswitch_1e
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 1424
    .line 1425
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 1426
    .line 1427
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1428
    .line 1429
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 1430
    .line 1431
    invoke-static {p0, p1}, Lorg/minidns/util/Base64;->SentFolderNotFoundNotification(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1432
    .line 1433
    .line 1434
    move-result-object p0

    .line 1435
    return-object p0

    .line 1436
    :pswitch_1f
    check-cast p0, Lkotlin/collections/AbstractMap;

    .line 1437
    .line 1438
    check-cast p1, Ljava/util/Map$Entry;

    .line 1439
    .line 1440
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1441
    .line 1442
    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1444
    .line 1445
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1446
    .line 1447
    .line 1448
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v1

    .line 1452
    const-string v2, "(this Map)"

    .line 1453
    .line 1454
    if-ne v1, p0, :cond_38

    .line 1455
    .line 1456
    move-object v1, v2

    .line 1457
    goto :goto_1c

    .line 1458
    :cond_38
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v1

    .line 1462
    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    .line 1464
    .line 1465
    const/16 v1, 0x3d

    .line 1466
    .line 1467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1468
    .line 1469
    .line 1470
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1471
    .line 1472
    .line 1473
    move-result-object p1

    .line 1474
    if-ne p1, p0, :cond_39

    .line 1475
    .line 1476
    goto :goto_1d

    .line 1477
    :cond_39
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v2

    .line 1481
    :goto_1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1485
    .line 1486
    .line 1487
    move-result-object p0

    .line 1488
    return-object p0

    .line 1489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch
.end method
