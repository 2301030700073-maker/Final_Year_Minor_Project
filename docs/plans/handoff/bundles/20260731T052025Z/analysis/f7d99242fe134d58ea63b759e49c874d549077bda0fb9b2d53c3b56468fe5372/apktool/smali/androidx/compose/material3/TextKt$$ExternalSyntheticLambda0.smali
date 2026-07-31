.class public final synthetic Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 17
    iput p2, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p3, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput p1, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)V
    .locals 1

    .line 15
    const/4 v0, 0x4

    iput v0, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p1, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$2:I

    iput-object p3, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;ILjava/lang/Object;II)V
    .locals 0

    .line 16
    iput p5, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$2:I

    iput-object p3, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;I)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    iput v0, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    iput p3, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$2:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    iget v3, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v6, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v7, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v7, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error;

    .line 18
    .line 19
    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    move-object p0, p1

    .line 22
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    move-object/from16 v0, p2

    .line 25
    .line 26
    check-cast v0, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    or-int/lit8 v0, v3, 0x1

    .line 32
    .line 33
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v7, v6, p0, v0}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthRedirectScreenKt;->ErrorDetails(Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 38
    .line 39
    .line 40
    return-object v4

    .line 41
    :pswitch_0
    check-cast v7, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;

    .line 42
    .line 43
    check-cast v6, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    move-object p0, p1

    .line 46
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 47
    .line 48
    move-object/from16 v0, p2

    .line 49
    .line 50
    check-cast v0, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    or-int/lit8 v0, v3, 0x1

    .line 56
    .line 57
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v7, v6, p0, v0}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthRedirectScreenKt;->LaunchedErrorEffect(Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;Landroidx/navigation/NavController$$ExternalSyntheticLambda0;Landroidx/compose/runtime/Composer;I)V

    .line 62
    .line 63
    .line 64
    return-object v4

    .line 65
    :pswitch_1
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 66
    .line 67
    check-cast v6, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;

    .line 68
    .line 69
    move-object p0, p1

    .line 70
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 71
    .line 72
    move-object/from16 v0, p2

    .line 73
    .line 74
    check-cast v0, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    or-int/lit8 v0, v3, 0x1

    .line 80
    .line 81
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {v7, v6, p0, v0}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->InAppNotificationReceiverEffect(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;Landroidx/compose/runtime/Composer;I)V

    .line 86
    .line 87
    .line 88
    return-object v4

    .line 89
    :pswitch_2
    check-cast v7, Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;

    .line 90
    .line 91
    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 92
    .line 93
    move-object p0, p1

    .line 94
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 95
    .line 96
    move-object/from16 v0, p2

    .line 97
    .line 98
    check-cast v0, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    or-int/lit8 v0, v3, 0x1

    .line 104
    .line 105
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-static {v7, v6, p0, v0}, Lkotlin/io/CloseableKt;->ActionTextItem(Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 110
    .line 111
    .line 112
    return-object v4

    .line 113
    :pswitch_3
    check-cast v7, Lnet/thunderbird/core/ui/setting/SettingDecoration$Custom;

    .line 114
    .line 115
    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 116
    .line 117
    move-object p0, p1

    .line 118
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 119
    .line 120
    move-object/from16 v0, p2

    .line 121
    .line 122
    check-cast v0, Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    or-int/lit8 v0, v3, 0x1

    .line 128
    .line 129
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-static {v7, v6, p0, v0}, Lokio/Okio;->RenderSettingDecoration(Lnet/thunderbird/core/ui/setting/SettingDecoration$Custom;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 134
    .line 135
    .line 136
    return-object v4

    .line 137
    :pswitch_4
    check-cast v7, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 138
    .line 139
    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 140
    .line 141
    move-object p0, p1

    .line 142
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 143
    .line 144
    move-object/from16 v0, p2

    .line 145
    .line 146
    check-cast v0, Ljava/lang/Integer;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    or-int/lit8 v0, v3, 0x1

    .line 152
    .line 153
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-virtual {v7, v6, p0, v0}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 158
    .line 159
    .line 160
    return-object v4

    .line 161
    :pswitch_5
    check-cast v7, Ljava/lang/String;

    .line 162
    .line 163
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 164
    .line 165
    move-object p0, p1

    .line 166
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 167
    .line 168
    move-object/from16 v0, p2

    .line 169
    .line 170
    check-cast v0, Ljava/lang/Integer;

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    or-int/lit8 v0, v3, 0x1

    .line 176
    .line 177
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-static {v7, v6, p0, v0}, Lorg/slf4j/helpers/Util;->QrCodeScannerBottomContent(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 182
    .line 183
    .line 184
    return-object v4

    .line 185
    :pswitch_6
    check-cast v7, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;

    .line 186
    .line 187
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 188
    .line 189
    move-object p0, p1

    .line 190
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 191
    .line 192
    move-object/from16 v0, p2

    .line 193
    .line 194
    check-cast v0, Ljava/lang/Integer;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 197
    .line 198
    .line 199
    or-int/lit8 v0, v3, 0x1

    .line 200
    .line 201
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    invoke-static {v7, v6, p0, v0}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersScreenKt;->SpecialFoldersErrorView(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 206
    .line 207
    .line 208
    return-object v4

    .line 209
    :pswitch_7
    check-cast v7, Landroidx/compose/ui/Modifier;

    .line 210
    .line 211
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 212
    .line 213
    move-object p0, p1

    .line 214
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 215
    .line 216
    move-object/from16 v0, p2

    .line 217
    .line 218
    check-cast v0, Ljava/lang/Integer;

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    or-int/lit8 v0, v3, 0x1

    .line 224
    .line 225
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    invoke-static {v7, v6, p0, v0}, Landroidx/room/util/SchemaInfoUtilKt;->EditConfigurationButton(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 230
    .line 231
    .line 232
    return-object v4

    .line 233
    :pswitch_8
    move-object v8, v7

    .line 234
    check-cast v8, Ljava/lang/CharSequence;

    .line 235
    .line 236
    move-object v9, v6

    .line 237
    check-cast v9, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;

    .line 238
    .line 239
    move-object v0, p1

    .line 240
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 241
    .line 242
    move-object/from16 v3, p2

    .line 243
    .line 244
    check-cast v3, Ljava/lang/Integer;

    .line 245
    .line 246
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    and-int/lit8 v6, v3, 0x3

    .line 251
    .line 252
    if-eq v6, v2, :cond_0

    .line 253
    .line 254
    move v1, v5

    .line 255
    :cond_0
    and-int/lit8 v2, v3, 0x1

    .line 256
    .line 257
    move-object v12, v0

    .line 258
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 259
    .line 260
    invoke-virtual {v12, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_1

    .line 265
    .line 266
    const/4 v11, 0x0

    .line 267
    const/4 v13, 0x0

    .line 268
    iget v10, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;->f$2:I

    .line 269
    .line 270
    invoke-static/range {v8 .. v13}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardKt;->BannerInlineNotificationTitle(Ljava/lang/CharSequence;Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;ILandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 271
    .line 272
    .line 273
    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 275
    .line 276
    .line 277
    :goto_0
    return-object v4

    .line 278
    :pswitch_9
    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 279
    .line 280
    move-object p0, p1

    .line 281
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 282
    .line 283
    move-object/from16 v0, p2

    .line 284
    .line 285
    check-cast v0, Ljava/lang/Integer;

    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    or-int/2addr v0, v5

    .line 295
    invoke-virtual {v6, v7, p0, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    return-object v4

    .line 299
    :pswitch_a
    check-cast v7, [Landroidx/compose/runtime/ProvidedValue;

    .line 300
    .line 301
    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 302
    .line 303
    move-object p0, p1

    .line 304
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 305
    .line 306
    move-object/from16 v0, p2

    .line 307
    .line 308
    check-cast v0, Ljava/lang/Integer;

    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    or-int/lit8 v0, v3, 0x1

    .line 314
    .line 315
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    invoke-static {v7, v6, p0, v0}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 320
    .line 321
    .line 322
    return-object v4

    .line 323
    :pswitch_b
    check-cast v7, Landroidx/compose/runtime/ProvidedValue;

    .line 324
    .line 325
    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 326
    .line 327
    move-object p0, p1

    .line 328
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 329
    .line 330
    move-object/from16 v0, p2

    .line 331
    .line 332
    check-cast v0, Ljava/lang/Integer;

    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 335
    .line 336
    .line 337
    or-int/lit8 v0, v3, 0x1

    .line 338
    .line 339
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    invoke-static {v7, v6, p0, v0}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 344
    .line 345
    .line 346
    return-object v4

    .line 347
    :pswitch_c
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString;

    .line 348
    .line 349
    check-cast v6, Ljava/util/List;

    .line 350
    .line 351
    move-object p0, p1

    .line 352
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 353
    .line 354
    move-object/from16 v0, p2

    .line 355
    .line 356
    check-cast v0, Ljava/lang/Integer;

    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 359
    .line 360
    .line 361
    or-int/lit8 v0, v3, 0x1

    .line 362
    .line 363
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    invoke-static {v7, v6, p0, v0}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->InlineChildren(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    .line 368
    .line 369
    .line 370
    return-object v4

    .line 371
    :pswitch_d
    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 372
    .line 373
    move-object p0, p1

    .line 374
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 375
    .line 376
    move-object/from16 v0, p2

    .line 377
    .line 378
    check-cast v0, Ljava/lang/Integer;

    .line 379
    .line 380
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    and-int/lit8 v8, v0, 0x3

    .line 385
    .line 386
    if-eq v8, v2, :cond_2

    .line 387
    .line 388
    move v2, v5

    .line 389
    goto :goto_1

    .line 390
    :cond_2
    move v2, v1

    .line 391
    :goto_1
    and-int/2addr v0, v5

    .line 392
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 393
    .line 394
    invoke-virtual {p0, v0, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-eqz v0, :cond_3

    .line 399
    .line 400
    invoke-interface {v7, v3, v6, p0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->Item(ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 401
    .line 402
    .line 403
    goto :goto_2

    .line 404
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 405
    .line 406
    .line 407
    :goto_2
    return-object v4

    .line 408
    :pswitch_e
    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 409
    .line 410
    move-object p0, p1

    .line 411
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 412
    .line 413
    move-object/from16 v0, p2

    .line 414
    .line 415
    check-cast v0, Ljava/lang/Integer;

    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    invoke-virtual {v7, v3, v6, p0, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->Item(ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 425
    .line 426
    .line 427
    return-object v4

    .line 428
    :pswitch_f
    check-cast v7, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 429
    .line 430
    move-object p0, p1

    .line 431
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 432
    .line 433
    move-object/from16 v0, p2

    .line 434
    .line 435
    check-cast v0, Ljava/lang/Integer;

    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    invoke-virtual {v7, v3, v6, p0, v0}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->Item(ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 445
    .line 446
    .line 447
    return-object v4

    .line 448
    :pswitch_10
    check-cast v7, Landroidx/compose/animation/core/Transition;

    .line 449
    .line 450
    move-object p0, p1

    .line 451
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 452
    .line 453
    move-object/from16 v0, p2

    .line 454
    .line 455
    check-cast v0, Ljava/lang/Integer;

    .line 456
    .line 457
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 458
    .line 459
    .line 460
    or-int/lit8 v0, v3, 0x1

    .line 461
    .line 462
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    invoke-virtual {v7, v6, p0, v0}, Landroidx/compose/animation/core/Transition;->animateTo$animation_core(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 467
    .line 468
    .line 469
    return-object v4

    .line 470
    :pswitch_11
    check-cast v7, Landroidx/compose/ui/text/TextStyle;

    .line 471
    .line 472
    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 473
    .line 474
    move-object p0, p1

    .line 475
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 476
    .line 477
    move-object/from16 v0, p2

    .line 478
    .line 479
    check-cast v0, Ljava/lang/Integer;

    .line 480
    .line 481
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 482
    .line 483
    .line 484
    or-int/lit8 v0, v3, 0x1

    .line 485
    .line 486
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    invoke-static {v7, v6, p0, v0}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 491
    .line 492
    .line 493
    return-object v4

    .line 494
    nop

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
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
