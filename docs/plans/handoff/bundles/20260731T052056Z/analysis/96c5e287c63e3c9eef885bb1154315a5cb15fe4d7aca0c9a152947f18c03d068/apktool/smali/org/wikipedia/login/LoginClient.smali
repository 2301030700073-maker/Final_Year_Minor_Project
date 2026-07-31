.class public final Lorg/wikipedia/login/LoginClient;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLiteMap;
.implements Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;
.implements Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;
.implements Lorg/maplibre/android/ModuleProvider;
.implements Lorg/maplibre/android/log/LoggerDefinition;


# static fields
.field public static enqueueForceEmailAuth:Z


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/login/LoginClient;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static dateToTimestamp(Ljava/util/Date;)Ljava/lang/Long;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static fromTimestamp(Ljava/lang/Long;)Ljava/util/Date;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/Date;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static generateLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/SymbolLayer;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 4
    .line 5
    const-string v2, "mapbox-location-source"

    .line 6
    .line 7
    invoke-direct {v1, v0, v2}, Lorg/maplibre/android/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    new-instance v3, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 13
    .line 14
    const-string v4, "icon-allow-overlap"

    .line 15
    .line 16
    invoke-direct {v3, v4, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 20
    .line 21
    const-string v5, "icon-ignore-placement"

    .line 22
    .line 23
    invoke-direct {v4, v5, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 27
    .line 28
    const-string v5, "icon-rotation-alignment"

    .line 29
    .line 30
    const-string v6, "map"

    .line 31
    .line 32
    invoke-direct {v2, v5, v6}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance v5, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 36
    .line 37
    invoke-direct {v5, v0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    new-instance v7, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 46
    .line 47
    invoke-direct {v7, v6}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const-string v8, "mapbox-property-gps-bearing"

    .line 51
    .line 52
    invoke-static {v8}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const-string v10, "mapbox-location-foreground-layer"

    .line 57
    .line 58
    invoke-static {v10, v9}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lokhttp3/FormBody$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-static {v8}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    const-string v12, "mapbox-location-background-layer"

    .line 67
    .line 68
    invoke-static {v12, v11}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lokhttp3/FormBody$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    invoke-static {v8}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    const-string v13, "mapbox-location-shadow-layer"

    .line 77
    .line 78
    invoke-static {v13, v8}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lokhttp3/FormBody$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    const-string v14, "mapbox-property-compass-bearing"

    .line 83
    .line 84
    invoke-static {v14}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    const-string v15, "mapbox-location-bearing-layer"

    .line 89
    .line 90
    invoke-static {v15, v14}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lokhttp3/FormBody$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object v14

    .line 94
    move-object/from16 v16, v2

    .line 95
    .line 96
    const/4 v2, 0x4

    .line 97
    move-object/from16 v17, v3

    .line 98
    .line 99
    new-array v3, v2, [Lokhttp3/FormBody$Builder;

    .line 100
    .line 101
    const/16 v18, 0x0

    .line 102
    .line 103
    aput-object v9, v3, v18

    .line 104
    .line 105
    const/4 v9, 0x1

    .line 106
    aput-object v11, v3, v9

    .line 107
    .line 108
    const/4 v11, 0x2

    .line 109
    aput-object v8, v3, v11

    .line 110
    .line 111
    const/4 v8, 0x3

    .line 112
    aput-object v14, v3, v8

    .line 113
    .line 114
    invoke-static {v5, v7, v3}, Lorg/maplibre/android/style/expressions/Expression;->match(Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;Lorg/maplibre/android/style/expressions/Expression;[Lokhttp3/FormBody$Builder;)Lorg/maplibre/android/style/expressions/Expression;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    new-instance v5, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 119
    .line 120
    const-string v7, "icon-rotate"

    .line 121
    .line 122
    invoke-direct {v5, v7, v3}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    new-instance v3, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 126
    .line 127
    invoke-direct {v3, v0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    new-instance v7, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 131
    .line 132
    const-string v14, ""

    .line 133
    .line 134
    invoke-direct {v7, v14}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    const-string v14, "mapbox-property-location-stale"

    .line 138
    .line 139
    invoke-static {v14}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 140
    .line 141
    .line 142
    move-result-object v19

    .line 143
    const-string v20, "mapbox-property-foreground-stale-icon"

    .line 144
    .line 145
    invoke-static/range {v20 .. v20}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 146
    .line 147
    .line 148
    move-result-object v20

    .line 149
    const-string v21, "mapbox-property-foreground-icon"

    .line 150
    .line 151
    invoke-static/range {v21 .. v21}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 152
    .line 153
    .line 154
    move-result-object v21

    .line 155
    move/from16 v22, v9

    .line 156
    .line 157
    new-array v9, v8, [Lorg/maplibre/android/style/expressions/Expression;

    .line 158
    .line 159
    aput-object v19, v9, v18

    .line 160
    .line 161
    aput-object v20, v9, v22

    .line 162
    .line 163
    aput-object v21, v9, v11

    .line 164
    .line 165
    move/from16 v19, v11

    .line 166
    .line 167
    new-instance v11, Lorg/maplibre/android/style/expressions/Expression;

    .line 168
    .line 169
    const-string v2, "case"

    .line 170
    .line 171
    invoke-direct {v11, v2, v9}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v10, v11}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lokhttp3/FormBody$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-static {v14}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    const-string v14, "mapbox-property-background-stale-icon"

    .line 183
    .line 184
    invoke-static {v14}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 185
    .line 186
    .line 187
    move-result-object v14

    .line 188
    const-string v21, "mapbox-property-background-icon"

    .line 189
    .line 190
    invoke-static/range {v21 .. v21}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 191
    .line 192
    .line 193
    move-result-object v21

    .line 194
    move-object/from16 v23, v4

    .line 195
    .line 196
    new-array v4, v8, [Lorg/maplibre/android/style/expressions/Expression;

    .line 197
    .line 198
    aput-object v11, v4, v18

    .line 199
    .line 200
    aput-object v14, v4, v22

    .line 201
    .line 202
    aput-object v21, v4, v19

    .line 203
    .line 204
    new-instance v11, Lorg/maplibre/android/style/expressions/Expression;

    .line 205
    .line 206
    invoke-direct {v11, v2, v4}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v12, v11}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lokhttp3/FormBody$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    new-instance v4, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 214
    .line 215
    const-string v11, "mapbox-location-shadow-icon"

    .line 216
    .line 217
    invoke-direct {v4, v11}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v13, v4}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lokhttp3/FormBody$Builder;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    const-string v11, "mapbox-property-shadow-icon"

    .line 225
    .line 226
    invoke-static {v11}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 227
    .line 228
    .line 229
    move-result-object v11

    .line 230
    invoke-static {v15, v11}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lokhttp3/FormBody$Builder;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    const/4 v12, 0x4

    .line 235
    new-array v14, v12, [Lokhttp3/FormBody$Builder;

    .line 236
    .line 237
    aput-object v9, v14, v18

    .line 238
    .line 239
    aput-object v2, v14, v22

    .line 240
    .line 241
    aput-object v4, v14, v19

    .line 242
    .line 243
    aput-object v11, v14, v8

    .line 244
    .line 245
    invoke-static {v3, v7, v14}, Lorg/maplibre/android/style/expressions/Expression;->match(Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;Lorg/maplibre/android/style/expressions/Expression;[Lokhttp3/FormBody$Builder;)Lorg/maplibre/android/style/expressions/Expression;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    new-instance v3, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 250
    .line 251
    const-string v4, "icon-image"

    .line 252
    .line 253
    invoke-direct {v3, v4, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    new-instance v2, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 257
    .line 258
    invoke-direct {v2, v0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    move/from16 v0, v19

    .line 262
    .line 263
    new-array v4, v0, [Ljava/lang/Float;

    .line 264
    .line 265
    aput-object v6, v4, v18

    .line 266
    .line 267
    aput-object v6, v4, v22

    .line 268
    .line 269
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    .line 270
    .line 271
    new-instance v6, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteralArray;

    .line 272
    .line 273
    invoke-direct {v6, v4}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    move/from16 v4, v22

    .line 277
    .line 278
    new-array v7, v4, [Lorg/maplibre/android/style/expressions/Expression;

    .line 279
    .line 280
    aput-object v6, v7, v18

    .line 281
    .line 282
    const-string v4, "literal"

    .line 283
    .line 284
    invoke-direct {v0, v4, v7}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    .line 285
    .line 286
    .line 287
    new-instance v4, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 288
    .line 289
    invoke-direct {v4, v10}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    const-string v6, "mapbox-property-foreground-icon-offset"

    .line 293
    .line 294
    invoke-static {v6}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    invoke-static {v4, v6}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lokhttp3/FormBody$Builder;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    new-instance v6, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 303
    .line 304
    invoke-direct {v6, v13}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    const-string v7, "mapbox-property-shadow-icon-offset"

    .line 308
    .line 309
    invoke-static {v7}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    invoke-static {v6, v7}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lokhttp3/FormBody$Builder;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    const/4 v7, 0x2

    .line 318
    new-array v9, v7, [Lokhttp3/FormBody$Builder;

    .line 319
    .line 320
    aput-object v4, v9, v18

    .line 321
    .line 322
    const/16 v22, 0x1

    .line 323
    .line 324
    aput-object v6, v9, v22

    .line 325
    .line 326
    invoke-static {v2, v0, v9}, Lorg/maplibre/android/style/expressions/Expression;->match(Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;Lorg/maplibre/android/style/expressions/Expression;[Lokhttp3/FormBody$Builder;)Lorg/maplibre/android/style/expressions/Expression;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    new-instance v2, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 331
    .line 332
    const-string v4, "icon-offset"

    .line 333
    .line 334
    invoke-direct {v2, v4, v0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    const/4 v0, 0x6

    .line 338
    new-array v0, v0, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 339
    .line 340
    aput-object v17, v0, v18

    .line 341
    .line 342
    aput-object v23, v0, v22

    .line 343
    .line 344
    aput-object v16, v0, v7

    .line 345
    .line 346
    aput-object v5, v0, v8

    .line 347
    .line 348
    const/16 v20, 0x4

    .line 349
    .line 350
    aput-object v3, v0, v20

    .line 351
    .line 352
    const/4 v3, 0x5

    .line 353
    aput-object v2, v0, v3

    .line 354
    .line 355
    invoke-virtual {v1, v0}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 356
    .line 357
    .line 358
    return-object v1
.end method

.method public static isAccessible()Z
    .locals 5

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isShowDeveloperSettingsEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_4

    .line 10
    :cond_0
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getConfig()Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;->commonv1:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigCommonV1;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v0, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigCommonV1;->yir:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    move-object v3, v2

    .line 36
    check-cast v3, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;

    .line 37
    .line 38
    iget v3, v3, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->year:I

    .line 39
    .line 40
    const/16 v4, 0x7e9

    .line 41
    .line 42
    if-ne v3, v4, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object v2, v1

    .line 46
    :goto_0
    check-cast v2, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move-object v2, v1

    .line 50
    :goto_1
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v2, :cond_6

    .line 55
    .line 56
    iget-object v3, v2, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->hideCountryCodes:Ljava/util/List;

    .line 57
    .line 58
    :try_start_0
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 59
    .line 60
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getGeoIPCountryOverride()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-eqz v4, :cond_5

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getGeoIPCountryOverride()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    goto :goto_3

    .line 78
    :cond_5
    :goto_2
    invoke-static {}, Lorg/jsoup/Jsoup;->unmarshal()Lkotlinx/coroutines/internal/Symbol;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    iget-object v1, v4, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    :catch_0
    :goto_3
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_6

    .line 89
    .line 90
    iget-object v1, v2, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->activeStartDate:Lj$/time/LocalDateTime;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->isAfter(Lj$/time/chrono/ChronoLocalDateTime;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    iget-object v1, v2, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->activeEndDate:Lj$/time/LocalDateTime;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->isBefore(Lj$/time/chrono/ChronoLocalDateTime;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    :goto_4
    const/4 v0, 0x1

    .line 107
    return v0

    .line 108
    :cond_6
    const/4 v0, 0x0

    .line 109
    return v0
.end method

.method public static login$default(Lorg/wikipedia/login/LoginClient;Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lorg/wikipedia/login/LoginClient$LoginCallback;I)V
    .locals 17

    .line 1
    move/from16 v0, p13

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x10

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v10, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v10, p5

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x20

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v4, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v4, p6

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v1, v0, 0x40

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    move-object v11, v2

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-object/from16 v11, p7

    .line 27
    .line 28
    :goto_2
    and-int/lit16 v1, v0, 0x80

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    move-object v12, v2

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    move-object/from16 v12, p8

    .line 35
    .line 36
    :goto_3
    and-int/lit16 v1, v0, 0x100

    .line 37
    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    move-object v13, v2

    .line 41
    goto :goto_4

    .line 42
    :cond_4
    move-object/from16 v13, p9

    .line 43
    .line 44
    :goto_4
    and-int/lit16 v1, v0, 0x200

    .line 45
    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    move-object v14, v2

    .line 49
    goto :goto_5

    .line 50
    :cond_5
    move-object/from16 v14, p10

    .line 51
    .line 52
    :goto_5
    and-int/lit16 v0, v0, 0x400

    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 57
    .line 58
    move-object v7, v0

    .line 59
    goto :goto_6

    .line 60
    :cond_6
    move-object/from16 v7, p11

    .line 61
    .line 62
    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v0, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 72
    .line 73
    move-object/from16 v15, p12

    .line 74
    .line 75
    invoke-direct {v0, v15}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/login/LoginClient$LoginCallback;)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Lorg/wikipedia/login/LoginClient$login$2;

    .line 79
    .line 80
    const/16 v16, 0x0

    .line 81
    .line 82
    move-object/from16 v5, p0

    .line 83
    .line 84
    move-object/from16 v6, p2

    .line 85
    .line 86
    move-object/from16 v8, p3

    .line 87
    .line 88
    move-object/from16 v9, p4

    .line 89
    .line 90
    invoke-direct/range {v3 .. v16}, Lorg/wikipedia/login/LoginClient$login$2;-><init>(Ljava/lang/String;Lorg/wikipedia/login/LoginClient;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;Lkotlin/coroutines/Continuation;)V

    .line 91
    .line 92
    .line 93
    const/4 v1, 0x2

    .line 94
    move-object/from16 v4, p1

    .line 95
    .line 96
    invoke-static {v4, v0, v2, v3, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public static newInstance(Lorg/wikipedia/Constants$InvokeSource;Z)Lorg/wikipedia/theme/ThemeChooserDialog;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/wikipedia/theme/ThemeChooserDialog;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lkotlin/Pair;

    .line 10
    .line 11
    const-string v2, "invokeSource"

    .line 12
    .line 13
    invoke-direct {v1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance p1, Lkotlin/Pair;

    .line 21
    .line 22
    const-string v2, "isEditing"

    .line 23
    .line 24
    invoke-direct {p1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x2

    .line 28
    new-array p0, p0, [Lkotlin/Pair;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    aput-object v1, p0, v2

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    aput-object p1, p0, v1

    .line 35
    .line 36
    invoke-static {p0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.wikipedia.resume_reading"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/wikipedia/page/PageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static newIntent(Landroid/content/Context;ILjava/lang/String;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    const-class v1, Lorg/wikipedia/edit/EditSectionActivity;

    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    const-string p0, "sectionId"

    .line 21
    .line 22
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "sectionAnchor"

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "title"

    .line 33
    .line 34
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string p1, "sectionHighlightText"

    .line 39
    .line 40
    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p1, "invokeSource"

    .line 45
    .line 46
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "imageTitle"

    .line 51
    .line 52
    invoke-virtual {p0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string p1, "imageSource"

    .line 57
    .line 58
    invoke-virtual {p0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string p1, "imageSourceProjects"

    .line 63
    .line 64
    invoke-virtual {p0, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    return-object p0
.end method

.method public static synthetic newIntent$default(Landroid/content/Context;ILjava/lang/String;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 9

    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    const/4 v6, 0x0

    .line 150
    const-string v7, ""

    move-object v8, v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v8}, Lorg/wikipedia/login/LoginClient;->newIntent(Landroid/content/Context;ILjava/lang/String;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static newIntent$default(Landroid/content/Context;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5

    sget v0, Lorg/wikipedia/activity/SingleWebViewActivity;->$r8$clinit:I

    and-int/lit8 v0, p4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p4, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object p2, v4

    :cond_1
    and-int/lit8 v3, p4, 0x10

    if-eqz v3, :cond_2

    move-object p3, v4

    :cond_2
    and-int/lit8 p4, p4, 0x20

    if-eqz p4, :cond_3

    move v1, v2

    .line 143
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    new-instance p4, Landroid/content/Intent;

    const-class v2, Lorg/wikipedia/activity/SingleWebViewActivity;

    invoke-direct {p4, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    const-string/jumbo p0, "url"

    invoke-virtual {p4, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 146
    const-string p1, "goBack"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    .line 147
    const-string p1, "title"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    .line 148
    const-string p1, "pageContentInfo"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 149
    const-string p1, "isWebForm"

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static newIntent$default(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 6

    .line 1
    sget v0, Lorg/wikipedia/search/SearchActivity;->$r8$clinit:I

    .line 2
    .line 3
    and-int/lit8 v0, p4, 0x8

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    and-int/lit8 v3, p4, 0x10

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    :cond_1
    and-int/lit8 p4, p4, 0x20

    .line 18
    .line 19
    if-eqz p4, :cond_2

    .line 20
    .line 21
    move p4, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move p4, v1

    .line 24
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v3, Lorg/wikipedia/search/HybridSearchAbCTest;

    .line 31
    .line 32
    invoke-direct {v3}, Lorg/wikipedia/search/HybridSearchAbCTest;-><init>()V

    .line 33
    .line 34
    .line 35
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 36
    .line 37
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getConfig()Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iget-object v5, v5, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;->androidv1:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;

    .line 46
    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    iget-object v5, v5, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;->hybridSearchEnabled:Ljava/lang/Boolean;

    .line 50
    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    :cond_3
    const-string v5, "invokeSource"

    .line 58
    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    invoke-virtual {v3}, Lorg/jsoup/parser/Token;->getGroup()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Lorg/wikipedia/search/HybridSearchAbCTest;->isLanguageSupported(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 74
    .line 75
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isHybridSearchOnboardingShown()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    const p2, 0x7f120610

    .line 82
    .line 83
    .line 84
    invoke-static {p2, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 85
    .line 86
    .line 87
    sget p2, Lorg/wikipedia/search/HybridSearchOnboardingActivity;->$r8$clinit:I

    .line 88
    .line 89
    new-instance p2, Landroid/content/Intent;

    .line 90
    .line 91
    const-class p3, Lorg/wikipedia/search/HybridSearchOnboardingActivity;

    .line 92
    .line 93
    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .line 105
    .line 106
    const-class v2, Lorg/wikipedia/search/SearchActivity;

    .line 107
    .line 108
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    const-string p1, "query"

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const-string p1, "returnLink"

    .line 122
    .line 123
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    const-string p1, "articleTitle"

    .line 128
    .line 129
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const-string p1, "showHybridSearch"

    .line 134
    .line 135
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    return-object p0
.end method

.method public static newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    const-string p3, "org.wikipedia.load_in_current_tab_squash"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p3, "org.wikipedia.load_in_current_tab"

    .line 12
    .line 13
    :goto_0
    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-class p3, Lorg/wikipedia/page/PageActivity;

    .line 17
    .line 18
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p3, "org.wikipedia.history.historyentry"

    .line 23
    .line 24
    invoke-virtual {p0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "title"

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    return-object p0
.end method

.method public static newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    const-string v1, "org.wikipedia.load_in_new_tab"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-class v1, Lorg/wikipedia/page/PageActivity;

    .line 18
    .line 19
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "org.wikipedia.history.historyentry"

    .line 24
    .line 25
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "title"

    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method public static showToast(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getMainThreadHandler()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lorg/wikipedia/login/LoginClient$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lorg/wikipedia/login/LoginClient$$ExternalSyntheticLambda0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static wikiSiteToString(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method


# virtual methods
.method public create(Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/platform/android/SocketAdapter;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    move-object p1, p0

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "OpenSSLSocketImpl"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "No OpenSSLSocketImpl superclass of socket of type "

    .line 26
    .line 27
    invoke-static {p1, p0}, Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_1
    new-instance p0, Lokhttp3/internal/platform/android/AndroidSocketAdapter;

    .line 33
    .line 34
    invoke-direct {p0, p1}, Lokhttp3/internal/platform/android/AndroidSocketAdapter;-><init>(Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    return-object p0
.end method

.method public decode(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget p0, p0, Lorg/wikipedia/login/LoginClient;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->readUtf8String()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide/16 v2, -0x1

    .line 22
    .line 23
    cmp-long p0, v0, v2

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    iget-boolean p0, p1, Lokhttp3/tls/internal/der/DerReader;->constructed:Z

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    iget-object p0, p1, Lokhttp3/tls/internal/der/DerReader;->source:Lokio/RealBufferedSource;

    .line 32
    .line 33
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->readByteString(J)Lokio/ByteString;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_0
    new-instance p0, Ljava/net/ProtocolException;

    .line 43
    .line 44
    const-string p1, "constructed octet strings not supported for DER"

    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget-object p0, p1, Lokhttp3/tls/internal/der/DerReader;->source:Lokio/RealBufferedSource;

    .line 54
    .line 55
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    const-wide/16 v2, 0x1

    .line 60
    .line 61
    cmp-long v2, v2, v0

    .line 62
    .line 63
    if-gtz v2, :cond_2

    .line 64
    .line 65
    const-wide/16 v2, 0x9

    .line 66
    .line 67
    cmp-long v0, v0, v2

    .line 68
    .line 69
    if-gez v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lokio/RealBufferedSource;->readByte()B

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    int-to-long v0, v0

    .line 76
    :goto_0
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getByteCount()J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    iget-wide v4, p1, Lokhttp3/tls/internal/der/DerReader;->limit:J

    .line 81
    .line 82
    cmp-long v2, v2, v4

    .line 83
    .line 84
    if-gez v2, :cond_1

    .line 85
    .line 86
    const/16 v2, 0x8

    .line 87
    .line 88
    shl-long/2addr v0, v2

    .line 89
    invoke-virtual {p0}, Lokio/RealBufferedSource;->readByte()B

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    and-int/lit16 v2, v2, 0xff

    .line 94
    .line 95
    int-to-long v2, v2

    .line 96
    add-long/2addr v0, v2

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :cond_2
    new-instance p0, Ljava/net/ProtocolException;

    .line 104
    .line 105
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string/jumbo v3, "unexpected length: "

    .line 112
    .line 113
    .line 114
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, " at "

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->readUtf8String()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    sget-object p1, Lokhttp3/tls/internal/der/Adapters;->BOOLEAN:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 144
    .line 145
    const-string p1, "GMT"

    .line 146
    .line 147
    invoke-static {p1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 152
    .line 153
    const-string/jumbo v1, "yyyyMMddHHmmss\'Z\'"

    .line 154
    .line 155
    .line 156
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 160
    .line 161
    .line 162
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 167
    .line 168
    .line 169
    move-result-wide p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    return-object p0

    .line 175
    :catch_0
    new-instance p1, Ljava/net/ProtocolException;

    .line 176
    .line 177
    const-string v0, "Failed to parse GeneralizedTime "

    .line 178
    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p1

    .line 187
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public encode(Landroidx/compose/runtime/Latch;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget p0, p0, Lorg/wikipedia/login/LoginClient;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/runtime/Latch;->sink()Lokio/BufferedSink;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast p2, Lokio/ByteString;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/runtime/Latch;->sink()Lokio/BufferedSink;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0, p2}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    check-cast p2, Ljava/lang/Number;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/compose/runtime/Latch;->sink()Lokio/BufferedSink;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-wide/16 p1, 0x0

    .line 52
    .line 53
    cmp-long p1, v0, p1

    .line 54
    .line 55
    if-gez p1, :cond_0

    .line 56
    .line 57
    not-long p1, v0

    .line 58
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    :goto_0
    rsub-int/lit8 p1, p1, 0x41

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    goto :goto_0

    .line 70
    :goto_1
    add-int/lit8 p1, p1, 0x7

    .line 71
    .line 72
    div-int/lit8 p1, p1, 0x8

    .line 73
    .line 74
    add-int/lit8 p1, p1, -0x1

    .line 75
    .line 76
    mul-int/lit8 p1, p1, 0x8

    .line 77
    .line 78
    const/4 p2, 0x0

    .line 79
    const/4 v2, -0x8

    .line 80
    invoke-static {p1, p2, v2}, Lcoil3/util/ContextsKt;->getProgressionLastElement(III)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-gt p2, p1, :cond_1

    .line 85
    .line 86
    :goto_2
    shr-long v2, v0, p1

    .line 87
    .line 88
    long-to-int v2, v2

    .line 89
    invoke-interface {p0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 90
    .line 91
    .line 92
    if-eq p1, p2, :cond_1

    .line 93
    .line 94
    add-int/lit8 p1, p1, -0x8

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_1
    return-void

    .line 98
    :pswitch_2
    check-cast p2, Ljava/lang/Number;

    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    sget-object p0, Lokhttp3/tls/internal/der/Adapters;->BOOLEAN:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 108
    .line 109
    const-string p0, "GMT"

    .line 110
    .line 111
    invoke-static {p0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    new-instance p2, Ljava/text/SimpleDateFormat;

    .line 116
    .line 117
    const-string/jumbo v2, "yyyyMMddHHmmss\'Z\'"

    .line 118
    .line 119
    .line 120
    invoke-direct {p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p2, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroidx/compose/runtime/Latch;->sink()Lokio/BufferedSink;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-interface {p1, p0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLoginToken(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lorg/wikipedia/login/LoginClient$getLoginToken$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lorg/wikipedia/login/LoginClient$getLoginToken$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/login/LoginClient$getLoginToken$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/login/LoginClient$getLoginToken$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/login/LoginClient$getLoginToken$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/login/LoginClient$getLoginToken$1;-><init>(Lorg/wikipedia/login/LoginClient;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/login/LoginClient$getLoginToken$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/login/LoginClient$getLoginToken$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 51
    .line 52
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iput v3, v0, Lorg/wikipedia/login/LoginClient$getLoginToken$1;->label:I

    .line 57
    .line 58
    invoke-interface {p0, v0}, Lorg/wikipedia/dataclient/Service;->getLoginToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-ne p0, p2, :cond_3

    .line 63
    .line 64
    return-object p2

    .line 65
    :cond_3
    :goto_1
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 66
    .line 67
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 68
    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->tokens:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;

    .line 72
    .line 73
    if-eqz p0, :cond_4

    .line 74
    .line 75
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;->login:Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    move-object p0, v2

    .line 79
    :goto_2
    if-eqz p0, :cond_5

    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_5
    const-string p0, "Received empty login token."

    .line 83
    .line 84
    invoke-static {p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-object v2
.end method

.method public loginBlocking(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    instance-of v2, v1, Lorg/wikipedia/login/LoginClient$loginBlocking$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lorg/wikipedia/login/LoginClient$loginBlocking$1;

    .line 11
    .line 12
    iget v3, v2, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->label:I

    .line 22
    .line 23
    :goto_0
    move-object v14, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v2, Lorg/wikipedia/login/LoginClient$loginBlocking$1;

    .line 26
    .line 27
    invoke-direct {v2, v0, v1}, Lorg/wikipedia/login/LoginClient$loginBlocking$1;-><init>(Lorg/wikipedia/login/LoginClient;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v1, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v3, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->label:I

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    const/4 v5, 0x2

    .line 39
    const/4 v6, 0x1

    .line 40
    const/4 v7, 0x0

    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    if-eq v3, v6, :cond_3

    .line 44
    .line 45
    if-eq v3, v5, :cond_2

    .line 46
    .line 47
    if-ne v3, v4, :cond_1

    .line 48
    .line 49
    iget-object v0, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$9:Lorg/wikipedia/login/LoginResult;

    .line 50
    .line 51
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object v2, v1

    .line 55
    move-object v1, v7

    .line 56
    goto/16 :goto_7

    .line 57
    .line 58
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v7

    .line 64
    :cond_2
    iget v0, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->I$0:I

    .line 65
    .line 66
    iget-object v3, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$2:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v5, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 69
    .line 70
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    move-object v4, v5

    .line 74
    move-object v5, v3

    .line 75
    move-object v3, v1

    .line 76
    move-object v1, v7

    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_3
    iget-object v0, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$2:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$1:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v6, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 84
    .line 85
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    move v8, v4

    .line 89
    move-object v4, v3

    .line 90
    move v3, v8

    .line 91
    move-object v8, v0

    .line 92
    move-object v0, v6

    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 99
    .line 100
    const v1, 0x7f120621

    .line 101
    .line 102
    .line 103
    const-string v3, ""

    .line 104
    .line 105
    invoke-static {v1, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    if-eqz v8, :cond_6

    .line 110
    .line 111
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-nez v8, :cond_5

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    invoke-static {v1, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v3}, Lj$/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDateTime;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const-wide/16 v8, 0x1

    .line 127
    .line 128
    invoke-virtual {v3, v8, v9}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-virtual {v3, v8}, Lj$/time/LocalDateTime;->isAfter(Lj$/time/chrono/ChronoLocalDateTime;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_6

    .line 141
    .line 142
    new-instance v0, Lorg/wikipedia/login/LoginResult;

    .line 143
    .line 144
    const/4 v6, 0x0

    .line 145
    const/16 v7, 0xe0

    .line 146
    .line 147
    const-string v2, "FAIL"

    .line 148
    .line 149
    const-string v5, "Background login limit reached."

    .line 150
    .line 151
    move-object/from16 v1, p1

    .line 152
    .line 153
    move-object/from16 v3, p2

    .line 154
    .line 155
    move-object/from16 v4, p3

    .line 156
    .line 157
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/login/LoginResult;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    .line 159
    .line 160
    return-object v0

    .line 161
    :cond_6
    :goto_2
    move-object/from16 v3, p1

    .line 162
    .line 163
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    invoke-virtual {v8}, Lj$/time/LocalDateTime;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-static {v1, v8}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iput-object v3, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 175
    .line 176
    move-object/from16 v1, p2

    .line 177
    .line 178
    iput-object v1, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$1:Ljava/lang/String;

    .line 179
    .line 180
    move-object/from16 v8, p3

    .line 181
    .line 182
    iput-object v8, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$2:Ljava/lang/String;

    .line 183
    .line 184
    iput v6, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->label:I

    .line 185
    .line 186
    invoke-virtual {v0, v3, v14}, Lorg/wikipedia/login/LoginClient;->getLoginToken(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-ne v0, v2, :cond_7

    .line 191
    .line 192
    goto/16 :goto_6

    .line 193
    .line 194
    :cond_7
    move-object/from16 v18, v1

    .line 195
    .line 196
    move-object v1, v0

    .line 197
    move-object v0, v3

    .line 198
    move v3, v4

    .line 199
    move-object/from16 v4, v18

    .line 200
    .line 201
    :goto_3
    move-object v12, v1

    .line 202
    check-cast v12, Ljava/lang/String;

    .line 203
    .line 204
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 205
    .line 206
    move v1, v3

    .line 207
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    iput-object v0, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 212
    .line 213
    iput-object v7, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$1:Ljava/lang/String;

    .line 214
    .line 215
    iput-object v8, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$2:Ljava/lang/String;

    .line 216
    .line 217
    const/4 v6, 0x0

    .line 218
    iput v6, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->I$0:I

    .line 219
    .line 220
    iput v5, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->label:I

    .line 221
    .line 222
    move v5, v6

    .line 223
    const/4 v6, 0x0

    .line 224
    move-object v9, v7

    .line 225
    const/4 v7, 0x0

    .line 226
    move v10, v5

    .line 227
    move-object v5, v8

    .line 228
    const/4 v8, 0x0

    .line 229
    move-object v11, v9

    .line 230
    const/4 v9, 0x0

    .line 231
    move v13, v10

    .line 232
    const/4 v10, 0x0

    .line 233
    move-object v15, v11

    .line 234
    const-string v11, "https://wikipedia.org/"

    .line 235
    .line 236
    move/from16 v16, v13

    .line 237
    .line 238
    const/4 v13, 0x0

    .line 239
    move-object/from16 v17, v15

    .line 240
    .line 241
    const/16 v15, 0x404

    .line 242
    .line 243
    move-object/from16 v1, v17

    .line 244
    .line 245
    invoke-static/range {v3 .. v15}, Lorg/wikipedia/dataclient/Service$-CC;->postLogIn$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    if-ne v3, v2, :cond_8

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_8
    move-object v4, v0

    .line 253
    move/from16 v0, v16

    .line 254
    .line 255
    :goto_4
    check-cast v3, Lorg/wikipedia/login/LoginResponse;

    .line 256
    .line 257
    invoke-virtual {v3, v5, v4}, Lorg/wikipedia/login/LoginResponse;->toLoginResult(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/login/LoginResult;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    if-eqz v3, :cond_12

    .line 262
    .line 263
    const-string v5, "PASS"

    .line 264
    .line 265
    iget-object v6, v3, Lorg/wikipedia/login/LoginResult;->status:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-eqz v5, :cond_a

    .line 272
    .line 273
    iget-object v5, v3, Lorg/wikipedia/login/LoginResult;->userName:Ljava/lang/String;

    .line 274
    .line 275
    if-eqz v5, :cond_a

    .line 276
    .line 277
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    if-nez v5, :cond_9

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_9
    return-object v3

    .line 285
    :cond_a
    :goto_5
    sget-object v5, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 286
    .line 287
    invoke-static {v4}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    iput-object v1, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 292
    .line 293
    iput-object v1, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$1:Ljava/lang/String;

    .line 294
    .line 295
    iput-object v1, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$2:Ljava/lang/String;

    .line 296
    .line 297
    iput-object v3, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->L$9:Lorg/wikipedia/login/LoginResult;

    .line 298
    .line 299
    iput v0, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->I$0:I

    .line 300
    .line 301
    const/4 v0, 0x3

    .line 302
    iput v0, v14, Lorg/wikipedia/login/LoginClient$loginBlocking$1;->label:I

    .line 303
    .line 304
    invoke-interface {v4, v14}, Lorg/wikipedia/dataclient/Service;->getAuthManagerForLogin(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    if-ne v0, v2, :cond_b

    .line 309
    .line 310
    :goto_6
    return-object v2

    .line 311
    :cond_b
    move-object v2, v0

    .line 312
    move-object v0, v3

    .line 313
    :goto_7
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 314
    .line 315
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 316
    .line 317
    if-eqz v2, :cond_c

    .line 318
    .line 319
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->captchaId()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    goto :goto_8

    .line 324
    :cond_c
    move-object v7, v1

    .line 325
    :goto_8
    if-eqz v7, :cond_e

    .line 326
    .line 327
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-nez v1, :cond_d

    .line 332
    .line 333
    goto :goto_9

    .line 334
    :cond_d
    const v1, 0x7f120349

    .line 335
    .line 336
    .line 337
    invoke-static {v1}, Lorg/wikipedia/login/LoginClient;->showToast(I)V

    .line 338
    .line 339
    .line 340
    return-object v0

    .line 341
    :cond_e
    :goto_9
    const-string v1, "UI"

    .line 342
    .line 343
    iget-object v2, v0, Lorg/wikipedia/login/LoginResult;->status:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_11

    .line 350
    .line 351
    instance-of v1, v0, Lorg/wikipedia/login/LoginOATHResult;

    .line 352
    .line 353
    if-nez v1, :cond_10

    .line 354
    .line 355
    instance-of v1, v0, Lorg/wikipedia/login/LoginModuleSelectResult;

    .line 356
    .line 357
    if-eqz v1, :cond_f

    .line 358
    .line 359
    goto :goto_a

    .line 360
    :cond_f
    instance-of v1, v0, Lorg/wikipedia/login/LoginEmailAuthResult;

    .line 361
    .line 362
    if-eqz v1, :cond_11

    .line 363
    .line 364
    const v1, 0x7f12034c

    .line 365
    .line 366
    .line 367
    invoke-static {v1}, Lorg/wikipedia/login/LoginClient;->showToast(I)V

    .line 368
    .line 369
    .line 370
    return-object v0

    .line 371
    :cond_10
    :goto_a
    const v1, 0x7f120347

    .line 372
    .line 373
    .line 374
    invoke-static {v1}, Lorg/wikipedia/login/LoginClient;->showToast(I)V

    .line 375
    .line 376
    .line 377
    :cond_11
    return-object v0

    .line 378
    :cond_12
    const-string v0, "Unexpected response when logging in."

    .line 379
    .line 380
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    return-object v1
.end method

.method public matchesSocket(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "com.google.android.gms.org.conscrypt."

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method
