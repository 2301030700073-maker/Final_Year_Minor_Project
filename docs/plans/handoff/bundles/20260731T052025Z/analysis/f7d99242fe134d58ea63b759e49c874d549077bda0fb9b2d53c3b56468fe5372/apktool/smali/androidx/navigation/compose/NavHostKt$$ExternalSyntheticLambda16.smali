.class public final synthetic Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;

.field public final synthetic f$5:Ljava/lang/Object;

.field public final synthetic f$6:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p8, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->f$4:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p6, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->f$5:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p7, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->f$6:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->f$6:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->f$5:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->f$4:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast p0, Lokhttp3/ConnectionPool;

    .line 21
    .line 22
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 23
    .line 24
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 25
    .line 26
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 27
    .line 28
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 29
    .line 30
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 31
    .line 32
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 33
    .line 34
    check-cast p1, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v0, 0x2

    .line 41
    if-ne p1, v0, :cond_7

    .line 42
    .line 43
    iget-object p1, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lorg/xmlpull/v1/XmlPullParser;

    .line 46
    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_6

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    sparse-switch v7, :sswitch_data_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :sswitch_0
    const-string v0, "settings"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_0

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_0
    invoke-virtual {p0}, Lokhttp3/ConnectionPool;->readSettingsContainer()Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    iput-object p0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :sswitch_1
    const-string v0, "name"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lokhttp3/ConnectionPool;->readText()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    iput-object p0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :sswitch_2
    const-string v0, "folders"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_2

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda2;

    .line 111
    .line 112
    const/4 v2, 0x1

    .line 113
    invoke-direct {v0, p0, p1, v2}, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda2;-><init>(Lokhttp3/ConnectionPool;Ljava/util/ArrayList;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Lokhttp3/ConnectionPool;->readElement(Lkotlin/jvm/functions/Function1;)V

    .line 117
    .line 118
    .line 119
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :sswitch_3
    const-string v0, "outgoing-server"

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_3

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p0}, Lokhttp3/ConnectionPool;->readServerSettings()Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    iput-object p0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :sswitch_4
    const-string v0, "incoming-server"

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_4

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {p0}, Lokhttp3/ConnectionPool;->readServerSettings()Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    iput-object p0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :sswitch_5
    const-string v1, "identities"

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_5

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .line 167
    .line 168
    new-instance v1, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda2;

    .line 169
    .line 170
    invoke-direct {v1, p0, p1, v0}, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda2;-><init>(Lokhttp3/ConnectionPool;Ljava/util/ArrayList;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v1}, Lokhttp3/ConnectionPool;->readElement(Lkotlin/jvm/functions/Function1;)V

    .line 174
    .line 175
    .line 176
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lokhttp3/ConnectionPool;->skipElement()V

    .line 180
    .line 181
    .line 182
    :cond_7
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 183
    .line 184
    return-object p0

    .line 185
    :pswitch_0
    check-cast p0, Landroidx/collection/MutableObjectFloatMap;

    .line 186
    .line 187
    check-cast v6, Landroidx/navigation/compose/ComposeNavigator;

    .line 188
    .line 189
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 190
    .line 191
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 192
    .line 193
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 194
    .line 195
    check-cast v2, Landroidx/compose/runtime/State;

    .line 196
    .line 197
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 198
    .line 199
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 200
    .line 201
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Ljava/util/List;

    .line 206
    .line 207
    invoke-virtual {p1}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->getInitialState()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_c

    .line 216
    .line 217
    invoke-virtual {p1}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->getInitialState()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 222
    .line 223
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectFloatMap;->findKeyIndex(Ljava/lang/Object;)I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-ltz v2, :cond_8

    .line 230
    .line 231
    iget-object v0, p0, Landroidx/collection/MutableObjectFloatMap;->values:[F

    .line 232
    .line 233
    aget v0, v0, v2

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_8
    const/4 v2, 0x0

    .line 237
    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableObjectFloatMap;->set(Ljava/lang/String;F)V

    .line 238
    .line 239
    .line 240
    move v0, v2

    .line 241
    :goto_2
    invoke-virtual {p1}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->getTargetState()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 246
    .line 247
    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {p1}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->getInitialState()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .line 254
    .line 255
    iget-object v7, v7, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 256
    .line 257
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_9

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_9
    iget-object v2, v6, Landroidx/navigation/compose/ComposeNavigator;->isPop:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 265
    .line 266
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    check-cast v2, Ljava/lang/Boolean;

    .line 271
    .line 272
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    const/high16 v6, 0x3f800000    # 1.0f

    .line 277
    .line 278
    if-nez v2, :cond_b

    .line 279
    .line 280
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    check-cast v1, Ljava/lang/Boolean;

    .line 285
    .line 286
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_a

    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_a
    add-float/2addr v0, v6

    .line 294
    goto :goto_4

    .line 295
    :cond_b
    :goto_3
    sub-float/2addr v0, v6

    .line 296
    :goto_4
    invoke-virtual {p1}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->getTargetState()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 301
    .line 302
    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {p0, v1, v0}, Landroidx/collection/MutableObjectFloatMap;->set(Ljava/lang/String;F)V

    .line 305
    .line 306
    .line 307
    new-instance p0, Landroidx/compose/animation/ContentTransform;

    .line 308
    .line 309
    invoke-interface {v5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    check-cast v1, Landroidx/compose/animation/EnterTransitionImpl;

    .line 314
    .line 315
    invoke-interface {v4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    check-cast v2, Landroidx/compose/animation/ExitTransitionImpl;

    .line 320
    .line 321
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    check-cast p1, Landroidx/compose/animation/SizeTransformImpl;

    .line 326
    .line 327
    invoke-direct {p0, v1, v2, v0, p1}, Landroidx/compose/animation/ContentTransform;-><init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;FLandroidx/compose/animation/SizeTransformImpl;)V

    .line 328
    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_c
    sget-object p0, Landroidx/compose/animation/EnterTransitionImpl;->None:Landroidx/compose/animation/EnterTransitionImpl;

    .line 332
    .line 333
    sget-object p1, Landroidx/compose/animation/ExitTransitionImpl;->None:Landroidx/compose/animation/ExitTransitionImpl;

    .line 334
    .line 335
    invoke-static {p0, p1}, Landroidx/compose/animation/CrossfadeKt;->togetherWith(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ContentTransform;

    .line 336
    .line 337
    .line 338
    move-result-object p0

    .line 339
    :goto_5
    return-object p0

    .line 340
    nop

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :sswitch_data_0
    .sparse-switch
        -0x6070f624 -> :sswitch_5
        -0x5607b536 -> :sswitch_4
        -0x4ae30b3c -> :sswitch_3
        -0x28b98e3b -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x5582bc23 -> :sswitch_0
    .end sparse-switch
.end method
