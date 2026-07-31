.class public final synthetic Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :pswitch_0
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 22
    .line 23
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    sget-wide v2, Landroidx/compose/material3/tokens/ColorLightTokens;->Primary:J

    .line 27
    .line 28
    sget-wide v4, Landroidx/compose/material3/tokens/ColorLightTokens;->OnPrimary:J

    .line 29
    .line 30
    sget-wide v6, Landroidx/compose/material3/tokens/ColorLightTokens;->PrimaryContainer:J

    .line 31
    .line 32
    sget-wide v8, Landroidx/compose/material3/tokens/ColorLightTokens;->OnPrimaryContainer:J

    .line 33
    .line 34
    sget-wide v10, Landroidx/compose/material3/tokens/ColorLightTokens;->InversePrimary:J

    .line 35
    .line 36
    sget-wide v12, Landroidx/compose/material3/tokens/ColorLightTokens;->Secondary:J

    .line 37
    .line 38
    sget-wide v14, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSecondary:J

    .line 39
    .line 40
    sget-wide v16, Landroidx/compose/material3/tokens/ColorLightTokens;->SecondaryContainer:J

    .line 41
    .line 42
    sget-wide v18, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSecondaryContainer:J

    .line 43
    .line 44
    sget-wide v20, Landroidx/compose/material3/tokens/ColorLightTokens;->Tertiary:J

    .line 45
    .line 46
    sget-wide v22, Landroidx/compose/material3/tokens/ColorLightTokens;->OnTertiary:J

    .line 47
    .line 48
    sget-wide v24, Landroidx/compose/material3/tokens/ColorLightTokens;->TertiaryContainer:J

    .line 49
    .line 50
    sget-wide v26, Landroidx/compose/material3/tokens/ColorLightTokens;->OnTertiaryContainer:J

    .line 51
    .line 52
    sget-wide v28, Landroidx/compose/material3/tokens/ColorLightTokens;->Background:J

    .line 53
    .line 54
    sget-wide v30, Landroidx/compose/material3/tokens/ColorLightTokens;->OnBackground:J

    .line 55
    .line 56
    sget-wide v32, Landroidx/compose/material3/tokens/ColorLightTokens;->Surface:J

    .line 57
    .line 58
    sget-wide v34, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSurface:J

    .line 59
    .line 60
    sget-wide v36, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceVariant:J

    .line 61
    .line 62
    sget-wide v38, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSurfaceVariant:J

    .line 63
    .line 64
    sget-wide v42, Landroidx/compose/material3/tokens/ColorLightTokens;->InverseSurface:J

    .line 65
    .line 66
    sget-wide v44, Landroidx/compose/material3/tokens/ColorLightTokens;->InverseOnSurface:J

    .line 67
    .line 68
    sget-wide v46, Landroidx/compose/material3/tokens/ColorLightTokens;->Error:J

    .line 69
    .line 70
    sget-wide v48, Landroidx/compose/material3/tokens/ColorLightTokens;->OnError:J

    .line 71
    .line 72
    sget-wide v50, Landroidx/compose/material3/tokens/ColorLightTokens;->ErrorContainer:J

    .line 73
    .line 74
    sget-wide v52, Landroidx/compose/material3/tokens/ColorLightTokens;->OnErrorContainer:J

    .line 75
    .line 76
    sget-wide v54, Landroidx/compose/material3/tokens/ColorLightTokens;->Outline:J

    .line 77
    .line 78
    sget-wide v56, Landroidx/compose/material3/tokens/ColorLightTokens;->OutlineVariant:J

    .line 79
    .line 80
    sget-wide v58, Landroidx/compose/material3/tokens/ColorLightTokens;->Scrim:J

    .line 81
    .line 82
    sget-wide v60, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceBright:J

    .line 83
    .line 84
    sget-wide v64, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainer:J

    .line 85
    .line 86
    sget-wide v66, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerHigh:J

    .line 87
    .line 88
    sget-wide v68, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerHighest:J

    .line 89
    .line 90
    sget-wide v70, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerLow:J

    .line 91
    .line 92
    sget-wide v72, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerLowest:J

    .line 93
    .line 94
    sget-wide v62, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceDim:J

    .line 95
    .line 96
    sget-wide v74, Landroidx/compose/material3/tokens/ColorLightTokens;->PrimaryFixed:J

    .line 97
    .line 98
    sget-wide v76, Landroidx/compose/material3/tokens/ColorLightTokens;->PrimaryFixedDim:J

    .line 99
    .line 100
    sget-wide v78, Landroidx/compose/material3/tokens/ColorLightTokens;->OnPrimaryFixed:J

    .line 101
    .line 102
    sget-wide v80, Landroidx/compose/material3/tokens/ColorLightTokens;->OnPrimaryFixedVariant:J

    .line 103
    .line 104
    sget-wide v82, Landroidx/compose/material3/tokens/ColorLightTokens;->SecondaryFixed:J

    .line 105
    .line 106
    sget-wide v84, Landroidx/compose/material3/tokens/ColorLightTokens;->SecondaryFixedDim:J

    .line 107
    .line 108
    sget-wide v86, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSecondaryFixed:J

    .line 109
    .line 110
    sget-wide v88, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSecondaryFixedVariant:J

    .line 111
    .line 112
    sget-wide v90, Landroidx/compose/material3/tokens/ColorLightTokens;->TertiaryFixed:J

    .line 113
    .line 114
    sget-wide v92, Landroidx/compose/material3/tokens/ColorLightTokens;->TertiaryFixedDim:J

    .line 115
    .line 116
    sget-wide v94, Landroidx/compose/material3/tokens/ColorLightTokens;->OnTertiaryFixed:J

    .line 117
    .line 118
    sget-wide v96, Landroidx/compose/material3/tokens/ColorLightTokens;->OnTertiaryFixedVariant:J

    .line 119
    .line 120
    new-instance v1, Landroidx/compose/material3/ColorScheme;

    .line 121
    .line 122
    move-wide/from16 v40, v2

    .line 123
    .line 124
    invoke-direct/range {v1 .. v97}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    .line 125
    .line 126
    .line 127
    return-object v1

    .line 128
    :pswitch_2
    sget-object v0, Landroidx/compose/material3/AppBarKt;->LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 129
    .line 130
    sget-object v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE$1:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    .line 131
    .line 132
    return-object v0

    .line 133
    :pswitch_3
    sget-object v0, Landroidx/compose/material3/AppBarKt;->LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 134
    .line 135
    sget-object v0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;->INSTANCE:Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    .line 136
    .line 137
    return-object v0

    .line 138
    :pswitch_4
    sget-object v0, Landroidx/compose/material3/AlertDialogKt;->DialogPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 139
    .line 140
    sget-object v0, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;->INSTANCE:Landroidx/compose/material3/DefaultBasicAlertDialogOverride;

    .line 141
    .line 142
    return-object v0

    .line 143
    :pswitch_5
    sget-object v0, Landroidx/compose/foundation/text/selection/DefaultTextSelectionColors_androidKt;->DefaultTextSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 144
    .line 145
    return-object v0

    .line 146
    :pswitch_6
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->LocalSelectionRegistrar:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 147
    .line 148
    return-object v5

    .line 149
    :pswitch_7
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 150
    .line 151
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 152
    .line 153
    return-object v0

    .line 154
    :pswitch_8
    sget-object v0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProviderKt;->LocalTextContextMenuDropdownProvider:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 155
    .line 156
    return-object v5

    .line 157
    :pswitch_9
    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    .line 158
    .line 159
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 160
    .line 161
    .line 162
    return-object v0

    .line 163
    :pswitch_a
    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    .line 164
    .line 165
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 166
    .line 167
    .line 168
    return-object v0

    .line 169
    :pswitch_b
    sget-object v0, Landroidx/compose/foundation/text/BasicText_androidKt;->LocalBackgroundTextMeasurementExecutor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 170
    .line 171
    return-object v5

    .line 172
    :pswitch_c
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 173
    .line 174
    const v1, 0x4dffeb3b    # 5.3670077E8f

    .line 175
    .line 176
    .line 177
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 178
    .line 179
    .line 180
    move-result-wide v1

    .line 181
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 182
    .line 183
    .line 184
    return-object v0

    .line 185
    :pswitch_d
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 186
    .line 187
    invoke-direct {v0, v4, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridState;-><init>(II)V

    .line 188
    .line 189
    .line 190
    return-object v0

    .line 191
    :pswitch_e
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 192
    .line 193
    invoke-direct {v0, v4, v4}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(II)V

    .line 194
    .line 195
    .line 196
    return-object v0

    .line 197
    :pswitch_f
    sget v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->mouseToTouchSlopRatio:F

    .line 198
    .line 199
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 200
    .line 201
    return-object v0

    .line 202
    :pswitch_10
    new-instance v0, Landroidx/compose/foundation/ScrollState;

    .line 203
    .line 204
    invoke-direct {v0, v4}, Landroidx/compose/foundation/ScrollState;-><init>(I)V

    .line 205
    .line 206
    .line 207
    return-object v0

    .line 208
    :pswitch_11
    new-instance v0, Landroidx/compose/foundation/OverscrollConfiguration;

    .line 209
    .line 210
    invoke-direct {v0}, Landroidx/compose/foundation/OverscrollConfiguration;-><init>()V

    .line 211
    .line 212
    .line 213
    return-object v0

    .line 214
    :pswitch_12
    sget-object v0, Landroidx/compose/foundation/IndicationKt;->LocalIndication:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 215
    .line 216
    sget-object v0, Landroidx/compose/foundation/DefaultDebugIndication;->INSTANCE:Landroidx/compose/foundation/DefaultDebugIndication;

    .line 217
    .line 218
    return-object v0

    .line 219
    :pswitch_13
    sget-object v0, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;->backportedFixManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 220
    .line 221
    new-instance v0, Landroidx/core/backported/fixes/BackportedFixManager;

    .line 222
    .line 223
    invoke-direct {v0}, Landroidx/core/backported/fixes/BackportedFixManager;-><init>()V

    .line 224
    .line 225
    .line 226
    return-object v0

    .line 227
    :pswitch_14
    new-instance v0, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    .line 228
    .line 229
    invoke-direct {v0}, Landroid/hardware/camera2/CameraCaptureSession;-><init>()V

    .line 230
    .line 231
    .line 232
    return-object v0

    .line 233
    :pswitch_15
    new-instance v0, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .line 237
    .line 238
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 239
    .line 240
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 241
    .line 242
    .line 243
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 244
    .line 245
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1080P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 246
    .line 247
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 248
    .line 249
    invoke-static {v1, v3, v4}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-static {v2, v5, v1, v3, v4}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-static {v1, v3, v4}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-virtual {v2, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 265
    .line 266
    .line 267
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 268
    .line 269
    invoke-static {v1, v5, v4}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-virtual {v2, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 280
    .line 281
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-static {v1, v3, v4}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-virtual {v2, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 289
    .line 290
    .line 291
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->UHD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 292
    .line 293
    invoke-static {v1, v5, v4}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v2, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 304
    .line 305
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-static {v1, v3, v4}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-virtual {v2, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 313
    .line 314
    .line 315
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 316
    .line 317
    invoke-static {v5, v3, v4}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    invoke-static {v2, v5, v1, v3, v4}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    return-object v0

    .line 328
    :pswitch_16
    sget-object v0, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->QUERYABLE_VIC_FCQ_COMBINATIONS$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 329
    .line 330
    new-instance v0, Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .line 334
    .line 335
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 336
    .line 337
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 338
    .line 339
    .line 340
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 341
    .line 342
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1080P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 343
    .line 344
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 345
    .line 346
    invoke-static {v1, v3, v4}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-virtual {v2, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 357
    .line 358
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 359
    .line 360
    .line 361
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S720P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 362
    .line 363
    invoke-static {v1, v5, v4}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-virtual {v2, v1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 374
    .line 375
    invoke-static {v3, v1}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/ArrayList;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 380
    .line 381
    .line 382
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->UHD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 383
    .line 384
    invoke-static {v3, v2}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/ArrayList;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 389
    .line 390
    .line 391
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 392
    .line 393
    invoke-static {v3, v4}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/ArrayList;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 398
    .line 399
    .line 400
    invoke-static {v3, v3}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/ArrayList;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 405
    .line 406
    .line 407
    invoke-static {v5, v1}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/ArrayList;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 412
    .line 413
    .line 414
    invoke-static {v5, v2}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/ArrayList;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 419
    .line 420
    .line 421
    invoke-static {v5, v3}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/ArrayList;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 426
    .line 427
    .line 428
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->X_VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 429
    .line 430
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 431
    .line 432
    invoke-static {v1, v2}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/ArrayList;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 437
    .line 438
    .line 439
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1080P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 440
    .line 441
    invoke-static {v1, v2}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/ArrayList;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 446
    .line 447
    .line 448
    return-object v0

    .line 449
    :pswitch_17
    sget-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    .line 450
    .line 451
    sget-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    .line 452
    .line 453
    invoke-virtual {v0}, Lkotlin/random/AbstractPlatformRandom;->getImpl()Ljava/util/Random;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    const/high16 v1, 0x7fff0000

    .line 458
    .line 459
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    const/high16 v1, 0x10000

    .line 464
    .line 465
    add-int/2addr v0, v1

    .line 466
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    return-object v0

    .line 471
    :pswitch_18
    sget-object v0, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->LocalOnBackPressedDispatcherOwner:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 472
    .line 473
    return-object v5

    .line 474
    :pswitch_19
    sget-object v0, Landroidx/activity/compose/LocalActivityResultRegistryOwner;->LocalComposition:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 475
    .line 476
    return-object v5

    .line 477
    :pswitch_1a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 478
    .line 479
    return-object v0

    .line 480
    :pswitch_1b
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    return-object v0

    .line 489
    :pswitch_1c
    :try_start_0
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 490
    .line 491
    const-string v1, "mServedView"

    .line 492
    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    const/4 v2, 0x1

    .line 498
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 499
    .line 500
    .line 501
    const-string v3, "mNextServedView"

    .line 502
    .line 503
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 508
    .line 509
    .line 510
    const-string v4, "mH"

    .line 511
    .line 512
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 517
    .line 518
    .line 519
    new-instance v2, Landroidx/activity/ImmLeaksCleaner$ValidCleaner;

    .line 520
    .line 521
    invoke-direct {v2, v0, v1, v3}, Landroidx/activity/ImmLeaksCleaner$ValidCleaner;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .line 523
    .line 524
    goto :goto_0

    .line 525
    :catch_0
    sget-object v2, Landroidx/activity/ImmLeaksCleaner$FailedInitialization;->INSTANCE:Landroidx/activity/ImmLeaksCleaner$FailedInitialization;

    .line 526
    .line 527
    :goto_0
    return-object v2

    .line 528
    nop

    .line 529
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
