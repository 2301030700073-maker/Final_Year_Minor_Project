.class public final synthetic Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

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
    .locals 73

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object v0, Landroidx/compose/runtime/tooling/InspectionTablesKt;->LocalInspectionTables:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 10
    .line 11
    return-object v1

    .line 12
    :pswitch_0
    sget-object v0, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->LocalCompositionErrorContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 13
    .line 14
    return-object v1

    .line 15
    :pswitch_1
    sget-object v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->LocalSaveableStateRegistry:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 16
    .line 17
    return-object v1

    .line 18
    :pswitch_2
    new-instance v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 19
    .line 20
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;-><init>(Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :pswitch_3
    sget-object v0, Landroidx/compose/runtime/retain/LocalRetainedValuesStoreKt;->LocalRetainedValuesStore:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 30
    .line 31
    sget-object v0, Landroidx/compose/runtime/retain/ForgetfulRetainedValuesStore;->INSTANCE:Landroidx/compose/runtime/retain/ForgetfulRetainedValuesStore;

    .line 32
    .line 33
    return-object v0

    .line 34
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v1, "CompositionLocal LocalHostDefaultProvider not present"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :pswitch_5
    const-string v0, "Unexpected call to default provider"

    .line 43
    .line 44
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 45
    .line 46
    .line 47
    new-instance v0, Lorg/jsoup/SerializationException;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :pswitch_6
    new-instance v0, Landroidx/compose/material3/Typography;

    .line 54
    .line 55
    invoke-direct {v0}, Landroidx/compose/material3/Typography;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :pswitch_7
    sget-object v0, Landroidx/compose/material3/tokens/TypographyTokensKt;->DefaultTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 60
    .line 61
    return-object v0

    .line 62
    :pswitch_8
    new-instance v0, Landroidx/compose/ui/unit/Dp;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :pswitch_9
    new-instance v0, Landroidx/compose/material3/Shapes;

    .line 70
    .line 71
    invoke-direct {v0}, Landroidx/compose/material3/Shapes;-><init>()V

    .line 72
    .line 73
    .line 74
    return-object v0

    .line 75
    :pswitch_a
    new-instance v0, Landroidx/compose/material3/RippleConfiguration;

    .line 76
    .line 77
    invoke-direct {v0}, Landroidx/compose/material3/RippleConfiguration;-><init>()V

    .line 78
    .line 79
    .line 80
    return-object v0

    .line 81
    :pswitch_b
    sget v0, Landroidx/compose/material3/PrecisionPointer_androidKt;->$r8$clinit:I

    .line 82
    .line 83
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 84
    .line 85
    return-object v0

    .line 86
    :pswitch_c
    new-instance v0, Landroidx/compose/material3/MaterialTheme$Values;

    .line 87
    .line 88
    const/16 v71, -0x1

    .line 89
    .line 90
    const v72, 0xffff

    .line 91
    .line 92
    .line 93
    const-wide/16 v1, 0x0

    .line 94
    .line 95
    const-wide/16 v3, 0x0

    .line 96
    .line 97
    const-wide/16 v5, 0x0

    .line 98
    .line 99
    const-wide/16 v7, 0x0

    .line 100
    .line 101
    const-wide/16 v9, 0x0

    .line 102
    .line 103
    const-wide/16 v11, 0x0

    .line 104
    .line 105
    const-wide/16 v13, 0x0

    .line 106
    .line 107
    const-wide/16 v15, 0x0

    .line 108
    .line 109
    const-wide/16 v17, 0x0

    .line 110
    .line 111
    const-wide/16 v19, 0x0

    .line 112
    .line 113
    const-wide/16 v21, 0x0

    .line 114
    .line 115
    const-wide/16 v23, 0x0

    .line 116
    .line 117
    const-wide/16 v25, 0x0

    .line 118
    .line 119
    const-wide/16 v27, 0x0

    .line 120
    .line 121
    const-wide/16 v29, 0x0

    .line 122
    .line 123
    const-wide/16 v31, 0x0

    .line 124
    .line 125
    const-wide/16 v33, 0x0

    .line 126
    .line 127
    const-wide/16 v35, 0x0

    .line 128
    .line 129
    const-wide/16 v37, 0x0

    .line 130
    .line 131
    const-wide/16 v39, 0x0

    .line 132
    .line 133
    const-wide/16 v41, 0x0

    .line 134
    .line 135
    const-wide/16 v43, 0x0

    .line 136
    .line 137
    const-wide/16 v45, 0x0

    .line 138
    .line 139
    const-wide/16 v47, 0x0

    .line 140
    .line 141
    const-wide/16 v49, 0x0

    .line 142
    .line 143
    const-wide/16 v51, 0x0

    .line 144
    .line 145
    const-wide/16 v53, 0x0

    .line 146
    .line 147
    const-wide/16 v55, 0x0

    .line 148
    .line 149
    const-wide/16 v57, 0x0

    .line 150
    .line 151
    const-wide/16 v59, 0x0

    .line 152
    .line 153
    const-wide/16 v61, 0x0

    .line 154
    .line 155
    const-wide/16 v63, 0x0

    .line 156
    .line 157
    const-wide/16 v65, 0x0

    .line 158
    .line 159
    const-wide/16 v67, 0x0

    .line 160
    .line 161
    const-wide/16 v69, 0x0

    .line 162
    .line 163
    invoke-static/range {v1 .. v72}, Landroidx/compose/material3/ColorSchemeKt;->lightColorScheme-_VG5OTI$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJII)Landroidx/compose/material3/ColorScheme;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    new-instance v2, Landroidx/compose/material3/Typography;

    .line 168
    .line 169
    invoke-direct {v2}, Landroidx/compose/material3/Typography;-><init>()V

    .line 170
    .line 171
    .line 172
    new-instance v3, Landroidx/compose/material3/Shapes;

    .line 173
    .line 174
    invoke-direct {v3}, Landroidx/compose/material3/Shapes;-><init>()V

    .line 175
    .line 176
    .line 177
    sget-object v4, Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;->INSTANCE:Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;

    .line 178
    .line 179
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/material3/MaterialTheme$Values;-><init>(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Typography;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/MotionScheme;)V

    .line 180
    .line 181
    .line 182
    return-object v0

    .line 183
    :pswitch_d
    sget-object v0, Landroidx/compose/material3/MaterialThemeKt;->LocalUsingExpressiveTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 184
    .line 185
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 186
    .line 187
    return-object v0

    .line 188
    :pswitch_e
    new-instance v0, Landroidx/compose/ui/unit/Dp;

    .line 189
    .line 190
    const/high16 v1, 0x42400000    # 48.0f

    .line 191
    .line 192
    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 193
    .line 194
    .line 195
    return-object v0

    .line 196
    :pswitch_f
    sget-object v0, Landroidx/compose/material3/InteractiveComponentSizeKt;->MinimumInteractiveTopAlignmentLine:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 197
    .line 198
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 199
    .line 200
    return-object v0

    .line 201
    :pswitch_10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 202
    .line 203
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    return-object v0

    .line 208
    :pswitch_11
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalTonalElevationEnabled:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 209
    .line 210
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 211
    .line 212
    return-object v0

    .line 213
    :pswitch_12
    sget-object v0, Landroidx/compose/material3/AppBarKt;->LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 214
    .line 215
    sget-object v0, Landroidx/compose/material3/TabRowDefaults;->INSTANCE$1:Landroidx/compose/material3/TabRowDefaults;

    .line 216
    .line 217
    return-object v0

    .line 218
    :pswitch_13
    sget-object v0, Landroidx/compose/material3/AppBarKt;->LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 219
    .line 220
    sget-object v0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;->INSTANCE:Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    .line 221
    .line 222
    return-object v0

    .line 223
    :pswitch_14
    sget-object v0, Landroidx/compose/material3/AlertDialogKt;->DialogPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 224
    .line 225
    sget-object v0, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;->INSTANCE:Landroidx/compose/material3/DefaultBasicAlertDialogOverride;

    .line 226
    .line 227
    return-object v0

    .line 228
    :pswitch_15
    sget-object v0, Landroidx/compose/foundation/text/selection/DefaultTextSelectionColors_androidKt;->DefaultTextSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 229
    .line 230
    return-object v0

    .line 231
    :pswitch_16
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->LocalSelectionRegistrar:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 232
    .line 233
    return-object v1

    .line 234
    :pswitch_17
    sget-object v0, Landroidx/compose/foundation/text/BasicText_androidKt;->LocalBackgroundTextMeasurementExecutor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 235
    .line 236
    return-object v1

    .line 237
    :pswitch_18
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 238
    .line 239
    const/4 v1, 0x0

    .line 240
    invoke-direct {v0, v1, v1}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(II)V

    .line 241
    .line 242
    .line 243
    return-object v0

    .line 244
    :pswitch_19
    new-instance v0, Landroidx/compose/foundation/OverscrollConfiguration;

    .line 245
    .line 246
    invoke-direct {v0}, Landroidx/compose/foundation/OverscrollConfiguration;-><init>()V

    .line 247
    .line 248
    .line 249
    return-object v0

    .line 250
    :pswitch_1a
    sget-object v0, Landroidx/compose/foundation/IndicationKt;->LocalIndication:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 251
    .line 252
    sget-object v0, Landroidx/compose/foundation/DefaultDebugIndication;->INSTANCE:Landroidx/compose/foundation/DefaultDebugIndication;

    .line 253
    .line 254
    return-object v0

    .line 255
    :pswitch_1b
    sget-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    .line 256
    .line 257
    sget-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    .line 258
    .line 259
    invoke-virtual {v0}, Lkotlin/random/AbstractPlatformRandom;->getImpl()Ljava/util/Random;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const/high16 v1, 0x7fff0000

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    const/high16 v1, 0x10000

    .line 270
    .line 271
    add-int/2addr v0, v1

    .line 272
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    return-object v0

    .line 277
    :pswitch_1c
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
