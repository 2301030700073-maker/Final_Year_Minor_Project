.class public final Landroidx/lifecycle/LifecycleRegistry;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _currentStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public addingObserverCounter:I

.field public final enforceMainThread:Z

.field public handlingEvent:Z

.field public internalScopeRef:Landroidx/paging/HintHandler;

.field public final lifecycleOwner:Landroidx/lifecycle/WeakReference;

.field public newEventOccurred:Z

.field public observerMap:Lcom/caverock/androidsvg/SVG;

.field public final parentStates:Ljava/util/ArrayList;

.field public state:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/paging/HintHandler;

    .line 5
    .line 6
    const/16 v1, 0x19

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/paging/HintHandler;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->internalScopeRef:Landroidx/paging/HintHandler;

    .line 12
    .line 13
    iput-boolean p2, p0, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThread:Z

    .line 14
    .line 15
    new-instance p2, Lcom/caverock/androidsvg/SVG;

    .line 16
    .line 17
    const/16 v0, 0x13

    .line 18
    .line 19
    invoke-direct {p2, v0}, Lcom/caverock/androidsvg/SVG;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Landroidx/lifecycle/LifecycleRegistry;->observerMap:Lcom/caverock/androidsvg/SVG;

    .line 23
    .line 24
    new-instance p2, Landroidx/lifecycle/WeakReference;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Landroidx/lifecycle/WeakReference;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Landroidx/lifecycle/LifecycleRegistry;->lifecycleOwner:Landroidx/lifecycle/WeakReference;

    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->parentStates:Ljava/util/ArrayList;

    .line 37
    .line 38
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 39
    .line 40
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->_currentStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final addObserver(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "addObserver"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 10
    .line 11
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 17
    .line 18
    :goto_0
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 27
    .line 28
    sget-object v1, Landroidx/lifecycle/Lifecycling;->callbackCache:Ljava/util/HashMap;

    .line 29
    .line 30
    instance-of v1, p1, Landroidx/lifecycle/LifecycleEventObserver;

    .line 31
    .line 32
    instance-of v2, p1, Landroidx/lifecycle/DefaultLifecycleObserver;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    new-instance v1, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    .line 42
    .line 43
    move-object v2, p1

    .line 44
    check-cast v2, Landroidx/lifecycle/DefaultLifecycleObserver;

    .line 45
    .line 46
    move-object v6, p1

    .line 47
    check-cast v6, Landroidx/lifecycle/LifecycleEventObserver;

    .line 48
    .line 49
    invoke-direct {v1, v4, v2, v6}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    if-eqz v2, :cond_2

    .line 54
    .line 55
    new-instance v1, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    .line 56
    .line 57
    move-object v2, p1

    .line 58
    check-cast v2, Landroidx/lifecycle/DefaultLifecycleObserver;

    .line 59
    .line 60
    invoke-direct {v1, v4, v2, v3}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    if-eqz v1, :cond_3

    .line 65
    .line 66
    move-object v1, p1

    .line 67
    check-cast v1, Landroidx/lifecycle/LifecycleEventObserver;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/4 v6, 0x2

    .line 79
    if-ne v2, v6, :cond_6

    .line 80
    .line 81
    sget-object v2, Landroidx/lifecycle/Lifecycling;->classToAdapters:Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    check-cast v1, Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eq v2, v5, :cond_5

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    new-array v6, v2, [Landroidx/lifecycle/GeneratedAdapter;

    .line 103
    .line 104
    if-gtz v2, :cond_4

    .line 105
    .line 106
    new-instance v1, Landroidx/savedstate/Recreator;

    .line 107
    .line 108
    const/4 v2, 0x3

    .line 109
    invoke-direct {v1, v2, v6}, Landroidx/savedstate/Recreator;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 118
    .line 119
    invoke-static {p0, p1}, Landroidx/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/LifecycleObserver;)V

    .line 120
    .line 121
    .line 122
    throw v3

    .line 123
    :cond_5
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 128
    .line 129
    invoke-static {p0, p1}, Landroidx/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/LifecycleObserver;)V

    .line 130
    .line 131
    .line 132
    throw v3

    .line 133
    :cond_6
    new-instance v1, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    .line 134
    .line 135
    invoke-direct {v1, p1}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/LifecycleObserver;)V

    .line 136
    .line 137
    .line 138
    :goto_1
    iput-object v1, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->lifecycleObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 139
    .line 140
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->observerMap:Lcom/caverock/androidsvg/SVG;

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v2, Landroidx/collection/MutableScatterMap;

    .line 148
    .line 149
    invoke-virtual {v2, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    check-cast v6, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 154
    .line 155
    if-eqz v6, :cond_7

    .line 156
    .line 157
    iget-object v3, v6, Landroidx/lifecycle/FastSafeIterableMap$Entry;->value:Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_7
    new-instance v6, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 161
    .line 162
    invoke-direct {v6, p1, v0}, Landroidx/lifecycle/FastSafeIterableMap$Entry;-><init>(Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, p1, v6}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v2, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 171
    .line 172
    if-nez v2, :cond_8

    .line 173
    .line 174
    iput-object v6, v1, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 175
    .line 176
    iput-object v6, v1, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_8
    iput-object v6, v2, Landroidx/lifecycle/FastSafeIterableMap$Entry;->next:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 180
    .line 181
    iput-object v2, v6, Landroidx/lifecycle/FastSafeIterableMap$Entry;->prev:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 182
    .line 183
    iput-object v6, v1, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 184
    .line 185
    :goto_2
    if-eqz v3, :cond_9

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_9
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->lifecycleOwner:Landroidx/lifecycle/WeakReference;

    .line 189
    .line 190
    iget-object v1, v1, Landroidx/lifecycle/WeakReference;->delegate:Ljava/lang/ref/WeakReference;

    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 197
    .line 198
    if-nez v1, :cond_a

    .line 199
    .line 200
    :goto_3
    return-void

    .line 201
    :cond_a
    iget v2, p0, Landroidx/lifecycle/LifecycleRegistry;->addingObserverCounter:I

    .line 202
    .line 203
    if-nez v2, :cond_b

    .line 204
    .line 205
    iget-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->handlingEvent:Z

    .line 206
    .line 207
    if-eqz v2, :cond_c

    .line 208
    .line 209
    :cond_b
    move v4, v5

    .line 210
    :cond_c
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    iget v3, p0, Landroidx/lifecycle/LifecycleRegistry;->addingObserverCounter:I

    .line 215
    .line 216
    add-int/2addr v3, v5

    .line 217
    iput v3, p0, Landroidx/lifecycle/LifecycleRegistry;->addingObserverCounter:I

    .line 218
    .line 219
    :goto_4
    iget-object v3, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 220
    .line 221
    invoke-virtual {v3, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-gez v2, :cond_e

    .line 226
    .line 227
    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->observerMap:Lcom/caverock/androidsvg/SVG;

    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    iget-object v2, v2, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v2, Landroidx/collection/MutableScatterMap;

    .line 235
    .line 236
    invoke-virtual {v2, p1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_e

    .line 241
    .line 242
    iget-object v2, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 243
    .line 244
    iget-object v3, p0, Landroidx/lifecycle/LifecycleRegistry;->parentStates:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/Lifecycle$Event$Companion;

    .line 250
    .line 251
    iget-object v5, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    invoke-static {v5}, Landroidx/lifecycle/Lifecycle$Event$Companion;->upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    if-eqz v2, :cond_d

    .line 261
    .line 262
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 263
    .line 264
    .line 265
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->removeLastOrNull(Ljava/util/AbstractList;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    goto :goto_4

    .line 273
    :cond_d
    iget-object p0, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 274
    .line 275
    const-string p1, "no event up from "

    .line 276
    .line 277
    invoke-static {p1, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_e
    if-nez v4, :cond_f

    .line 282
    .line 283
    invoke-virtual {p0}, Landroidx/lifecycle/LifecycleRegistry;->sync()V

    .line 284
    .line 285
    .line 286
    :cond_f
    iget p1, p0, Landroidx/lifecycle/LifecycleRegistry;->addingObserverCounter:I

    .line 287
    .line 288
    add-int/lit8 p1, p1, -0x1

    .line 289
    .line 290
    iput p1, p0, Landroidx/lifecycle/LifecycleRegistry;->addingObserverCounter:I

    .line 291
    .line 292
    return-void
.end method

.method public final calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->observerMap:Lcom/caverock/androidsvg/SVG;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroidx/collection/MutableScatterMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->prev:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, v0

    .line 26
    :goto_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->value:Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object p1, v0

    .line 34
    :goto_1
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->parentStates:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-static {v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroidx/lifecycle/Lifecycle$State;

    .line 48
    .line 49
    :cond_2
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-gez v1, :cond_3

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move-object p1, p0

    .line 61
    :goto_2
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-gez p0, :cond_4

    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_4
    return-object p1
.end method

.method public final enforceMainThreadIfNeeded(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThread:Z

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-ne p0, v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p0, "Method "

    .line 28
    .line 29
    const-string v0, " must be called on the main thread"

    .line 30
    .line 31
    invoke-static {p0, p1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "handleLifecycleEvent"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final moveToState(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->lifecycleOwner:Landroidx/lifecycle/WeakReference;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/lifecycle/WeakReference;->delegate:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 18
    .line 19
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 20
    .line 21
    if-ne v1, v2, :cond_2

    .line 22
    .line 23
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 24
    .line 25
    if-eq p1, v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "State must be at least \'"

    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "\' to be moved to \'"

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, "\' in component "

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_2
    :goto_0
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 71
    .line 72
    if-ne v1, v2, :cond_4

    .line 73
    .line 74
    if-ne v1, p1, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v3, "State is \'"

    .line 82
    .line 83
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, "\' and cannot be moved to `"

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p1, "` in component "

    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_4
    :goto_1
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 118
    .line 119
    iget-boolean p1, p0, Landroidx/lifecycle/LifecycleRegistry;->handlingEvent:Z

    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    if-nez p1, :cond_7

    .line 123
    .line 124
    iget p1, p0, Landroidx/lifecycle/LifecycleRegistry;->addingObserverCounter:I

    .line 125
    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->handlingEvent:Z

    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/lifecycle/LifecycleRegistry;->sync()V

    .line 132
    .line 133
    .line 134
    const/4 p1, 0x0

    .line 135
    iput-boolean p1, p0, Landroidx/lifecycle/LifecycleRegistry;->handlingEvent:Z

    .line 136
    .line 137
    iget-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 138
    .line 139
    if-ne p1, v2, :cond_6

    .line 140
    .line 141
    new-instance p1, Lcom/caverock/androidsvg/SVG;

    .line 142
    .line 143
    const/16 v0, 0x13

    .line 144
    .line 145
    invoke-direct {p1, v0}, Lcom/caverock/androidsvg/SVG;-><init>(I)V

    .line 146
    .line 147
    .line 148
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->observerMap:Lcom/caverock/androidsvg/SVG;

    .line 149
    .line 150
    :cond_6
    :goto_2
    return-void

    .line 151
    :cond_7
    :goto_3
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->newEventOccurred:Z

    .line 152
    .line 153
    return-void
.end method

.method public final removeObserver(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "removeObserver"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->observerMap:Lcom/caverock/androidsvg/SVG;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/collection/MutableScatterMap;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->prev:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 28
    .line 29
    iget-object v1, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->next:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iput-object v1, v0, Landroidx/lifecycle/FastSafeIterableMap$Entry;->next:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 37
    .line 38
    :goto_0
    iget-object v1, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->next:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iput-object v0, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->prev:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 46
    .line 47
    :goto_1
    const/4 p0, 0x1

    .line 48
    iput-boolean p0, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->isRemoved:Z

    .line 49
    .line 50
    return-void
.end method

.method public final setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "setCurrentState"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final sync()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->lifecycleOwner:Landroidx/lifecycle/WeakReference;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/lifecycle/WeakReference;->delegate:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->observerMap:Lcom/caverock/androidsvg/SVG;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Landroidx/collection/MutableScatterMap;

    .line 18
    .line 19
    iget v2, v2, Landroidx/collection/MutableScatterMap;->_size:I

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 28
    .line 29
    const-string v4, "Collection is empty."

    .line 30
    .line 31
    if-eqz v2, :cond_8

    .line 32
    .line 33
    iget-object v5, v2, Landroidx/lifecycle/FastSafeIterableMap$Entry;->value:Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 34
    .line 35
    iget-object v5, v5, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 40
    .line 41
    if-eqz v1, :cond_7

    .line 42
    .line 43
    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->value:Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 44
    .line 45
    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 46
    .line 47
    if-ne v5, v1, :cond_2

    .line 48
    .line 49
    iget-object v6, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 50
    .line 51
    if-ne v6, v1, :cond_2

    .line 52
    .line 53
    :goto_0
    iput-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->newEventOccurred:Z

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->_currentStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 56
    .line 57
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    iput-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->newEventOccurred:Z

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 66
    .line 67
    if-eqz v2, :cond_6

    .line 68
    .line 69
    invoke-virtual {v1, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-gez v1, :cond_4

    .line 74
    .line 75
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->observerMap:Lcom/caverock/androidsvg/SVG;

    .line 76
    .line 77
    new-instance v2, Landroidx/lifecycle/LifecycleRegistry$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    invoke-direct {v2, p0, v0, v3}, Landroidx/lifecycle/LifecycleRegistry$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/LifecycleOwner;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 88
    .line 89
    :goto_1
    if-eqz v1, :cond_4

    .line 90
    .line 91
    iget-boolean v3, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->isRemoved:Z

    .line 92
    .line 93
    if-nez v3, :cond_3

    .line 94
    .line 95
    invoke-virtual {v2, v1}, Landroidx/lifecycle/LifecycleRegistry$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    :cond_3
    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->prev:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->observerMap:Lcom/caverock/androidsvg/SVG;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 106
    .line 107
    iget-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->newEventOccurred:Z

    .line 108
    .line 109
    if-nez v2, :cond_0

    .line 110
    .line 111
    if-eqz v1, :cond_0

    .line 112
    .line 113
    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 114
    .line 115
    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->value:Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 116
    .line 117
    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 118
    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-lez v1, :cond_0

    .line 124
    .line 125
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->observerMap:Lcom/caverock/androidsvg/SVG;

    .line 126
    .line 127
    new-instance v2, Landroidx/lifecycle/LifecycleRegistry$$ExternalSyntheticLambda0;

    .line 128
    .line 129
    const/4 v3, 0x1

    .line 130
    invoke-direct {v2, p0, v0, v3}, Landroidx/lifecycle/LifecycleRegistry$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/LifecycleOwner;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 139
    .line 140
    :goto_2
    if-eqz v1, :cond_0

    .line 141
    .line 142
    iget-boolean v3, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->isRemoved:Z

    .line 143
    .line 144
    if-nez v3, :cond_5

    .line 145
    .line 146
    invoke-virtual {v2, v1}, Landroidx/lifecycle/LifecycleRegistry$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    :cond_5
    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->next:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    invoke-static {v4}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_7
    invoke-static {v4}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_8
    invoke-static {v4}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_9
    const-string p0, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    .line 165
    .line 166
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method
