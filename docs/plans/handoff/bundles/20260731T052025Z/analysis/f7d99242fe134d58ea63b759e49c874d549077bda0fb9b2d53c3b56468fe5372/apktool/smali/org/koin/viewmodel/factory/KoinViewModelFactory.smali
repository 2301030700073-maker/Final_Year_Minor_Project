.class public final Lorg/koin/viewmodel/factory/KoinViewModelFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final kClass:Lkotlin/jvm/internal/ClassReference;

.field public final params:Lkotlin/jvm/functions/Function0;

.field public final qualifier:Lorg/koin/core/qualifier/Qualifier;

.field public final scope:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->kClass:Lkotlin/jvm/internal/ClassReference;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 12
    .line 13
    iput-object p4, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->params:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 0

    .line 217
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 218
    const-string p1, "`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error."

    .line 219
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 0

    .line 220
    invoke-virtual {p0, p1}, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    const/4 p0, 0x0

    throw p0
.end method

.method public final create(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 10

    .line 1
    new-instance v0, Lorg/koin/viewmodel/factory/AndroidParametersHolder;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->params:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lorg/koin/viewmodel/factory/AndroidParametersHolder;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    .line 9
    .line 10
    iget-object p2, p2, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    .line 11
    .line 12
    iget-object v1, p2, Lorg/koin/core/Koin;->optionRegistry:Lcom/bumptech/glide/load/engine/Jobs;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v2, Lorg/koin/core/option/KoinOption;->VIEWMODEL_SCOPE_FACTORY:Lorg/koin/core/option/KoinOption;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/Jobs;->jobs:Ljava/util/HashMap;

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
    iget-object p2, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->kClass:Lkotlin/jvm/internal/ClassReference;

    .line 40
    .line 41
    iget-object p0, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 42
    .line 43
    invoke-virtual {p1, p2, v0, p0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Landroidx/lifecycle/ViewModel;

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 v3, 0x2d

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lokhttp3/CacheControl$Companion;->generateId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    new-instance v5, Lorg/koin/core/qualifier/TypeQualifier;

    .line 79
    .line 80
    invoke-direct {v5, p1}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 81
    .line 82
    .line 83
    sget-object v7, Lorg/koin/viewmodel/scope/ViewModelScopeArchetypeKt;->ViewModelScopeArchetype:Lorg/koin/core/qualifier/TypeQualifier;

    .line 84
    .line 85
    iget-object p1, p2, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 86
    .line 87
    iget-object v1, p1, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Lj$/util/concurrent/ConcurrentHashMap;

    .line 88
    .line 89
    iget-object v3, p1, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    .line 90
    .line 91
    iget-object v3, v3, Lorg/koin/core/Koin;->logger:Lokio/AsyncTimeout$Companion;

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    sget-object v3, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 97
    .line 98
    sget-object v4, Lorg/koin/core/logger/Level;->NONE:Lorg/koin/core/logger/Level;

    .line 99
    .line 100
    invoke-virtual {v4, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 101
    .line 102
    .line 103
    iget-object v8, p1, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/Set;

    .line 104
    .line 105
    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-nez v9, :cond_2

    .line 110
    .line 111
    invoke-virtual {v4, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 112
    .line 113
    .line 114
    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_2
    invoke-virtual {v1, v6}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_6

    .line 122
    .line 123
    iget-object v8, p1, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    .line 124
    .line 125
    new-instance v4, Lorg/koin/core/scope/Scope;

    .line 126
    .line 127
    const/4 v9, 0x4

    .line 128
    invoke-direct/range {v4 .. v9}, Lorg/koin/core/scope/Scope;-><init>(Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;Lorg/koin/core/qualifier/TypeQualifier;Lorg/koin/core/Koin;I)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p1, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 132
    .line 133
    const/4 v3, 0x1

    .line 134
    new-array v3, v3, [Lorg/koin/core/scope/Scope;

    .line 135
    .line 136
    const/4 v5, 0x0

    .line 137
    aput-object p1, v3, v5

    .line 138
    .line 139
    iget-boolean p1, v4, Lorg/koin/core/scope/Scope;->isRoot:Z

    .line 140
    .line 141
    if-nez p1, :cond_5

    .line 142
    .line 143
    iget-object p1, v4, Lorg/koin/core/scope/Scope;->linkedScopes:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-static {v3}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {p1, v5, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v6, v4}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->kClass:Lkotlin/jvm/internal/ClassReference;

    .line 156
    .line 157
    iget-object p0, p0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 158
    .line 159
    invoke-virtual {v4, p1, v0, p0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    check-cast p0, Landroidx/lifecycle/ViewModel;

    .line 164
    .line 165
    new-instance p1, Lorg/koin/viewmodel/factory/ViewModelScopeAutoCloseable;

    .line 166
    .line 167
    invoke-direct {p1, v6, p2}, Lorg/koin/viewmodel/factory/ViewModelScopeAutoCloseable;-><init>(Ljava/lang/String;Lorg/koin/core/Koin;)V

    .line 168
    .line 169
    .line 170
    iget-object p2, p0, Landroidx/lifecycle/ViewModel;->impl:Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;

    .line 171
    .line 172
    if-eqz p2, :cond_4

    .line 173
    .line 174
    iget-boolean v0, p2, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->isCleared:Z

    .line 175
    .line 176
    if-eqz v0, :cond_3

    .line 177
    .line 178
    invoke-static {p1}, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->closeWithRuntimeException(Ljava/lang/AutoCloseable;)V

    .line 179
    .line 180
    .line 181
    return-object p0

    .line 182
    :cond_3
    iget-object v1, p2, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->lock:Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;

    .line 183
    .line 184
    monitor-enter v1

    .line 185
    :try_start_0
    iget-object p2, p2, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->closeables:Ljava/util/LinkedHashSet;

    .line 186
    .line 187
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .line 189
    .line 190
    monitor-exit v1

    .line 191
    return-object p0

    .line 192
    :catchall_0
    move-exception v0

    .line 193
    move-object p0, v0

    .line 194
    monitor-exit v1

    .line 195
    throw p0

    .line 196
    :cond_4
    return-object p0

    .line 197
    :cond_5
    const-string p0, "Can\'t add scope link to a root scope"

    .line 198
    .line 199
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return-object v2

    .line 203
    :cond_6
    new-instance p0, Lorg/koin/core/error/InstanceCreationException;

    .line 204
    .line 205
    const-string p1, "Scope with id \'"

    .line 206
    .line 207
    const-string p2, "\' is already created"

    .line 208
    .line 209
    invoke-static {p1, v6, p2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p0
.end method
