.class public final synthetic Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 98

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/unit/Dp;

    .line 13
    .line 14
    const/high16 v1, 0x42400000    # 48.0f

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :pswitch_1
    sget-wide v2, Landroidx/compose/material3/tokens/ColorLightTokens;->Primary:J

    .line 28
    .line 29
    sget-wide v4, Landroidx/compose/material3/tokens/ColorLightTokens;->OnPrimary:J

    .line 30
    .line 31
    sget-wide v6, Landroidx/compose/material3/tokens/ColorLightTokens;->PrimaryContainer:J

    .line 32
    .line 33
    sget-wide v8, Landroidx/compose/material3/tokens/ColorLightTokens;->OnPrimaryContainer:J

    .line 34
    .line 35
    sget-wide v10, Landroidx/compose/material3/tokens/ColorLightTokens;->InversePrimary:J

    .line 36
    .line 37
    sget-wide v12, Landroidx/compose/material3/tokens/ColorLightTokens;->Secondary:J

    .line 38
    .line 39
    sget-wide v14, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSecondary:J

    .line 40
    .line 41
    sget-wide v16, Landroidx/compose/material3/tokens/ColorLightTokens;->SecondaryContainer:J

    .line 42
    .line 43
    sget-wide v18, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSecondaryContainer:J

    .line 44
    .line 45
    sget-wide v20, Landroidx/compose/material3/tokens/ColorLightTokens;->Tertiary:J

    .line 46
    .line 47
    sget-wide v22, Landroidx/compose/material3/tokens/ColorLightTokens;->OnTertiary:J

    .line 48
    .line 49
    sget-wide v24, Landroidx/compose/material3/tokens/ColorLightTokens;->TertiaryContainer:J

    .line 50
    .line 51
    sget-wide v26, Landroidx/compose/material3/tokens/ColorLightTokens;->OnTertiaryContainer:J

    .line 52
    .line 53
    sget-wide v28, Landroidx/compose/material3/tokens/ColorLightTokens;->Background:J

    .line 54
    .line 55
    sget-wide v30, Landroidx/compose/material3/tokens/ColorLightTokens;->OnBackground:J

    .line 56
    .line 57
    sget-wide v32, Landroidx/compose/material3/tokens/ColorLightTokens;->Surface:J

    .line 58
    .line 59
    sget-wide v34, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSurface:J

    .line 60
    .line 61
    sget-wide v36, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceVariant:J

    .line 62
    .line 63
    sget-wide v38, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSurfaceVariant:J

    .line 64
    .line 65
    sget-wide v42, Landroidx/compose/material3/tokens/ColorLightTokens;->InverseSurface:J

    .line 66
    .line 67
    sget-wide v44, Landroidx/compose/material3/tokens/ColorLightTokens;->InverseOnSurface:J

    .line 68
    .line 69
    sget-wide v46, Landroidx/compose/material3/tokens/ColorLightTokens;->Error:J

    .line 70
    .line 71
    sget-wide v48, Landroidx/compose/material3/tokens/ColorLightTokens;->OnError:J

    .line 72
    .line 73
    sget-wide v50, Landroidx/compose/material3/tokens/ColorLightTokens;->ErrorContainer:J

    .line 74
    .line 75
    sget-wide v52, Landroidx/compose/material3/tokens/ColorLightTokens;->OnErrorContainer:J

    .line 76
    .line 77
    sget-wide v54, Landroidx/compose/material3/tokens/ColorLightTokens;->Outline:J

    .line 78
    .line 79
    sget-wide v56, Landroidx/compose/material3/tokens/ColorLightTokens;->OutlineVariant:J

    .line 80
    .line 81
    sget-wide v58, Landroidx/compose/material3/tokens/ColorLightTokens;->Scrim:J

    .line 82
    .line 83
    sget-wide v60, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceBright:J

    .line 84
    .line 85
    sget-wide v64, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainer:J

    .line 86
    .line 87
    sget-wide v66, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerHigh:J

    .line 88
    .line 89
    sget-wide v68, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerHighest:J

    .line 90
    .line 91
    sget-wide v70, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerLow:J

    .line 92
    .line 93
    sget-wide v72, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerLowest:J

    .line 94
    .line 95
    sget-wide v62, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceDim:J

    .line 96
    .line 97
    sget-wide v74, Landroidx/compose/material3/tokens/ColorLightTokens;->PrimaryFixed:J

    .line 98
    .line 99
    sget-wide v76, Landroidx/compose/material3/tokens/ColorLightTokens;->PrimaryFixedDim:J

    .line 100
    .line 101
    sget-wide v78, Landroidx/compose/material3/tokens/ColorLightTokens;->OnPrimaryFixed:J

    .line 102
    .line 103
    sget-wide v80, Landroidx/compose/material3/tokens/ColorLightTokens;->OnPrimaryFixedVariant:J

    .line 104
    .line 105
    sget-wide v82, Landroidx/compose/material3/tokens/ColorLightTokens;->SecondaryFixed:J

    .line 106
    .line 107
    sget-wide v84, Landroidx/compose/material3/tokens/ColorLightTokens;->SecondaryFixedDim:J

    .line 108
    .line 109
    sget-wide v86, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSecondaryFixed:J

    .line 110
    .line 111
    sget-wide v88, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSecondaryFixedVariant:J

    .line 112
    .line 113
    sget-wide v90, Landroidx/compose/material3/tokens/ColorLightTokens;->TertiaryFixed:J

    .line 114
    .line 115
    sget-wide v92, Landroidx/compose/material3/tokens/ColorLightTokens;->TertiaryFixedDim:J

    .line 116
    .line 117
    sget-wide v94, Landroidx/compose/material3/tokens/ColorLightTokens;->OnTertiaryFixed:J

    .line 118
    .line 119
    sget-wide v96, Landroidx/compose/material3/tokens/ColorLightTokens;->OnTertiaryFixedVariant:J

    .line 120
    .line 121
    new-instance v1, Landroidx/compose/material3/ColorScheme;

    .line 122
    .line 123
    move-wide/from16 v40, v2

    .line 124
    .line 125
    invoke-direct/range {v1 .. v97}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    .line 126
    .line 127
    .line 128
    return-object v1

    .line 129
    :pswitch_2
    sget-object v0, Landroidx/compose/material3/AppBarKt;->LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 130
    .line 131
    sget-object v0, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE$1:Landroidx/compose/material3/TextFieldDefaults;

    .line 132
    .line 133
    return-object v0

    .line 134
    :pswitch_3
    sget-object v0, Landroidx/compose/material3/AppBarKt;->LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 135
    .line 136
    sget-object v0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;->INSTANCE:Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    .line 137
    .line 138
    return-object v0

    .line 139
    :pswitch_4
    new-instance v0, Landroidx/compose/material3/TopAppBarState;

    .line 140
    .line 141
    const v1, -0x800001

    .line 142
    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    invoke-direct {v0, v1, v2, v2}, Landroidx/compose/material3/TopAppBarState;-><init>(FFF)V

    .line 146
    .line 147
    .line 148
    return-object v0

    .line 149
    :pswitch_5
    sget-object v0, Landroidx/compose/material3/AlertDialogKt;->DialogPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 150
    .line 151
    sget-object v0, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;->INSTANCE:Landroidx/compose/material3/DefaultBasicAlertDialogOverride;

    .line 152
    .line 153
    return-object v0

    .line 154
    :pswitch_6
    sget-object v0, Landroidx/compose/foundation/text/selection/DefaultTextSelectionColors_androidKt;->DefaultTextSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 155
    .line 156
    return-object v0

    .line 157
    :pswitch_7
    return-object v4

    .line 158
    :pswitch_8
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 159
    .line 160
    const-wide/16 v1, 0x1

    .line 161
    .line 162
    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;-><init>(J)V

    .line 163
    .line 164
    .line 165
    return-object v0

    .line 166
    :pswitch_9
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 167
    .line 168
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 169
    .line 170
    return-object v0

    .line 171
    :pswitch_a
    return-object v4

    .line 172
    :pswitch_b
    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    .line 173
    .line 174
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 175
    .line 176
    .line 177
    return-object v0

    .line 178
    :pswitch_c
    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    .line 179
    .line 180
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 181
    .line 182
    .line 183
    return-object v0

    .line 184
    :pswitch_d
    return-object v4

    .line 185
    :pswitch_e
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 186
    .line 187
    const v1, 0x4dffeb3b    # 5.3670077E8f

    .line 188
    .line 189
    .line 190
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 191
    .line 192
    .line 193
    move-result-wide v1

    .line 194
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 195
    .line 196
    .line 197
    return-object v0

    .line 198
    :pswitch_f
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 199
    .line 200
    filled-new-array {v3}, [I

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    filled-new-array {v3}, [I

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;-><init>([I[I)V

    .line 209
    .line 210
    .line 211
    return-object v0

    .line 212
    :pswitch_10
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 213
    .line 214
    invoke-direct {v0, v3, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;-><init>(II)V

    .line 215
    .line 216
    .line 217
    return-object v0

    .line 218
    :pswitch_11
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 219
    .line 220
    invoke-direct {v0, v3, v3}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(II)V

    .line 221
    .line 222
    .line 223
    return-object v0

    .line 224
    :pswitch_12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 225
    .line 226
    return-object v0

    .line 227
    :pswitch_13
    new-instance v0, Landroidx/compose/foundation/ScrollState;

    .line 228
    .line 229
    invoke-direct {v0, v3}, Landroidx/compose/foundation/ScrollState;-><init>(I)V

    .line 230
    .line 231
    .line 232
    return-object v0

    .line 233
    :pswitch_14
    new-instance v0, Landroidx/compose/foundation/OverscrollConfiguration;

    .line 234
    .line 235
    invoke-direct {v0}, Landroidx/compose/foundation/OverscrollConfiguration;-><init>()V

    .line 236
    .line 237
    .line 238
    return-object v0

    .line 239
    :pswitch_15
    sget-object v0, Landroidx/compose/foundation/IndicationKt;->LocalIndication:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 240
    .line 241
    sget-object v0, Landroidx/compose/foundation/DefaultDebugIndication;->INSTANCE:Landroidx/compose/foundation/DefaultDebugIndication;

    .line 242
    .line 243
    return-object v0

    .line 244
    :pswitch_16
    sget-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    .line 245
    .line 246
    invoke-virtual {v0}, Lkotlin/random/AbstractPlatformRandom;->getImpl()Ljava/util/Random;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    const/high16 v1, 0x7fff0000

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    const/high16 v1, 0x10000

    .line 257
    .line 258
    add-int/2addr v0, v1

    .line 259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    return-object v0

    .line 264
    :pswitch_17
    return-object v4

    .line 265
    :pswitch_18
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 266
    .line 267
    return-object v0

    .line 268
    :pswitch_19
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    return-object v0

    .line 277
    :pswitch_1a
    :try_start_0
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 278
    .line 279
    const-string v1, "mServedView"

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    const/4 v2, 0x1

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 287
    .line 288
    .line 289
    const-string v3, "mNextServedView"

    .line 290
    .line 291
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 296
    .line 297
    .line 298
    const-string v4, "mH"

    .line 299
    .line 300
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 305
    .line 306
    .line 307
    new-instance v2, Landroidx/activity/ImmLeaksCleaner$ValidCleaner;

    .line 308
    .line 309
    invoke-direct {v2, v0, v1, v3}, Landroidx/activity/ImmLeaksCleaner$ValidCleaner;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .line 311
    .line 312
    goto :goto_0

    .line 313
    :catch_0
    sget-object v2, Landroidx/activity/ImmLeaksCleaner$FailedInitialization;->INSTANCE:Landroidx/activity/ImmLeaksCleaner$FailedInitialization;

    .line 314
    .line 315
    :goto_0
    return-object v2

    .line 316
    nop

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
