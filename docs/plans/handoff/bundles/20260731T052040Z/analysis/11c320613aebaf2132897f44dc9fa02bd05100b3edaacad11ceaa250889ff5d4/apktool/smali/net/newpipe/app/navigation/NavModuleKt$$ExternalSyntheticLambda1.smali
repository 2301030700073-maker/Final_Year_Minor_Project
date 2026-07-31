.class public final synthetic Lnet/newpipe/app/navigation/NavModuleKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    const/16 p1, 0xa

    .line 2
    .line 3
    iput p1, p0, Lnet/newpipe/app/navigation/NavModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IB)V
    .locals 0

    .line 9
    iput p1, p0, Lnet/newpipe/app/navigation/NavModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget p0, p0, Lnet/newpipe/app/navigation/NavModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const-class v3, Landroid/content/Context;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    packed-switch p0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 14
    .line 15
    check-cast p2, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {p1, p0}, Lorg/jetbrains/compose/resources/AndroidContextProviderKt;->PreviewContextConfigurationEffect(Landroidx/compose/runtime/Composer;I)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :pswitch_0
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 29
    .line 30
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance p0, Lnet/newpipe/app/viewmodel/settings/SettingsViewModel;

    .line 39
    .line 40
    const-class p2, Lnet/newpipe/app/platform/BuildInfo;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2, v4}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lnet/newpipe/app/platform/BuildInfo;

    .line 51
    .line 52
    invoke-direct {p0, p1}, Lnet/newpipe/app/viewmodel/settings/SettingsViewModel;-><init>(Lnet/newpipe/app/platform/BuildInfo;)V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_1
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 57
    .line 58
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    new-instance p0, Lnet/newpipe/app/viewmodel/about/AboutViewModel;

    .line 67
    .line 68
    const-class p2, Lkotlinx/serialization/json/Json;

    .line 69
    .line 70
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p1, p2, v4}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Lkotlinx/serialization/json/Json;

    .line 79
    .line 80
    const-class v0, Lnet/newpipe/app/platform/ResourceHandler;

    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0, v4}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lnet/newpipe/app/platform/ResourceHandler;

    .line 91
    .line 92
    invoke-direct {p0, p2, p1}, Lnet/newpipe/app/viewmodel/about/AboutViewModel;-><init>(Lkotlinx/serialization/json/Json;Lnet/newpipe/app/platform/ResourceHandler;)V

    .line 93
    .line 94
    .line 95
    return-object p0

    .line 96
    :pswitch_2
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 97
    .line 98
    check-cast p2, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    and-int/lit8 p2, p0, 0x3

    .line 105
    .line 106
    const/4 v3, 0x2

    .line 107
    if-eq p2, v3, :cond_0

    .line 108
    .line 109
    move v0, v2

    .line 110
    :cond_0
    and-int/2addr p0, v2

    .line 111
    move-object v7, p1

    .line 112
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 113
    .line 114
    invoke-virtual {v7, p0, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-eqz p0, :cond_1

    .line 119
    .line 120
    sget-object p0, Lnewpipe/shared/generated/resources/Drawable0_commonMainKt;->ic_search$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 121
    .line 122
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Lorg/jetbrains/compose/resources/DrawableResource;

    .line 127
    .line 128
    invoke-static {p0, v7}, Lorg/jetbrains/compose/resources/ImageResourcesKt;->painterResource(Lorg/jetbrains/compose/resources/DrawableResource;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    sget-object p0, Lnewpipe/shared/generated/resources/String0_commonMainKt;->search$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 133
    .line 134
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    check-cast p0, Lorg/jetbrains/compose/resources/StringResource;

    .line 139
    .line 140
    invoke-static {p0, v7}, Lorg/jetbrains/compose/resources/StringResourcesKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const-wide/16 v5, 0x0

    .line 145
    .line 146
    const/16 v8, 0x8

    .line 147
    .line 148
    const/4 v4, 0x0

    .line 149
    invoke-static/range {v2 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;I)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 154
    .line 155
    .line 156
    :goto_0
    return-object v1

    .line 157
    :pswitch_3
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 158
    .line 159
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    new-instance p0, Lnet/newpipe/app/platform/AndroidShareHandler;

    .line 168
    .line 169
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p1, p2, v4}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Landroid/content/Context;

    .line 178
    .line 179
    invoke-direct {p0, p1}, Lnet/newpipe/app/platform/AndroidShareHandler;-><init>(Landroid/content/Context;)V

    .line 180
    .line 181
    .line 182
    return-object p0

    .line 183
    :pswitch_4
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 184
    .line 185
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    new-instance p0, Lnet/newpipe/app/platform/AndroidResourceHandler;

    .line 194
    .line 195
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-virtual {p1, p2, v4}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Landroid/content/Context;

    .line 204
    .line 205
    invoke-direct {p0, p1}, Lnet/newpipe/app/platform/AndroidResourceHandler;-><init>(Landroid/content/Context;)V

    .line 206
    .line 207
    .line 208
    return-object p0

    .line 209
    :pswitch_5
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 210
    .line 211
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    new-instance p0, Lnet/newpipe/app/platform/AndroidBuildInfo;

    .line 220
    .line 221
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    invoke-virtual {p1, p2, v4}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Landroid/content/Context;

    .line 230
    .line 231
    invoke-direct {p0, p1}, Lnet/newpipe/app/platform/AndroidBuildInfo;-><init>(Landroid/content/Context;)V

    .line 232
    .line 233
    .line 234
    return-object p0

    .line 235
    :pswitch_6
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 236
    .line 237
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 238
    .line 239
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-virtual {p1, p0, v4}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    check-cast p0, Landroid/content/Context;

    .line 254
    .line 255
    new-instance p1, Lcom/russhwolf/settings/SharedPreferencesSettings;

    .line 256
    .line 257
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    invoke-direct {p1, p0}, Lcom/russhwolf/settings/SharedPreferencesSettings;-><init>(Landroid/content/SharedPreferences;)V

    .line 269
    .line 270
    .line 271
    return-object p1

    .line 272
    :pswitch_7
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 273
    .line 274
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 275
    .line 276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    new-instance p0, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 283
    .line 284
    const/16 p1, 0x1d

    .line 285
    .line 286
    invoke-direct {p0, p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 287
    .line 288
    .line 289
    invoke-static {p0}, Landroidx/room/Room;->Json$default(Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/JsonImpl;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    return-object p0

    .line 294
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/internal/ThreadState;

    .line 295
    .line 296
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    .line 297
    .line 298
    instance-of p0, p2, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 299
    .line 300
    if-eqz p0, :cond_2

    .line 301
    .line 302
    check-cast p2, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 303
    .line 304
    iget-object p0, p1, Lkotlinx/coroutines/internal/ThreadState;->context:Lkotlin/coroutines/CoroutineContext;

    .line 305
    .line 306
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/ThreadLocalElement;->updateThreadContext()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    iget-object v0, p1, Lkotlinx/coroutines/internal/ThreadState;->values:[Ljava/lang/Object;

    .line 311
    .line 312
    iget v1, p1, Lkotlinx/coroutines/internal/ThreadState;->i:I

    .line 313
    .line 314
    aput-object p0, v0, v1

    .line 315
    .line 316
    iget-object p0, p1, Lkotlinx/coroutines/internal/ThreadState;->elements:[Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 317
    .line 318
    add-int/lit8 v0, v1, 0x1

    .line 319
    .line 320
    iput v0, p1, Lkotlinx/coroutines/internal/ThreadState;->i:I

    .line 321
    .line 322
    aput-object p2, p0, v1

    .line 323
    .line 324
    :cond_2
    return-object p1

    .line 325
    :pswitch_9
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 326
    .line 327
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 328
    .line 329
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    new-instance p0, Lnet/newpipe/app/navigation/Navigator;

    .line 336
    .line 337
    const-class p2, Lnet/newpipe/app/navigation/Destination;

    .line 338
    .line 339
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    invoke-virtual {p1, p2, v4}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    check-cast p2, Lnet/newpipe/app/navigation/Destination;

    .line 348
    .line 349
    const-class v0, Lkotlin/jvm/functions/Function0;

    .line 350
    .line 351
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {p1, v0, v4}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 360
    .line 361
    invoke-direct {p0, p2, p1}, Lnet/newpipe/app/navigation/Navigator;-><init>(Lnet/newpipe/app/navigation/Destination;Lkotlin/jvm/functions/Function0;)V

    .line 362
    .line 363
    .line 364
    return-object p0

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
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
