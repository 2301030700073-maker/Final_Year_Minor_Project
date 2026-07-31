.class public final Lorg/koin/viewmodel/factory/KoinViewModelFactory;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final kClass:Lkotlin/jvm/internal/ClassReference;

.field public final scope:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/scope/Scope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->kClass:Lkotlin/jvm/internal/ClassReference;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 0

    .line 305
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 306
    const-string p1, "`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error."

    .line 307
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 0

    .line 308
    invoke-virtual {p0, p1}, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    const/4 p0, 0x0

    throw p0
.end method

.method public final create(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 11

    .line 1
    new-instance v0, Lorg/koin/viewmodel/factory/AndroidParametersHolder;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lorg/koin/viewmodel/factory/AndroidParametersHolder;-><init>(Landroidx/lifecycle/viewmodel/MutableCreationExtras;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    .line 7
    .line 8
    iget-object p2, p2, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    .line 9
    .line 10
    iget-object v1, p2, Lorg/koin/core/Koin;->optionRegistry:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lio/noties/markwon/RenderPropsImpl;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v2, Lorg/koin/core/option/KoinOption;->VIEWMODEL_SCOPE_FACTORY:Lorg/koin/core/option/KoinOption;

    .line 18
    .line 19
    iget-object v1, v1, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    move-object v1, v2

    .line 29
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    .line 38
    .line 39
    iget-object p0, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->kClass:Lkotlin/jvm/internal/ClassReference;

    .line 40
    .line 41
    invoke-virtual {p1, p0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Landroidx/lifecycle/ViewModel;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const/16 v3, 0x2d

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lkotlin/text/CharsKt;->generateId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    new-instance v5, Lorg/koin/core/qualifier/TypeQualifier;

    .line 77
    .line 78
    invoke-direct {v5, p1}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 79
    .line 80
    .line 81
    sget-object v7, Lorg/koin/viewmodel/scope/ViewModelScopeArchetypeKt;->ViewModelScopeArchetype:Lorg/koin/core/qualifier/TypeQualifier;

    .line 82
    .line 83
    iget-object p1, p2, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p1, Lorg/koin/core/registry/ScopeRegistry;

    .line 86
    .line 87
    iget-object v1, p1, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Lj$/util/concurrent/ConcurrentHashMap;

    .line 88
    .line 89
    iget-object v3, p1, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    .line 90
    .line 91
    iget-object v4, v3, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v4, Lorg/koin/core/logger/Logger;

    .line 94
    .line 95
    new-instance v8, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string/jumbo v9, "| (+) Scope - id:\'"

    .line 98
    .line 99
    .line 100
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v9, "\' q:\'"

    .line 107
    .line 108
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const/16 v9, 0x27

    .line 115
    .line 116
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    sget-object v9, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 127
    .line 128
    invoke-virtual {v4, v9, v8}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v4, p1, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/Set;

    .line 132
    .line 133
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-nez v8, :cond_2

    .line 138
    .line 139
    iget-object v3, v3, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v3, Lorg/koin/core/logger/Logger;

    .line 142
    .line 143
    new-instance v8, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string/jumbo v10, "| Scope \'"

    .line 146
    .line 147
    .line 148
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v10, "\' not defined. Creating it ..."

    .line 155
    .line 156
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v9, v8}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    :cond_2
    invoke-virtual {v1, v6}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-nez v3, :cond_8

    .line 177
    .line 178
    iget-object v8, p1, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    .line 179
    .line 180
    new-instance v4, Lorg/koin/core/scope/Scope;

    .line 181
    .line 182
    const/4 v9, 0x4

    .line 183
    invoke-direct/range {v4 .. v9}, Lorg/koin/core/scope/Scope;-><init>(Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;Lorg/koin/core/qualifier/TypeQualifier;Lorg/koin/core/Koin;I)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p1, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 187
    .line 188
    const/4 v3, 0x1

    .line 189
    new-array v5, v3, [Lorg/koin/core/scope/Scope;

    .line 190
    .line 191
    const/4 v7, 0x0

    .line 192
    aput-object p1, v5, v7

    .line 193
    .line 194
    iget-boolean p1, v4, Lorg/koin/core/scope/Scope;->isRoot:Z

    .line 195
    .line 196
    if-nez p1, :cond_7

    .line 197
    .line 198
    iget-object p1, v4, Lorg/koin/core/scope/Scope;->linkedScopes:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-static {v5}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {p1, v7, v5}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v6, v4}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    .line 211
    .line 212
    iget-boolean v1, p1, Lorg/koin/core/scope/Scope;->isRoot:Z

    .line 213
    .line 214
    if-nez v1, :cond_4

    .line 215
    .line 216
    new-array v1, v3, [Lorg/koin/core/scope/Scope;

    .line 217
    .line 218
    aput-object p1, v1, v7

    .line 219
    .line 220
    iget-boolean p1, v4, Lorg/koin/core/scope/Scope;->isRoot:Z

    .line 221
    .line 222
    if-nez p1, :cond_3

    .line 223
    .line 224
    iget-object p1, v4, Lorg/koin/core/scope/Scope;->linkedScopes:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {p1, v7, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_3
    const-string p0, "Can\'t add scope link to a root scope"

    .line 235
    .line 236
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    return-object v2

    .line 240
    :cond_4
    :goto_0
    iget-object p0, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->kClass:Lkotlin/jvm/internal/ClassReference;

    .line 241
    .line 242
    invoke-virtual {v4, p0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    check-cast p0, Landroidx/lifecycle/ViewModel;

    .line 247
    .line 248
    new-instance p1, Lorg/koin/viewmodel/factory/ViewModelScopeAutoCloseable;

    .line 249
    .line 250
    invoke-direct {p1, v6, p2}, Lorg/koin/viewmodel/factory/ViewModelScopeAutoCloseable;-><init>(Ljava/lang/String;Lorg/koin/core/Koin;)V

    .line 251
    .line 252
    .line 253
    iget-object p2, p0, Landroidx/lifecycle/ViewModel;->impl:Lcom/livefront/bridge/disk/FileDiskHandler;

    .line 254
    .line 255
    if-eqz p2, :cond_6

    .line 256
    .line 257
    iget-boolean v0, p2, Lcom/livefront/bridge/disk/FileDiskHandler;->mIsLoadedOrTimedOut:Z

    .line 258
    .line 259
    if-eqz v0, :cond_5

    .line 260
    .line 261
    invoke-static {p1}, Lcom/livefront/bridge/disk/FileDiskHandler;->closeWithRuntimeException(Ljava/lang/AutoCloseable;)V

    .line 262
    .line 263
    .line 264
    return-object p0

    .line 265
    :cond_5
    iget-object v0, p2, Lcom/livefront/bridge/disk/FileDiskHandler;->mDirectory:Ljava/lang/Object;

    .line 266
    .line 267
    move-object v1, v0

    .line 268
    check-cast v1, Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;

    .line 269
    .line 270
    monitor-enter v1

    .line 271
    :try_start_0
    iget-object p2, p2, Lcom/livefront/bridge/disk/FileDiskHandler;->mKeyByteMap:Ljava/io/Serializable;

    .line 272
    .line 273
    check-cast p2, Ljava/util/LinkedHashSet;

    .line 274
    .line 275
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .line 277
    .line 278
    monitor-exit v1

    .line 279
    return-object p0

    .line 280
    :catchall_0
    move-exception v0

    .line 281
    move-object p0, v0

    .line 282
    monitor-exit v1

    .line 283
    throw p0

    .line 284
    :cond_6
    return-object p0

    .line 285
    :cond_7
    const-string p0, "Can\'t add scope link to a root scope"

    .line 286
    .line 287
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    return-object v2

    .line 291
    :cond_8
    new-instance p0, Lorg/koin/core/error/ClosedScopeException;

    .line 292
    .line 293
    const-string p1, "Scope with id \'"

    .line 294
    .line 295
    const-string p2, "\' is already created"

    .line 296
    .line 297
    invoke-static {p1, v6, p2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw p0
.end method
