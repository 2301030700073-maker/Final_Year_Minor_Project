.class public final Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final invoke$androidx$glance$appwidget$GlanceAppWidgetManager$dataStore$2()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/glance/appwidget/GlanceAppWidgetManager;

    .line 4
    .line 5
    sget-object v0, Landroidx/glance/appwidget/GlanceAppWidgetManager;->Companion:Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Landroidx/glance/appwidget/GlanceAppWidgetManager;->dataStoreSingleton:Landroidx/datastore/core/DataStore;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/glance/appwidget/GlanceAppWidgetManager;->context:Landroid/content/Context;

    .line 13
    .line 14
    sget-object v1, Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 15
    .line 16
    sget-object v1, Landroidx/glance/appwidget/GlanceAppWidgetManager;->appManagerDataStore$delegate:Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;

    .line 17
    .line 18
    sget-object v2, Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aget-object v2, v2, v3

    .line 22
    .line 23
    invoke-virtual {v1, p0, v2}, Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    move-object v1, p0

    .line 28
    check-cast v1, Landroidx/datastore/core/DataStore;

    .line 29
    .line 30
    sput-object v1, Landroidx/glance/appwidget/GlanceAppWidgetManager;->dataStoreSingleton:Landroidx/datastore/core/DataStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit v0

    .line 36
    return-object v1

    .line 37
    :goto_1
    monitor-exit v0

    .line 38
    throw p0
.end method

