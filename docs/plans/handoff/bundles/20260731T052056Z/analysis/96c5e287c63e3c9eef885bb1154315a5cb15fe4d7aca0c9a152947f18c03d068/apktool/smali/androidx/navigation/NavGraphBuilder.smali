.class public final Landroidx/navigation/NavGraphBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final destinations:Ljava/util/ArrayList;

.field public final provider:Landroidx/navigation/NavigatorProvider;

.field public final startDestinationObject:Ljava/lang/Object;

.field public final startDestinationRoute:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavigatorProvider;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    const-class v0, Landroidx/navigation/NavGraphNavigator;

    .line 38
    invoke-static {v0}, Lkotlin/uuid/UuidKt;->getNameForNavigator$navigation_common_release(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, v0, v1, v2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;ILjava/lang/String;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/ArrayList;

    .line 42
    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->provider:Landroidx/navigation/NavigatorProvider;

    .line 43
    const-string/jumbo p1, "yir_2025"

    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationRoute:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-class p3, Landroidx/navigation/NavGraphNavigator;

    .line 11
    .line 12
    invoke-static {p3}, Lkotlin/uuid/UuidKt;->getNameForNavigator$navigation_common_release(Ljava/lang/Class;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {p1, p3}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-direct {p0, p3, v1, v0}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance p3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p3, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/ArrayList;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->provider:Landroidx/navigation/NavigatorProvider;

    .line 33
    .line 34
    iput-object p2, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationObject:Ljava/lang/Object;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final build()Landroidx/navigation/NavGraph;
    .locals 13

    .line 1
    invoke-super {p0}, Landroidx/navigation/NavDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/navigation/NavGraph;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, v1, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroidx/navigation/NavGraph;

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v4, :cond_9

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Landroidx/navigation/NavDestination;

    .line 34
    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v6, v1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v6, Landroidx/collection/SparseArrayCompat;

    .line 41
    .line 42
    iget-object v7, v2, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 43
    .line 44
    iget-object v8, v4, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 45
    .line 46
    iget v9, v8, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 47
    .line 48
    iget-object v10, v8, Landroidx/compose/ui/node/RulerTrackingMap;->layoutNodes:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v10, Ljava/lang/String;

    .line 51
    .line 52
    if-nez v9, :cond_2

    .line 53
    .line 54
    if-eqz v10, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-string p0, "Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML."

    .line 58
    .line 59
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v5

    .line 63
    :cond_2
    :goto_1
    iget-object v11, v7, Landroidx/compose/ui/node/RulerTrackingMap;->layoutNodes:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v11, Ljava/lang/String;

    .line 66
    .line 67
    const-string v12, "Destination "

    .line 68
    .line 69
    if-eqz v11, :cond_4

    .line 70
    .line 71
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    if-nez v10, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    const-string p0, " cannot have the same route as graph "

    .line 79
    .line 80
    invoke-static {v12, v4, p0, v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-object v5

    .line 84
    :cond_4
    :goto_2
    iget v7, v7, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 85
    .line 86
    if-eq v9, v7, :cond_8

    .line 87
    .line 88
    invoke-static {v6, v9}, Landroidx/collection/ArraySetKt;->commonGet(Landroidx/collection/SparseArrayCompat;I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    check-cast v7, Landroidx/navigation/NavDestination;

    .line 93
    .line 94
    if-ne v7, v4, :cond_5

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    iget-object v9, v4, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 98
    .line 99
    if-nez v9, :cond_7

    .line 100
    .line 101
    if-eqz v7, :cond_6

    .line 102
    .line 103
    iput-object v5, v7, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 104
    .line 105
    :cond_6
    iput-object v2, v4, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 106
    .line 107
    iget v5, v8, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 108
    .line 109
    invoke-virtual {v6, v5, v4}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    const-string p0, "Destination already has a parent set. Call NavGraph.remove() to remove the previous parent."

    .line 114
    .line 115
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object v5

    .line 119
    :cond_8
    const-string p0, " cannot have the same id as graph "

    .line 120
    .line 121
    invoke-static {v12, v4, p0, v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-object v5

    .line 125
    :cond_9
    iget-object v3, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationObject:Ljava/lang/Object;

    .line 126
    .line 127
    iget-object v4, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationRoute:Ljava/lang/String;

    .line 128
    .line 129
    if-nez v4, :cond_b

    .line 130
    .line 131
    if-nez v3, :cond_b

    .line 132
    .line 133
    iget-object p0, p0, Landroidx/navigation/NavDestinationBuilder;->route:Ljava/lang/String;

    .line 134
    .line 135
    if-eqz p0, :cond_a

    .line 136
    .line 137
    const-string p0, "You must set a start destination route"

    .line 138
    .line 139
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-object v5

    .line 143
    :cond_a
    const-string p0, "You must set a start destination id"

    .line 144
    .line 145
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-object v5

    .line 149
    :cond_b
    if-eqz v4, :cond_c

    .line 150
    .line 151
    invoke-virtual {v1, v4}, Lokhttp3/Dispatcher;->setStartDestinationRoute$navigation_common_release(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-object v0

    .line 155
    :cond_c
    if-eqz v3, :cond_f

    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 162
    .line 163
    invoke-virtual {v2, p0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-static {p0}, Lkotlin/TuplesKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-static {p0}, Landroidx/navigation/serialization/InternalNavType;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-virtual {v1, v2}, Lokhttp3/Dispatcher;->findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    if-eqz v4, :cond_e

    .line 180
    .line 181
    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getArguments()Ljava/util/Map;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 186
    .line 187
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    invoke-static {v5}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 196
    .line 197
    .line 198
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    check-cast p0, Ljava/lang/Iterable;

    .line 203
    .line 204
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_d

    .line 213
    .line 214
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Ljava/util/Map$Entry;

    .line 219
    .line 220
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    check-cast v5, Landroidx/navigation/NavArgument;

    .line 229
    .line 230
    iget-object v5, v5, Landroidx/navigation/NavArgument;->type:Landroidx/navigation/NavType;

    .line 231
    .line 232
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_d
    invoke-static {v3, v4}, Landroidx/navigation/serialization/InternalNavType;->generateRouteWithArgs(Ljava/lang/Object;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->setStartDestinationRoute$navigation_common_release(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iput v2, v1, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 244
    .line 245
    return-object v0

    .line 246
    :cond_e
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    const-string v0, " from NavGraph. Ensure the starting NavDestination was added with route from KClass."

    .line 255
    .line 256
    const-string v1, "Cannot find startDestination "

    .line 257
    .line 258
    invoke-static {p0, v0, v1}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    return-object v5

    .line 262
    :cond_f
    iget-object p0, v2, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 263
    .line 264
    iget p0, p0, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 265
    .line 266
    if-eqz p0, :cond_11

    .line 267
    .line 268
    iget-object p0, v1, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast p0, Ljava/lang/String;

    .line 271
    .line 272
    if-eqz p0, :cond_10

    .line 273
    .line 274
    invoke-virtual {v1, v5}, Lokhttp3/Dispatcher;->setStartDestinationRoute$navigation_common_release(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    :cond_10
    const/4 p0, 0x0

    .line 278
    iput p0, v1, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 279
    .line 280
    iput-object v5, v1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 281
    .line 282
    return-object v0

    .line 283
    :cond_11
    const-string p0, "Start destination 0 cannot use the same id as the graph "

    .line 284
    .line 285
    invoke-static {p0, v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    return-object v5
.end method
