.class public final synthetic Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    iget-object p0, p0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 13
    .line 14
    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->typeParametersDescriptors:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 15
    .line 16
    invoke-static {p0, v0}, Lkotlinx/serialization/internal/TuplesKt;->hashCodeImpl(Lkotlinx/serialization/descriptors/SerialDescriptor;[Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    check-cast p0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 26
    .line 27
    const-string v0, "kotlinx.serialization.Polymorphic"

    .line 28
    .line 29
    sget-object v1, Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;->INSTANCE:Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;

    .line 30
    .line 31
    new-array v2, v4, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 32
    .line 33
    new-instance v4, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {v4, v3, p0}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1, v2, v4}, Lokhttp3/Handshake$Companion;->buildSerialDescriptor(Ljava/lang/String;Lkotlin/ranges/RangesKt;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object p0, p0, Lkotlinx/serialization/PolymorphicSerializer;->baseClass:Lkotlin/reflect/KClass;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v1, Lkotlinx/serialization/descriptors/ContextDescriptor;

    .line 48
    .line 49
    invoke-direct {v1, v0, p0}, Lkotlinx/serialization/descriptors/ContextDescriptor;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptorImpl;Lkotlin/reflect/KClass;)V

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :pswitch_1
    check-cast p0, Lkotlinx/datetime/internal/format/parser/PlainStringParserOperation;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "Unexpected end of input: yet to parse \'"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lkotlinx/datetime/internal/format/parser/PlainStringParserOperation;->string:Ljava/lang/String;

    .line 63
    .line 64
    const/16 v1, 0x27

    .line 65
    .line 66
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_2
    check-cast p0, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;

    .line 72
    .line 73
    invoke-virtual {p0}, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;->getWhatThisExpects()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string v0, "Unexpected end of input: yet to parse "

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :pswitch_3
    check-cast p0, [Ljava/lang/Object;

    .line 85
    .line 86
    new-instance v0, Lkotlin/UIntArray$Iterator;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lkotlin/UIntArray$Iterator;-><init>([Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-object v0

    .line 92
    :pswitch_4
    check-cast p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->key:Landroidx/compose/runtime/MutableState;

    .line 95
    .line 96
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :pswitch_5
    check-cast p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;

    .line 102
    .line 103
    iget-object p0, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->key:Landroidx/compose/runtime/MutableState;

    .line 104
    .line 105
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :pswitch_6
    check-cast p0, Lcoil3/request/ImageRequest;

    .line 111
    .line 112
    invoke-static {p0}, Lcom/skydoves/landscapist/coil3/CoilImageKt;->$r8$lambda$4s6vmUTlO_eEW_jd4LqBKvFGF0A(Lcoil3/request/ImageRequest;)Lcoil3/request/ImageRequest;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :pswitch_7
    check-cast p0, Lcom/skydoves/landscapist/DrawablePainter;

    .line 118
    .line 119
    new-instance v0, Lcom/skydoves/landscapist/DrawablePainter$callback$2$1;

    .line 120
    .line 121
    invoke-direct {v0, v4, p0}, Lcom/skydoves/landscapist/DrawablePainter$callback$2$1;-><init>(ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-object v0

    .line 125
    :pswitch_8
    check-cast p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 126
    .line 127
    sget v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->$r8$clinit:I

    .line 128
    .line 129
    const-string v0, "global_preferences"

    .line 130
    .line 131
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 136
    .line 137
    const-string v1, "font_size"

    .line 138
    .line 139
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    check-cast p0, Landroidx/preference/PreferenceScreen;

    .line 144
    .line 145
    if-eqz v0, :cond_0

    .line 146
    .line 147
    if-eqz p0, :cond_0

    .line 148
    .line 149
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 150
    .line 151
    .line 152
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 153
    .line 154
    return-object p0

    .line 155
    :pswitch_9
    check-cast p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 156
    .line 157
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->attachmentListBottomSheetState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 158
    .line 159
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    move-object v1, p0

    .line 164
    check-cast v1, Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 165
    .line 166
    sget-object v1, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->EMPTY:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    .line 167
    .line 168
    invoke-virtual {v0, p0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    if-eqz p0, :cond_1

    .line 173
    .line 174
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 175
    .line 176
    return-object p0

    .line 177
    :pswitch_a
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 178
    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    new-array v0, v3, [Ljava/lang/Object;

    .line 184
    .line 185
    aput-object p0, v0, v4

    .line 186
    .line 187
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    return-object p0

    .line 192
    :pswitch_b
    check-cast p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;

    .line 193
    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    new-array v0, v3, [Ljava/lang/Object;

    .line 203
    .line 204
    aput-object p0, v0, v4

    .line 205
    .line 206
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    return-object p0

    .line 211
    :pswitch_c
    check-cast p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;

    .line 212
    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    new-array v0, v3, [Ljava/lang/Object;

    .line 222
    .line 223
    aput-object p0, v0, v4

    .line 224
    .line 225
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    return-object p0

    .line 230
    :pswitch_d
    check-cast p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 231
    .line 232
    sget v0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->$r8$clinit:I

    .line 233
    .line 234
    new-array v0, v2, [Ljava/lang/Object;

    .line 235
    .line 236
    aput-object p0, v0, v4

    .line 237
    .line 238
    aput-object p0, v0, v3

    .line 239
    .line 240
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    return-object p0

    .line 245
    :pswitch_e
    check-cast p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;

    .line 246
    .line 247
    sget v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->$r8$clinit:I

    .line 248
    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    new-array v0, v3, [Ljava/lang/Object;

    .line 254
    .line 255
    aput-object p0, v0, v4

    .line 256
    .line 257
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    return-object p0

    .line 262
    :pswitch_f
    check-cast p0, Lcom/fsck/k9/notification/PushNotificationManager;

    .line 263
    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    const-string p0, "Failed to post updated notification for 1"

    .line 268
    .line 269
    return-object p0

    .line 270
    :pswitch_10
    check-cast p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;

    .line 271
    .line 272
    iget-object v0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->value:Ljava/lang/Long;

    .line 273
    .line 274
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->expiresAt:Lkotlin/time/Instant;

    .line 275
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    const-string v2, "getOutboxFolderId: Found Outbox folder with id = "

    .line 279
    .line 280
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v0, " in cache. Cache expires on "

    .line 287
    .line 288
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    return-object p0

    .line 299
    :pswitch_11
    check-cast p0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 300
    .line 301
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast p0, Lnet/thunderbird/feature/account/AccountId;

    .line 304
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v1, "Push not supported for account "

    .line 308
    .line 309
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string p0, ". Disabling push."

    .line 316
    .line 317
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    return-object p0

    .line 325
    :pswitch_12
    check-cast p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 326
    .line 327
    iget-object p0, p0, Lnet/thunderbird/core/common/exception/MessagingException;->message:Ljava/lang/String;

    .line 328
    .line 329
    return-object p0

    .line 330
    :pswitch_13
    check-cast p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;

    .line 331
    .line 332
    const-string v0, "Starting ImapFolderPusher thread for %s / %s"

    .line 333
    .line 334
    iget-object v5, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->accountName:Ljava/lang/String;

    .line 335
    .line 336
    iget-object v6, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->folderServerId:Ljava/lang/String;

    .line 337
    .line 338
    new-array v7, v2, [Ljava/lang/Object;

    .line 339
    .line 340
    aput-object v5, v7, v4

    .line 341
    .line 342
    aput-object v6, v7, v3

    .line 343
    .line 344
    invoke-static {v0, v7}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->powerManager:Lcom/fsck/k9/power/AndroidPowerManager;

    .line 348
    .line 349
    iget-object v5, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->accountName:Ljava/lang/String;

    .line 350
    .line 351
    iget-object v6, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->folderServerId:Ljava/lang/String;

    .line 352
    .line 353
    new-instance v7, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    const-string v8, "ImapFolderPusher-"

    .line 356
    .line 357
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v5, "-"

    .line 364
    .line 365
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    new-instance v8, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;

    .line 379
    .line 380
    invoke-direct {v8, v0, v5}, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;-><init>(Lcom/fsck/k9/power/AndroidPowerManager;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v8}, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->acquire()V

    .line 384
    .line 385
    .line 386
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->callback:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 387
    .line 388
    iget-object v5, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->folderServerId:Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {v0, v5}, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->onPushEvent(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    iget-object v7, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

    .line 394
    .line 395
    iget-object v9, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 396
    .line 397
    iget-object v10, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->folderServerId:Ljava/lang/String;

    .line 398
    .line 399
    iget-object v11, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->idleRefreshTimeoutProvider:Landroidx/work/Configuration$Builder;

    .line 400
    .line 401
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    new-instance v6, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;

    .line 414
    .line 415
    invoke-direct/range {v6 .. v11}, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;-><init>(Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;Lcom/fsck/k9/mail/store/imap/RealImapStore;Ljava/lang/String;Landroidx/work/Configuration$Builder;)V

    .line 416
    .line 417
    .line 418
    iput-object v6, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->folderIdler:Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;

    .line 419
    .line 420
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->stopPushing:Z

    .line 421
    .line 422
    if-nez v0, :cond_b

    .line 423
    .line 424
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->idle()Lcom/fsck/k9/mail/store/imap/IdleResult;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    if-eqz v0, :cond_4

    .line 433
    .line 434
    if-eq v0, v3, :cond_3

    .line 435
    .line 436
    if-ne v0, v2, :cond_2

    .line 437
    .line 438
    iput-boolean v3, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->stopPushing:Z

    .line 439
    .line 440
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->callback:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 441
    .line 442
    iget-object v0, v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->callback:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 443
    .line 444
    iget-object v5, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast v5, Lnet/thunderbird/core/logging/Logger;

    .line 447
    .line 448
    const-string v7, "AccountBackendPusherCallback"

    .line 449
    .line 450
    new-instance v9, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 451
    .line 452
    const/16 v10, 0xb

    .line 453
    .line 454
    invoke-direct {v9, v10, v0}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    invoke-static {v5, v7, v1, v9, v2}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 458
    .line 459
    .line 460
    iget-object v5, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 461
    .line 462
    check-cast v5, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 463
    .line 464
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast v0, Lnet/thunderbird/feature/account/AccountId;

    .line 467
    .line 468
    iget-object v5, v5, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 469
    .line 470
    invoke-virtual {v5, v0}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-virtual {v0}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setPushDisabled()V

    .line 475
    .line 476
    .line 477
    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    goto :goto_1

    .line 480
    :cond_2
    new-instance v0, Lorg/jsoup/SerializationException;

    .line 481
    .line 482
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 483
    .line 484
    .line 485
    throw v0

    .line 486
    :cond_3
    iput-boolean v3, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->stopPushing:Z

    .line 487
    .line 488
    goto :goto_0

    .line 489
    :cond_4
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->callback:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 490
    .line 491
    iget-object v5, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->folderServerId:Ljava/lang/String;

    .line 492
    .line 493
    invoke-virtual {v0, v5}, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->onPushEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .line 495
    .line 496
    goto :goto_0

    .line 497
    :goto_1
    const-string v5, "Exception in ImapFolderPusher"

    .line 498
    .line 499
    new-array v6, v4, [Ljava/lang/Object;

    .line 500
    .line 501
    invoke-static {v0, v5, v6}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    iput-object v1, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->folderIdler:Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;

    .line 505
    .line 506
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->callback:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 507
    .line 508
    iget-object v5, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->folderServerId:Ljava/lang/String;

    .line 509
    .line 510
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    iget-object v6, v1, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->lock:Ljava/lang/Object;

    .line 514
    .line 515
    monitor-enter v6

    .line 516
    :try_start_1
    iget-object v7, v1, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolders:Ljava/util/LinkedHashMap;

    .line 517
    .line 518
    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    instance-of v7, v0, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 522
    .line 523
    const-wide/32 v9, 0x36ee80

    .line 524
    .line 525
    .line 526
    if-eqz v7, :cond_5

    .line 527
    .line 528
    const-string v7, "Authentication failure when attempting to use IDLE"

    .line 529
    .line 530
    new-array v11, v4, [Ljava/lang/Object;

    .line 531
    .line 532
    invoke-static {v0, v7, v11}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1, v9, v10, v5}, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->startRetryTimer(JLjava/lang/String;)V

    .line 536
    .line 537
    .line 538
    goto :goto_2

    .line 539
    :catchall_0
    move-exception v0

    .line 540
    move-object p0, v0

    .line 541
    goto/16 :goto_4

    .line 542
    .line 543
    :cond_5
    instance-of v7, v0, Ljava/io/IOException;

    .line 544
    .line 545
    const-wide/32 v11, 0x493e0

    .line 546
    .line 547
    .line 548
    if-eqz v7, :cond_6

    .line 549
    .line 550
    const-string v7, "I/O error while trying to use IDLE"

    .line 551
    .line 552
    new-array v9, v4, [Ljava/lang/Object;

    .line 553
    .line 554
    invoke-static {v0, v7, v9}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1, v11, v12, v5}, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->startRetryTimer(JLjava/lang/String;)V

    .line 558
    .line 559
    .line 560
    goto :goto_2

    .line 561
    :cond_6
    instance-of v7, v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 562
    .line 563
    if-eqz v7, :cond_8

    .line 564
    .line 565
    const-string v7, "MessagingException"

    .line 566
    .line 567
    new-array v13, v4, [Ljava/lang/Object;

    .line 568
    .line 569
    invoke-static {v0, v7, v13}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    move-object v7, v0

    .line 573
    check-cast v7, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 574
    .line 575
    iget-boolean v7, v7, Lnet/thunderbird/core/common/exception/MessagingException;->isPermanentFailure:Z

    .line 576
    .line 577
    if-eqz v7, :cond_7

    .line 578
    .line 579
    invoke-virtual {v1, v9, v10, v5}, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->startRetryTimer(JLjava/lang/String;)V

    .line 580
    .line 581
    .line 582
    goto :goto_2

    .line 583
    :cond_7
    invoke-virtual {v1, v11, v12, v5}, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->startRetryTimer(JLjava/lang/String;)V

    .line 584
    .line 585
    .line 586
    goto :goto_2

    .line 587
    :cond_8
    const-string v7, "Unexpected error"

    .line 588
    .line 589
    new-array v11, v4, [Ljava/lang/Object;

    .line 590
    .line 591
    invoke-static {v0, v7, v11}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1, v9, v10, v5}, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->startRetryTimer(JLjava/lang/String;)V

    .line 595
    .line 596
    .line 597
    :goto_2
    iget-object v5, v1, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolders:Ljava/util/LinkedHashMap;

    .line 598
    .line 599
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 600
    .line 601
    .line 602
    move-result v5

    .line 603
    if-eqz v5, :cond_a

    .line 604
    .line 605
    iget-object v1, v1, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->callback:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 606
    .line 607
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    .line 609
    .line 610
    iget-object v5, v1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast v5, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 613
    .line 614
    iget-object v7, v1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast v7, Lnet/thunderbird/feature/account/AccountId;

    .line 617
    .line 618
    iget-object v7, v7, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 619
    .line 620
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v7

    .line 624
    check-cast v5, Lcom/fsck/k9/Preferences;

    .line 625
    .line 626
    invoke-virtual {v5, v7}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 627
    .line 628
    .line 629
    move-result-object v5

    .line 630
    iget-object v1, v1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast v1, Lcom/fsck/k9/controller/MessagingController;

    .line 633
    .line 634
    instance-of v7, v0, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 635
    .line 636
    if-eqz v7, :cond_9

    .line 637
    .line 638
    invoke-virtual {v1, v5, v3}, Lcom/fsck/k9/controller/MessagingController;->handleAuthenticationFailure(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V

    .line 639
    .line 640
    .line 641
    goto :goto_3

    .line 642
    :cond_9
    invoke-virtual {v1, v5, v0, v3}, Lcom/fsck/k9/controller/MessagingController;->notifyUserIfCertificateProblem(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/Exception;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    .line 644
    .line 645
    :cond_a
    :goto_3
    monitor-exit v6

    .line 646
    :cond_b
    invoke-virtual {v8}, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->release()V

    .line 647
    .line 648
    .line 649
    const-string v0, "Exiting ImapFolderPusher thread for %s / %s"

    .line 650
    .line 651
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->accountName:Ljava/lang/String;

    .line 652
    .line 653
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->folderServerId:Ljava/lang/String;

    .line 654
    .line 655
    new-array v2, v2, [Ljava/lang/Object;

    .line 656
    .line 657
    aput-object v1, v2, v4

    .line 658
    .line 659
    aput-object p0, v2, v3

    .line 660
    .line 661
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    .line 663
    .line 664
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 665
    .line 666
    return-object p0

    .line 667
    :goto_4
    monitor-exit v6

    .line 668
    throw p0

    .line 669
    :pswitch_14
    check-cast p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    .line 670
    .line 671
    sget v0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->$r8$clinit:I

    .line 672
    .line 673
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 674
    .line 675
    .line 676
    move-result-object p0

    .line 677
    const-string v0, "account"

    .line 678
    .line 679
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object p0

    .line 683
    if-eqz p0, :cond_c

    .line 684
    .line 685
    new-array v0, v3, [Ljava/lang/Object;

    .line 686
    .line 687
    aput-object p0, v0, v4

    .line 688
    .line 689
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    goto :goto_5

    .line 694
    :cond_c
    const-string p0, "Missing account UUID"

    .line 695
    .line 696
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    :goto_5
    return-object v1

    .line 700
    :pswitch_15
    check-cast p0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 701
    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    .line 703
    .line 704
    const-string v1, "onNotificationActionClick() called with: action = "

    .line 705
    .line 706
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object p0

    .line 716
    return-object p0

    .line 717
    :pswitch_16
    check-cast p0, Lapp/k9mail/core/ui/compose/common/window/FoldableState;

    .line 718
    .line 719
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 720
    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    .line 722
    .line 723
    const-string v1, "Handling foldable state change: "

    .line 724
    .line 725
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object p0

    .line 735
    return-object p0

    .line 736
    :pswitch_17
    check-cast p0, Lokhttp3/internal/http2/Huffman$Node;

    .line 737
    .line 738
    iget p0, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 739
    .line 740
    new-array v0, p0, [B

    .line 741
    .line 742
    move v1, v4

    .line 743
    :goto_6
    if-ge v1, p0, :cond_d

    .line 744
    .line 745
    aput-byte v4, v0, v1

    .line 746
    .line 747
    add-int/lit8 v1, v1, 0x1

    .line 748
    .line 749
    goto :goto_6

    .line 750
    :cond_d
    return-object v0

    .line 751
    :pswitch_18
    check-cast p0, Lokhttp3/Call$Factory;

    .line 752
    .line 753
    invoke-static {p0}, Lcoil3/network/okhttp/OkHttpNetworkFetcher;->$r8$lambda$amCl3S9e1uYV0ehbIXQBVohd2MU(Lokhttp3/Call$Factory;)Lcoil3/network/NetworkClient;

    .line 754
    .line 755
    .line 756
    move-result-object p0

    .line 757
    return-object p0

    .line 758
    :pswitch_19
    check-cast p0, Lcoil3/ImageLoader;

    .line 759
    .line 760
    invoke-static {p0}, Lcoil3/network/NetworkFetcher$Factory;->$r8$lambda$9V67ErC8QUsd7ws9_QKa4rrHG3g(Lcoil3/ImageLoader;)Lcoil3/disk/DiskCache;

    .line 761
    .line 762
    .line 763
    move-result-object p0

    .line 764
    return-object p0

    .line 765
    :pswitch_1a
    check-cast p0, Lcoil3/gif/GifDecoder;

    .line 766
    .line 767
    invoke-static {p0}, Lcoil3/gif/GifDecoder;->$r8$lambda$bToMg4JRAwwuZO0ecPJchhYz67A(Lcoil3/gif/GifDecoder;)Lcoil3/decode/DecodeResult;

    .line 768
    .line 769
    .line 770
    move-result-object p0

    .line 771
    return-object p0

    .line 772
    :pswitch_1b
    check-cast p0, Lcoil3/decode/BitmapFactoryDecoder;

    .line 773
    .line 774
    invoke-static {p0}, Lcoil3/decode/BitmapFactoryDecoder;->$r8$lambda$VWPXjvPloVsydy3Nv6wOsK8OwNc(Lcoil3/decode/BitmapFactoryDecoder;)Lcoil3/decode/DecodeResult;

    .line 775
    .line 776
    .line 777
    move-result-object p0

    .line 778
    return-object p0

    .line 779
    :pswitch_1c
    check-cast p0, Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 780
    .line 781
    sget-object v0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 782
    .line 783
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 784
    .line 785
    .line 786
    const-string v1, "fontSizeMessageListSubject"

    .line 787
    .line 788
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    .line 789
    .line 790
    invoke-virtual {p0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 791
    .line 792
    .line 793
    move-result v1

    .line 794
    iput v1, v0, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    .line 795
    .line 796
    const-string v1, "fontSizeMessageListSender"

    .line 797
    .line 798
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageListSender:I

    .line 799
    .line 800
    invoke-virtual {p0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 801
    .line 802
    .line 803
    move-result v1

    .line 804
    iput v1, v0, Lcom/fsck/k9/FontSizes;->messageListSender:I

    .line 805
    .line 806
    const-string v1, "fontSizeMessageListDate"

    .line 807
    .line 808
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageListDate:I

    .line 809
    .line 810
    invoke-virtual {p0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 811
    .line 812
    .line 813
    move-result v1

    .line 814
    iput v1, v0, Lcom/fsck/k9/FontSizes;->messageListDate:I

    .line 815
    .line 816
    const-string v1, "fontSizeMessageListPreview"

    .line 817
    .line 818
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageListPreview:I

    .line 819
    .line 820
    invoke-virtual {p0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 821
    .line 822
    .line 823
    move-result v1

    .line 824
    iput v1, v0, Lcom/fsck/k9/FontSizes;->messageListPreview:I

    .line 825
    .line 826
    const-string v1, "fontSizeMessageViewAccountName"

    .line 827
    .line 828
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageViewAccountName:I

    .line 829
    .line 830
    invoke-virtual {p0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 831
    .line 832
    .line 833
    move-result v1

    .line 834
    iput v1, v0, Lcom/fsck/k9/FontSizes;->messageViewAccountName:I

    .line 835
    .line 836
    const-string v1, "fontSizeMessageViewSender"

    .line 837
    .line 838
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    .line 839
    .line 840
    invoke-virtual {p0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 841
    .line 842
    .line 843
    move-result v1

    .line 844
    iput v1, v0, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    .line 845
    .line 846
    const-string v1, "fontSizeMessageViewTo"

    .line 847
    .line 848
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageViewRecipients:I

    .line 849
    .line 850
    invoke-virtual {p0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 851
    .line 852
    .line 853
    move-result v1

    .line 854
    iput v1, v0, Lcom/fsck/k9/FontSizes;->messageViewRecipients:I

    .line 855
    .line 856
    const-string v1, "fontSizeMessageViewSubject"

    .line 857
    .line 858
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    .line 859
    .line 860
    invoke-virtual {p0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 861
    .line 862
    .line 863
    move-result v1

    .line 864
    iput v1, v0, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    .line 865
    .line 866
    const-string v1, "fontSizeMessageViewDate"

    .line 867
    .line 868
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    .line 869
    .line 870
    invoke-virtual {p0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 871
    .line 872
    .line 873
    move-result v1

    .line 874
    iput v1, v0, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    .line 875
    .line 876
    const-string v1, "fontSizeMessageViewContentPercent"

    .line 877
    .line 878
    const/16 v2, 0x64

    .line 879
    .line 880
    invoke-virtual {p0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 881
    .line 882
    .line 883
    move-result v1

    .line 884
    iput v1, v0, Lcom/fsck/k9/FontSizes;->messageViewContentAsPercent:I

    .line 885
    .line 886
    const-string v1, "fontSizeMessageComposeInput"

    .line 887
    .line 888
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageComposeInput:I

    .line 889
    .line 890
    invoke-virtual {p0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 891
    .line 892
    .line 893
    move-result p0

    .line 894
    iput p0, v0, Lcom/fsck/k9/FontSizes;->messageComposeInput:I

    .line 895
    .line 896
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 897
    .line 898
    return-object p0

    .line 899
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
.end method