.method private final invoke$androidx$glance$session$InteractiveFrameClock$frameClock$1()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v3, p0

    .line 4
    check-cast v3, Landroidx/glance/session/InteractiveFrameClock;

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v4

    .line 10
    new-instance v1, Lkotlin/jvm/internal/Ref$LongRef;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object p0, v3, Landroidx/glance/session/InteractiveFrameClock;->lock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iget-wide v6, v3, Landroidx/glance/session/InteractiveFrameClock;->lastFrame:J

    .line 24
    .line 25
    sub-long v6, v4, v6

    .line 26
    .line 27
    iput-wide v6, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 28
    .line 29
    iget v0, v3, Landroidx/glance/session/InteractiveFrameClock;->currentHz:I

    .line 30
    .line 31
    int-to-long v6, v0

    .line 32
    const-wide/32 v8, 0x3b9aca00

    .line 33
    .line 34
    .line 35
    div-long/2addr v8, v6

    .line 36
    iput-wide v8, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    iget-object p0, v3, Landroidx/glance/session/InteractiveFrameClock;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 40
    .line 41
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/glance/session/InteractiveFrameClock;JLkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x3

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-static {p0, v2, v2, v0, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 50
    .line 51
    .line 52
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    monitor-exit p0

    .line 57
    throw v0
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;

    .line 14
    .line 15
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->scopeFactory:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_0
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    .line 29
    .line 30
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->settingsComputation:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$initialize$1;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$initialize$1;->invoke()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;

    .line 39
    .line 40
    iput-object v4, v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->settingsComputation:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$initialize$1;

    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_0
    const-string v0, "JvmBuiltins instance has not been initialized properly"

    .line 44
    .line 45
    new-instance v1, Ljava/lang/AssertionError;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :pswitch_1
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Ljava/util/Map;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Iterable;

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_a

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Ljava/util/Map$Entry;

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    instance-of v4, v1, [Z

    .line 88
    .line 89
    if-eqz v4, :cond_1

    .line 90
    .line 91
    check-cast v1, [Z

    .line 92
    .line 93
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    instance-of v4, v1, [C

    .line 99
    .line 100
    if-eqz v4, :cond_2

    .line 101
    .line 102
    check-cast v1, [C

    .line 103
    .line 104
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    instance-of v4, v1, [B

    .line 110
    .line 111
    if-eqz v4, :cond_3

    .line 112
    .line 113
    check-cast v1, [B

    .line 114
    .line 115
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    instance-of v4, v1, [S

    .line 121
    .line 122
    if-eqz v4, :cond_4

    .line 123
    .line 124
    check-cast v1, [S

    .line 125
    .line 126
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([S)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    instance-of v4, v1, [I

    .line 132
    .line 133
    if-eqz v4, :cond_5

    .line 134
    .line 135
    check-cast v1, [I

    .line 136
    .line 137
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    goto :goto_1

    .line 142
    :cond_5
    instance-of v4, v1, [F

    .line 143
    .line 144
    if-eqz v4, :cond_6

    .line 145
    .line 146
    check-cast v1, [F

    .line 147
    .line 148
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    goto :goto_1

    .line 153
    :cond_6
    instance-of v4, v1, [J

    .line 154
    .line 155
    if-eqz v4, :cond_7

    .line 156
    .line 157
    check-cast v1, [J

    .line 158
    .line 159
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    goto :goto_1

    .line 164
    :cond_7
    instance-of v4, v1, [D

    .line 165
    .line 166
    if-eqz v4, :cond_8

    .line 167
    .line 168
    check-cast v1, [D

    .line 169
    .line 170
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    goto :goto_1

    .line 175
    :cond_8
    instance-of v4, v1, [Ljava/lang/Object;

    .line 176
    .line 177
    if-eqz v4, :cond_9

    .line 178
    .line 179
    check-cast v1, [Ljava/lang/Object;

    .line 180
    .line 181
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    goto :goto_1

    .line 186
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    mul-int/lit8 v2, v2, 0x7f

    .line 195
    .line 196
    xor-int/2addr v1, v2

    .line 197
    add-int/2addr v3, v1

    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    return-object v0

    .line 205
    :pswitch_2
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v0, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;

    .line 208
    .line 209
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;->descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 210
    .line 211
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    new-instance v1, Ljava/util/ArrayList;

    .line 219
    .line 220
    const/16 v2, 0xa

    .line 221
    .line 222
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .line 228
    .line 229
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_b

    .line 238
    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 244
    .line 245
    new-instance v3, Lkotlin/reflect/jvm/internal/KTypeImpl;

    .line 246
    .line 247
    invoke-direct {v3, v2, v4}, Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function0;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_b
    return-object v1

    .line 255
    :pswitch_3
    new-instance v1, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl$Setter;

    .line 256
    .line 257
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v0, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;

    .line 260
    .line 261
    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl$Setter;-><init>(Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;)V

    .line 262
    .line 263
    .line 264
    return-object v1

    .line 265
    :pswitch_4
    new-instance v1, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;

    .line 266
    .line 267
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    .line 270
    .line 271
    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;-><init>(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)V

    .line 272
    .line 273
    .line 274
    return-object v1

    .line 275
    :pswitch_5
    new-instance v1, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl$Setter;

    .line 276
    .line 277
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v0, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;

    .line 280
    .line 281
    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl$Setter;-><init>(Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;)V

    .line 282
    .line 283
    .line 284
    return-object v1

    .line 285
    :pswitch_6
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    .line 288
    .line 289
    invoke-interface {v0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ModuleByClassLoaderKt;->getOrCreateModule(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    return-object v0

    .line 298
    :pswitch_7
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    .line 301
    .line 302
    invoke-virtual {v0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getValue()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    check-cast v0, Ljava/lang/Number;

    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    return-object v0

    .line 317
    :pswitch_8
    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->invoke$androidx$glance$session$InteractiveFrameClock$frameClock$1()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    return-object v0

    .line 322
    :pswitch_9
    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->invoke$androidx$glance$appwidget$GlanceAppWidgetManager$dataStore$2()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    return-object v0

    .line 327
    :pswitch_a
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v0, Landroidx/glance/appwidget/AppWidgetSession;

    .line 330
    .line 331
    iget-object v0, v0, Landroidx/glance/appwidget/AppWidgetSession;->glanceState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 332
    .line 333
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 337
    .line 338
    return-object v0

    .line 339
    :pswitch_b
    const-string v1, "There are multiple DataStores active for the same file: "

    .line 340
    .line 341
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore;

    .line 344
    .line 345
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore;->produceFile:Lkotlin/jvm/functions/Function0;

    .line 346
    .line 347
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    check-cast v0, Ljava/io/File;

    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    sget-object v3, Landroidx/datastore/core/SingleProcessDataStore;->activeFilesLock:Ljava/lang/Object;

    .line 358
    .line 359
    monitor-enter v3

    .line 360
    :try_start_0
    sget-object v4, Landroidx/datastore/core/SingleProcessDataStore;->activeFiles:Ljava/util/LinkedHashSet;

    .line 361
    .line 362
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v5

    .line 366
    if-nez v5, :cond_c

    .line 367
    .line 368
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    .line 373
    .line 374
    monitor-exit v3

    .line 375
    return-object v0

    .line 376
    :catchall_0
    move-exception v0

    .line 377
    goto :goto_3

    .line 378
    :cond_c
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v0, ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore\'s active on the same file (by confirming that the scope is cancelled)."

    .line 387
    .line 388
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 396
    .line 397
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    :goto_3
    monitor-exit v3

    .line 406
    throw v0

    .line 407
    :pswitch_c
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v0, Landroidx/compose/ui/window/PopupLayout;

    .line 410
    .line 411
    invoke-static {v0}, Landroidx/compose/ui/window/PopupLayout;->access$getParentLayoutCoordinates(Landroidx/compose/ui/window/PopupLayout;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    if-eqz v1, :cond_d

    .line 416
    .line 417
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    if-eqz v5, :cond_d

    .line 422
    .line 423
    move-object v4, v1

    .line 424
    :cond_d
    if-eqz v4, :cond_e

    .line 425
    .line 426
    invoke-virtual {v0}, Landroidx/compose/ui/window/PopupLayout;->getPopupContentSize-bOM6tXw()Landroidx/compose/ui/unit/IntSize;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    if-eqz v0, :cond_e

    .line 431
    .line 432
    goto :goto_4

    .line 433
    :cond_e
    move v2, v3

    .line 434
    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    return-object v0

    .line 439
    :pswitch_d
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    .line 442
    .line 443
    return-object v0

    .line 444
    :pswitch_e
    new-instance v1, Landroid/view/inputmethod/BaseInputConnection;

    .line 445
    .line 446
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 449
    .line 450
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->view:Landroid/view/View;

    .line 451
    .line 452
    invoke-direct {v1, v0, v3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 453
    .line 454
    .line 455
    return-object v1

    .line 456
    :pswitch_f
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 457
    .line 458
    check-cast v0, Lcom/caverock/androidsvg/SVG;

    .line 459
    .line 460
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 461
    .line 462
    check-cast v0, Landroid/view/View;

    .line 463
    .line 464
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    const-string v1, "input_method"

    .line 469
    .line 470
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .line 476
    .line 477
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 478
    .line 479
    return-object v0

    .line 480
    :pswitch_10
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v0, Landroidx/compose/ui/spatial/RectManager;

    .line 483
    .line 484
    iput-object v4, v0, Landroidx/compose/ui/spatial/RectManager;->dispatchToken:Lorg/wikipedia/views/ViewAnimations$$ExternalSyntheticLambda0;

    .line 485
    .line 486
    const-string v1, "OnPositionedDispatch"

    .line 487
    .line 488
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    :try_start_2
    invoke-virtual {v0}, Landroidx/compose/ui/spatial/RectManager;->dispatchCallbacks()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 492
    .line 493
    .line 494
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 495
    .line 496
    .line 497
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 498
    .line 499
    return-object v0

    .line 500
    :catchall_1
    move-exception v0

    .line 501
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 502
    .line 503
    .line 504
    throw v0

    .line 505
    :pswitch_11
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 506
    .line 507
    check-cast v0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;

    .line 508
    .line 509
    iget-object v0, v0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->_retainedValuesStore:Landroidx/paging/HintHandler;

    .line 510
    .line 511
    iget-object v0, v0, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast v0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    .line 514
    .line 515
    iget-boolean v1, v0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isDisposed:Z

    .line 516
    .line 517
    if-eqz v1, :cond_f

    .line 518
    .line 519
    goto :goto_5

    .line 520
    :cond_f
    iget-boolean v1, v0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isContentComposed:Z

    .line 521
    .line 522
    if-eqz v1, :cond_10

    .line 523
    .line 524
    const-string v1, "ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?"

    .line 525
    .line 526
    invoke-static {v1}, Landroidx/compose/runtime/retain/impl/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    :cond_10
    invoke-virtual {v0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->purgeUnusedExitedValues()V

    .line 530
    .line 531
    .line 532
    iput-boolean v2, v0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isContentComposed:Z

    .line 533
    .line 534
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 535
    .line 536
    return-object v0

    .line 537
    :pswitch_12
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 538
    .line 539
    check-cast v0, Landroidx/compose/ui/platform/ComposeViewContext;

    .line 540
    .line 541
    const-wide/16 v1, 0x0

    .line 542
    .line 543
    invoke-static {v1, v2, v1, v2}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    iget-object v0, v0, Landroidx/compose/ui/platform/ComposeViewContext;->view:Landroid/view/View;

    .line 548
    .line 549
    if-eqz v3, :cond_19

    .line 550
    .line 551
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    move-object v1, v0

    .line 556
    :goto_6
    instance-of v2, v1, Landroid/content/ContextWrapper;

    .line 557
    .line 558
    if-eqz v2, :cond_15

    .line 559
    .line 560
    instance-of v2, v1, Landroid/app/Activity;

    .line 561
    .line 562
    if-eqz v2, :cond_11

    .line 563
    .line 564
    :goto_7
    move-object v4, v1

    .line 565
    goto :goto_8

    .line 566
    :cond_11
    instance-of v2, v1, Landroid/inputmethodservice/InputMethodService;

    .line 567
    .line 568
    if-eqz v2, :cond_12

    .line 569
    .line 570
    goto :goto_7

    .line 571
    :cond_12
    instance-of v2, v1, Landroid/app/Application;

    .line 572
    .line 573
    if-eqz v2, :cond_13

    .line 574
    .line 575
    goto :goto_7

    .line 576
    :cond_13
    check-cast v1, Landroid/content/ContextWrapper;

    .line 577
    .line 578
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    if-nez v2, :cond_14

    .line 583
    .line 584
    goto :goto_8

    .line 585
    :cond_14
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    goto :goto_6

    .line 590
    :cond_15
    :goto_8
    const-wide v1, 0xffffffffL

    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    const/16 v3, 0x20

    .line 596
    .line 597
    if-eqz v4, :cond_18

    .line 598
    .line 599
    sget-object v0, Landroidx/window/layout/WindowMetricsCalculator;->Companion:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    .line 600
    .line 601
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 602
    .line 603
    .line 604
    sget-object v0, Landroidx/window/layout/WindowMetricsCalculator$Companion;->$$INSTANCE:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    .line 605
    .line 606
    sget-object v0, Landroidx/window/layout/WindowMetricsCalculator$Companion;->windowMetricsCalculatorCompat:Landroidx/window/layout/WindowMetricsCalculatorCompat;

    .line 607
    .line 608
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    move-object v5, v4

    .line 612
    check-cast v5, Landroid/content/ContextWrapper;

    .line 613
    .line 614
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 615
    .line 616
    const/16 v7, 0x22

    .line 617
    .line 618
    if-lt v6, v7, :cond_16

    .line 619
    .line 620
    sget-object v6, Landroidx/window/layout/util/DensityCompatHelperApi34Impl;->INSTANCE$1:Landroidx/window/layout/util/DensityCompatHelperApi34Impl;

    .line 621
    .line 622
    goto :goto_9

    .line 623
    :cond_16
    const/16 v7, 0x1e

    .line 624
    .line 625
    if-lt v6, v7, :cond_17

    .line 626
    .line 627
    sget-object v6, Landroidx/window/layout/util/BoundsHelperApi30Impl;->INSTANCE$1:Landroidx/window/layout/util/BoundsHelperApi30Impl;

    .line 628
    .line 629
    goto :goto_9

    .line 630
    :cond_17
    sget-object v6, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$5:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 631
    .line 632
    :goto_9
    iget-object v0, v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->densityCompatHelper:Landroidx/window/layout/util/DensityCompatHelper;

    .line 633
    .line 634
    invoke-interface {v6, v5, v0}, Landroidx/window/layout/util/WindowMetricsCompatHelper;->currentWindowMetrics(Landroid/content/ContextWrapper;Landroidx/window/layout/util/DensityCompatHelper;)Landroidx/window/layout/WindowMetrics;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-virtual {v0}, Landroidx/window/layout/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 639
    .line 640
    .line 641
    move-result-object v5

    .line 642
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 643
    .line 644
    .line 645
    move-result v5

    .line 646
    invoke-virtual {v0}, Landroidx/window/layout/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    int-to-long v5, v5

    .line 655
    shl-long/2addr v5, v3

    .line 656
    int-to-long v7, v0

    .line 657
    and-long/2addr v1, v7

    .line 658
    or-long/2addr v1, v5

    .line 659
    invoke-static {v4}, Landroidx/room/Room;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/DensityWithConverter;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->toSize-ozmzZPI(J)J

    .line 664
    .line 665
    .line 666
    move-result-wide v3

    .line 667
    invoke-static {v3, v4, v0}, Landroidx/compose/ui/Modifier$-CC;->$default$toDpSize-k-rfVVM(JLandroidx/compose/ui/unit/Density;)J

    .line 668
    .line 669
    .line 670
    move-result-wide v3

    .line 671
    new-instance v0, Landroidx/compose/ui/platform/DerivedSize;

    .line 672
    .line 673
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/ui/platform/DerivedSize;-><init>(JJ)V

    .line 674
    .line 675
    .line 676
    goto :goto_a

    .line 677
    :cond_18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 678
    .line 679
    .line 680
    move-result-object v4

    .line 681
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 682
    .line 683
    .line 684
    move-result-object v4

    .line 685
    invoke-static {v0}, Landroidx/room/Room;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/DensityWithConverter;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    iget v5, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 690
    .line 691
    int-to-float v5, v5

    .line 692
    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 693
    .line 694
    int-to-float v4, v4

    .line 695
    invoke-static {v5, v4}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    .line 696
    .line 697
    .line 698
    move-result-wide v4

    .line 699
    invoke-static {v4, v5, v0}, Landroidx/compose/ui/Modifier$-CC;->$default$toSize-XkaWNTQ(JLandroidx/compose/ui/unit/Density;)J

    .line 700
    .line 701
    .line 702
    move-result-wide v6

    .line 703
    shr-long v8, v6, v3

    .line 704
    .line 705
    long-to-int v0, v8

    .line 706
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    float-to-int v0, v0

    .line 711
    and-long/2addr v6, v1

    .line 712
    long-to-int v6, v6

    .line 713
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 714
    .line 715
    .line 716
    move-result v6

    .line 717
    float-to-int v6, v6

    .line 718
    int-to-long v7, v0

    .line 719
    shl-long/2addr v7, v3

    .line 720
    int-to-long v9, v6

    .line 721
    and-long/2addr v1, v9

    .line 722
    or-long/2addr v1, v7

    .line 723
    new-instance v0, Landroidx/compose/ui/platform/DerivedSize;

    .line 724
    .line 725
    invoke-direct {v0, v1, v2, v4, v5}, Landroidx/compose/ui/platform/DerivedSize;-><init>(JJ)V

    .line 726
    .line 727
    .line 728
    goto :goto_a

    .line 729
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-static {v0}, Landroidx/room/Room;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/DensityWithConverter;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->toSize-ozmzZPI(J)J

    .line 738
    .line 739
    .line 740
    move-result-wide v3

    .line 741
    invoke-static {v3, v4, v0}, Landroidx/compose/ui/Modifier$-CC;->$default$toDpSize-k-rfVVM(JLandroidx/compose/ui/unit/Density;)J

    .line 742
    .line 743
    .line 744
    move-result-wide v3

    .line 745
    new-instance v0, Landroidx/compose/ui/platform/DerivedSize;

    .line 746
    .line 747
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/ui/platform/DerivedSize;-><init>(JJ)V

    .line 748
    .line 749
    .line 750
    :goto_a
    return-object v0

    .line 751
    :pswitch_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 752
    .line 753
    return-object v0

    .line 754
    :pswitch_14
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 755
    .line 756
    check-cast v0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 757
    .line 758
    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 759
    .line 760
    invoke-static {v0, v4}, Lkotlinx/coroutines/AwaitKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 761
    .line 762
    .line 763
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 764
    .line 765
    return-object v0

    .line 766
    :pswitch_15
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 767
    .line 768
    check-cast v0, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 769
    .line 770
    invoke-virtual {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getState()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 775
    .line 776
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui()Ljava/util/List;

    .line 777
    .line 778
    .line 779
    move-result-object v4

    .line 780
    check-cast v4, Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 781
    .line 782
    iget-object v4, v4, Landroidx/collection/MutableObjectList$ObjectListMutableList;->objectList:Ljava/lang/Object;

    .line 783
    .line 784
    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    .line 785
    .line 786
    iget v4, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 787
    .line 788
    iget v5, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    .line 789
    .line 790
    if-eq v5, v4, :cond_1f

    .line 791
    .line 792
    iget-object v0, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Landroidx/collection/MutableScatterMap;

    .line 793
    .line 794
    iget-object v4, v0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 795
    .line 796
    iget-object v0, v0, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 797
    .line 798
    array-length v5, v0

    .line 799
    add-int/lit8 v5, v5, -0x2

    .line 800
    .line 801
    const/4 v6, 0x7

    .line 802
    if-ltz v5, :cond_1d

    .line 803
    .line 804
    move v7, v3

    .line 805
    :goto_b
    aget-wide v8, v0, v7

    .line 806
    .line 807
    not-long v10, v8

    .line 808
    shl-long/2addr v10, v6

    .line 809
    and-long/2addr v10, v8

    .line 810
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    and-long/2addr v10, v12

    .line 816
    cmp-long v10, v10, v12

    .line 817
    .line 818
    if-eqz v10, :cond_1c

    .line 819
    .line 820
    sub-int v10, v7, v5

    .line 821
    .line 822
    not-int v10, v10

    .line 823
    ushr-int/lit8 v10, v10, 0x1f

    .line 824
    .line 825
    const/16 v11, 0x8

    .line 826
    .line 827
    rsub-int/lit8 v10, v10, 0x8

    .line 828
    .line 829
    move v12, v3

    .line 830
    :goto_c
    if-ge v12, v10, :cond_1b

    .line 831
    .line 832
    const-wide/16 v13, 0xff

    .line 833
    .line 834
    and-long/2addr v13, v8

    .line 835
    const-wide/16 v15, 0x80

    .line 836
    .line 837
    cmp-long v13, v13, v15

    .line 838
    .line 839
    if-gez v13, :cond_1a

    .line 840
    .line 841
    shl-int/lit8 v13, v7, 0x3

    .line 842
    .line 843
    add-int/2addr v13, v12

    .line 844
    aget-object v13, v4, v13

    .line 845
    .line 846
    check-cast v13, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 847
    .line 848
    iput-boolean v2, v13, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->forceRecompose:Z

    .line 849
    .line 850
    :cond_1a
    shr-long/2addr v8, v11

    .line 851
    add-int/lit8 v12, v12, 0x1

    .line 852
    .line 853
    goto :goto_c

    .line 854
    :cond_1b
    if-ne v10, v11, :cond_1d

    .line 855
    .line 856
    :cond_1c
    if-eq v7, v5, :cond_1d

    .line 857
    .line 858
    add-int/lit8 v7, v7, 0x1

    .line 859
    .line 860
    goto :goto_b

    .line 861
    :cond_1d
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    .line 862
    .line 863
    if-eqz v0, :cond_1e

    .line 864
    .line 865
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 866
    .line 867
    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    .line 868
    .line 869
    if-nez v0, :cond_1f

    .line 870
    .line 871
    invoke-static {v1, v3, v6}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 872
    .line 873
    .line 874
    goto :goto_d

    .line 875
    :cond_1e
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui()Z

    .line 876
    .line 877
    .line 878
    move-result v0

    .line 879
    if-nez v0, :cond_1f

    .line 880
    .line 881
    invoke-static {v1, v3, v6}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 882
    .line 883
    .line 884
    :cond_1f
    :goto_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 885
    .line 886
    return-object v0

    .line 887
    :pswitch_16
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 888
    .line 889
    check-cast v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 890
    .line 891
    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->activeState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 892
    .line 893
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v1

    .line 897
    check-cast v1, Ljava/lang/Boolean;

    .line 898
    .line 899
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 900
    .line 901
    .line 902
    move-result v1

    .line 903
    if-nez v1, :cond_20

    .line 904
    .line 905
    iget-object v0, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->composition:Landroidx/compose/runtime/CompositionImpl;

    .line 906
    .line 907
    if-eqz v0, :cond_20

    .line 908
    .line 909
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl;->deactivate()V

    .line 910
    .line 911
    .line 912
    :cond_20
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 913
    .line 914
    return-object v0

    .line 915
    :pswitch_17
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 916
    .line 917
    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    .line 918
    .line 919
    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getNestedCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    return-object v0

    .line 924
    :pswitch_18
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 925
    .line 926
    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 927
    .line 928
    iget-object v0, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 929
    .line 930
    return-object v0

    .line 931
    :pswitch_19
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 932
    .line 933
    check-cast v0, Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 934
    .line 935
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 936
    .line 937
    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/VectorPainter;->drawInvalidation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 938
    .line 939
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 940
    .line 941
    .line 942
    return-object v1

    .line 943
    :pswitch_1a
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 944
    .line 945
    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 946
    .line 947
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 948
    .line 949
    .line 950
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 951
    .line 952
    return-object v0

    .line 953
    :pswitch_1b
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 954
    .line 955
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 956
    .line 957
    iget-object v1, v0, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 958
    .line 959
    invoke-virtual {v1}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v1

    .line 963
    sget-object v4, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    .line 964
    .line 965
    if-ne v1, v4, :cond_21

    .line 966
    .line 967
    iget-object v0, v0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 968
    .line 969
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    if-ne v0, v4, :cond_21

    .line 974
    .line 975
    goto :goto_e

    .line 976
    :cond_21
    move v2, v3

    .line 977
    :goto_e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    return-object v0

    .line 982
    :pswitch_1c
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 983
    .line 984
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 985
    .line 986
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 987
    .line 988
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 989
    .line 990
    iput-boolean v2, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->childDelegatesDirty:Z

    .line 991
    .line 992
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 993
    .line 994
    if-eqz v0, :cond_22

    .line 995
    .line 996
    iput-boolean v2, v0, Landroidx/compose/ui/node/LookaheadPassDelegate;->childDelegatesDirty:Z

    .line 997
    .line 998
    :cond_22
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 999
    .line 1000
    return-object v0

    .line 1001
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
