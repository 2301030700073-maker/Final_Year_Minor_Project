.class public final synthetic Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->f$1:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->f$2:Landroidx/navigation/NavHostController;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Landroid/content/Context;)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->f$2:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->f$1:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroid/content/Context;Landroidx/navigation/NavHostController;)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->f$2:Landroidx/navigation/NavHostController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 10
    .line 11
    iget-object v6, v0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    iget-object v7, v0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->f$2:Landroidx/navigation/NavHostController;

    .line 14
    .line 15
    iget-object v0, v0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;->f$1:Landroid/content/Context;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 23
    .line 24
    move-object/from16 v2, p2

    .line 25
    .line 26
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 27
    .line 28
    move-object/from16 v3, p3

    .line 29
    .line 30
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 31
    .line 32
    move-object/from16 v8, p4

    .line 33
    .line 34
    check-cast v8, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    or-int/2addr v1, v2

    .line 54
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/4 v8, 0x0

    .line 59
    if-nez v1, :cond_0

    .line 60
    .line 61
    if-ne v2, v5, :cond_1

    .line 62
    .line 63
    :cond_0
    new-instance v2, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;

    .line 64
    .line 65
    invoke-direct {v2, v0, v7, v8}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;Landroidx/navigation/NavHostController;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 72
    .line 73
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    or-int/2addr v0, v1

    .line 82
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-nez v0, :cond_2

    .line 87
    .line 88
    if-ne v1, v5, :cond_3

    .line 89
    .line 90
    :cond_2
    new-instance v1, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13;

    .line 91
    .line 92
    invoke-direct {v1, v7, v6, v8}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13;-><init>(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    invoke-static {v0, v2, v1, v3, v8}, Lokio/Options$Companion;->ForYouModulesScreen(Lorg/wikipedia/settings/homefeed/ModulesViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 102
    .line 103
    .line 104
    return-object v4

    .line 105
    :pswitch_0
    move-object/from16 v1, p1

    .line 106
    .line 107
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 108
    .line 109
    move-object/from16 v8, p2

    .line 110
    .line 111
    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .line 112
    .line 113
    move-object/from16 v13, p3

    .line 114
    .line 115
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 116
    .line 117
    move-object/from16 v9, p4

    .line 118
    .line 119
    check-cast v9, Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 131
    .line 132
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getHomePreferenceSelection()Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    or-int/2addr v1, v8

    .line 145
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    if-nez v1, :cond_4

    .line 150
    .line 151
    if-ne v8, v5, :cond_5

    .line 152
    .line 153
    :cond_4
    new-instance v8, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13;

    .line 154
    .line 155
    invoke-direct {v8, v7, v6, v3}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13;-><init>(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    move-object v11, v8

    .line 162
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 163
    .line 164
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    if-nez v1, :cond_6

    .line 173
    .line 174
    if-ne v3, v5, :cond_7

    .line 175
    .line 176
    :cond_6
    new-instance v3, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0;

    .line 177
    .line 178
    invoke-direct {v3, v0, v2}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_7
    move-object v12, v3

    .line 185
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 186
    .line 187
    const/4 v14, 0x0

    .line 188
    const/4 v9, 0x0

    .line 189
    invoke-static/range {v9 .. v14}, Lorg/jsoup/Jsoup;->HomeFeedDefaultViewScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 190
    .line 191
    .line 192
    return-object v4

    .line 193
    :pswitch_1
    move-object/from16 v1, p1

    .line 194
    .line 195
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 196
    .line 197
    move-object/from16 v8, p2

    .line 198
    .line 199
    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .line 200
    .line 201
    move-object/from16 v15, p3

    .line 202
    .line 203
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 204
    .line 205
    move-object/from16 v9, p4

    .line 206
    .line 207
    check-cast v9, Ljava/lang/Integer;

    .line 208
    .line 209
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    if-nez v1, :cond_8

    .line 227
    .line 228
    if-ne v8, v5, :cond_9

    .line 229
    .line 230
    :cond_8
    new-instance v8, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;

    .line 231
    .line 232
    const/16 v1, 0xb

    .line 233
    .line 234
    invoke-direct {v8, v1, v6}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    :cond_9
    move-object v10, v8

    .line 241
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 242
    .line 243
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    or-int/2addr v1, v6

    .line 252
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    if-nez v1, :cond_a

    .line 257
    .line 258
    if-ne v6, v5, :cond_b

    .line 259
    .line 260
    :cond_a
    new-instance v6, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;

    .line 261
    .line 262
    invoke-direct {v6, v0, v7, v3}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;Landroidx/navigation/NavHostController;I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :cond_b
    move-object v11, v6

    .line 269
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 270
    .line 271
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    or-int/2addr v1, v3

    .line 280
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    if-nez v1, :cond_c

    .line 285
    .line 286
    if-ne v3, v5, :cond_d

    .line 287
    .line 288
    :cond_c
    new-instance v3, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;

    .line 289
    .line 290
    invoke-direct {v3, v0, v7, v2}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;Landroidx/navigation/NavHostController;I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_d
    move-object v12, v3

    .line 297
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 298
    .line 299
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    or-int/2addr v1, v2

    .line 308
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    if-nez v1, :cond_e

    .line 313
    .line 314
    if-ne v2, v5, :cond_f

    .line 315
    .line 316
    :cond_e
    new-instance v2, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;

    .line 317
    .line 318
    const/4 v1, 0x3

    .line 319
    invoke-direct {v2, v0, v7, v1}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;Landroidx/navigation/NavHostController;I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    :cond_f
    move-object v13, v2

    .line 326
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 327
    .line 328
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    or-int/2addr v1, v2

    .line 337
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    if-nez v1, :cond_10

    .line 342
    .line 343
    if-ne v2, v5, :cond_11

    .line 344
    .line 345
    :cond_10
    new-instance v2, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;

    .line 346
    .line 347
    const/4 v1, 0x4

    .line 348
    invoke-direct {v2, v0, v7, v1}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;Landroidx/navigation/NavHostController;I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    :cond_11
    move-object v14, v2

    .line 355
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 356
    .line 357
    const/16 v16, 0x0

    .line 358
    .line 359
    const/4 v9, 0x0

    .line 360
    invoke-static/range {v9 .. v16}, Lorg/jsoup/select/NodeTraversor;->HomeFeedSettingsScreen(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 361
    .line 362
    .line 363
    return-object v4

    .line 364
    nop

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
