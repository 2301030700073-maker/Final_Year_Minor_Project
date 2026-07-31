.class public final Lorg/koin/core/scope/Scope;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final _callbacks:Ljava/util/LinkedHashSet;

.field public volatile _closed:Z

.field public final _koin:Lorg/koin/core/Koin;

.field public volatile _parameterStack:Ljava/lang/ThreadLocal;

.field public final id:Ljava/lang/String;

.field public final isRoot:Z

.field public final linkedScopes:Ljava/util/ArrayList;

.field public final scopeArchetype:Lorg/koin/core/qualifier/TypeQualifier;

.field public final scopeQualifier:Lorg/koin/core/qualifier/Qualifier;


# direct methods
.method public constructor <init>(Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;Lorg/koin/core/qualifier/TypeQualifier;Lorg/koin/core/Koin;I)V
    .locals 1

    .line 1
    and-int/lit8 v0, p5, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :goto_0
    and-int/lit8 p5, p5, 0x8

    .line 9
    .line 10
    if-eqz p5, :cond_1

    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lorg/koin/core/scope/Scope;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 20
    .line 21
    iput-object p2, p0, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 22
    .line 23
    iput-boolean v0, p0, Lorg/koin/core/scope/Scope;->isRoot:Z

    .line 24
    .line 25
    iput-object p3, p0, Lorg/koin/core/scope/Scope;->scopeArchetype:Lorg/koin/core/qualifier/TypeQualifier;

    .line 26
    .line 27
    iput-object p4, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lorg/koin/core/scope/Scope;->linkedScopes:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lorg/koin/core/scope/Scope;->_callbacks:Ljava/util/LinkedHashSet;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final clearParameterStack$koin_core(Lkotlin/collections/ArrayDeque;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope;->getParameterStack$koin_core()Ljava/lang/ThreadLocal;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final getAll(Lkotlin/jvm/internal/ClassReference;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    new-instance v0, Lcoil3/ComponentRegistry$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lorg/koin/core/logger/Logger;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v2, p0, p1, v3}, Lcoil3/ComponentRegistry$Builder;-><init>(Lorg/koin/core/logger/Logger;Lorg/koin/core/scope/Scope;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lorg/koin/core/scope/Scope;->scopeArchetype:Lorg/koin/core/qualifier/TypeQualifier;

    .line 14
    .line 15
    iput-object v2, v0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v1, v1, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lorg/jsoup/nodes/Printer;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v1, v1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Iterable;

    .line 33
    .line 34
    new-instance v4, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    move-object v6, v5

    .line 54
    check-cast v6, Lorg/koin/core/instance/InstanceFactory;

    .line 55
    .line 56
    iget-object v6, v6, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 57
    .line 58
    iget-object v7, v6, Lorg/koin/core/definition/BeanDefinition;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 59
    .line 60
    iget-object v8, p0, Lorg/koin/core/scope/Scope;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 61
    .line 62
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-nez v8, :cond_1

    .line 67
    .line 68
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_0

    .line 73
    .line 74
    :cond_1
    iget-object v7, v6, Lorg/koin/core/definition/BeanDefinition;->primaryType:Lkotlin/jvm/internal/ClassReference;

    .line 75
    .line 76
    invoke-virtual {v7, p1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-nez v7, :cond_2

    .line 81
    .line 82
    iget-object v6, v6, Lorg/koin/core/definition/BeanDefinition;->_secondaryTypes:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_0

    .line 89
    .line 90
    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 95
    .line 96
    invoke-direct {v1, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_6

    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    .line 123
    .line 124
    invoke-virtual {v4, v0}, Lorg/koin/core/instance/InstanceFactory;->get(Lcoil3/ComponentRegistry$Builder;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    if-nez v4, :cond_5

    .line 129
    .line 130
    move-object v4, v3

    .line 131
    :cond_5
    if-eqz v4, :cond_4

    .line 132
    .line 133
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .line 141
    .line 142
    iget-object p0, p0, Lorg/koin/core/scope/Scope;->linkedScopes:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_7

    .line 153
    .line 154
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 159
    .line 160
    invoke-virtual {v1, p1}, Lorg/koin/core/scope/Scope;->getAll(Lkotlin/jvm/internal/ClassReference;)Ljava/util/ArrayList;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_7
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0
.end method

.method public final getParameterStack$koin_core()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_parameterStack:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_parameterStack:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lorg/koin/core/scope/Scope;->_parameterStack:Ljava/lang/ThreadLocal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    :cond_0
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0

    .line 21
    throw v0

    .line 22
    :cond_1
    return-object v0
.end method

.method public final onParameterOnStack$koin_core(Lorg/koin/core/parameter/ParametersHolder;)Lkotlin/collections/ArrayDeque;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope;->getParameterStack$koin_core()Ljava/lang/ThreadLocal;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lkotlin/collections/ArrayDeque;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 17
    .line 18
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope;->getParameterStack$koin_core()Ljava/lang/ThreadLocal;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public final resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/koin/core/logger/Logger;

    .line 6
    .line 7
    iget-object v1, v1, Lorg/koin/core/logger/Logger;->level:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lorg/koin/core/logger/Level;

    .line 10
    .line 11
    sget-object v2, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-gtz v1, :cond_1

    .line 18
    .line 19
    iget-boolean v1, p0, Lorg/koin/core/scope/Scope;->isRoot:Z

    .line 20
    .line 21
    const-string v3, ""

    .line 22
    .line 23
    const/16 v4, 0x27

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    move-object v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v5, " - scope:\'"

    .line 32
    .line 33
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v5, p0, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1, v5, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    iget-object v5, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, Lorg/koin/core/logger/Logger;

    .line 45
    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string/jumbo v7, "|- \'"

    .line 49
    .line 50
    .line 51
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, "..."

    .line 71
    .line 72
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v5, v2, v1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->read()J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    invoke-virtual {p0, p1, p2}, Lorg/koin/core/scope/Scope;->resolveInstance(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v3, v4}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    .line 91
    .line 92
    .line 93
    move-result-wide v3

    .line 94
    iget-object p2, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p2, Lorg/koin/core/logger/Logger;

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p1, "\' in "

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    sget-object p1, Lkotlin/time/Duration;->Companion:Lokio/ByteString$Companion;

    .line 116
    .line 117
    sget-object p1, Lkotlin/time/DurationUnit;->MICROSECONDS:Lkotlin/time/DurationUnit;

    .line 118
    .line 119
    invoke-static {v3, v4, p1}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v3

    .line 123
    long-to-double v3, v3

    .line 124
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    div-double/2addr v3, v5

    .line 130
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p1, " ms"

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p2, v2, p1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-object p0

    .line 146
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/koin/core/scope/Scope;->resolveInstance(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    return-object p0
.end method

.method public final resolveFromContext(Lcoil3/ComponentRegistry$Builder;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/koin/core/Koin;->resolver:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lorg/jsoup/parser/TokenData;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p1, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v1, Lorg/koin/core/parameter/ParametersHolder;->_values:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p1, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 29
    .line 30
    iget-object v3, p1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Lkotlin/jvm/internal/ClassReference;

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    move-object v1, v2

    .line 40
    :goto_1
    if-nez v1, :cond_1c

    .line 41
    .line 42
    iget-object v1, p0, Lorg/koin/core/scope/Scope;->_parameterStack:Ljava/lang/ThreadLocal;

    .line 43
    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    :cond_2
    :goto_2
    move-object v1, v2

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lkotlin/collections/ArrayDeque;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_4

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object v3, p1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v3, Lkotlin/jvm/internal/ClassReference;

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :goto_3
    if-nez v1, :cond_1c

    .line 80
    .line 81
    iget-object v1, v0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Lorg/koin/core/Koin;

    .line 84
    .line 85
    iget-object v3, v1, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v3, Lorg/jsoup/nodes/Printer;

    .line 88
    .line 89
    iget-object v4, p1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v4, Lkotlin/jvm/internal/ClassReference;

    .line 92
    .line 93
    iget-object v5, p0, Lorg/koin/core/scope/Scope;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 94
    .line 95
    invoke-virtual {v3, v4, v2, v5}, Lorg/jsoup/nodes/Printer;->resolveDefinition$koin_core(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-nez v3, :cond_7

    .line 100
    .line 101
    iget-boolean v3, p0, Lorg/koin/core/scope/Scope;->isRoot:Z

    .line 102
    .line 103
    if-eqz v3, :cond_6

    .line 104
    .line 105
    :cond_5
    move-object v3, v2

    .line 106
    goto :goto_4

    .line 107
    :cond_6
    iget-object v3, p0, Lorg/koin/core/scope/Scope;->scopeArchetype:Lorg/koin/core/qualifier/TypeQualifier;

    .line 108
    .line 109
    if-eqz v3, :cond_5

    .line 110
    .line 111
    iput-object v3, p1, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 112
    .line 113
    iget-object v1, v1, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v1, Lorg/jsoup/nodes/Printer;

    .line 116
    .line 117
    iget-object v4, p1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v4, Lkotlin/jvm/internal/ClassReference;

    .line 120
    .line 121
    invoke-virtual {v1, v4, v2, v3}, Lorg/jsoup/nodes/Printer;->resolveDefinition$koin_core(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    move-object v3, v1

    .line 126
    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    .line 127
    .line 128
    invoke-virtual {v3, p1}, Lorg/koin/core/instance/InstanceFactory;->get(Lcoil3/ComponentRegistry$Builder;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    goto :goto_5

    .line 133
    :cond_8
    move-object v1, v2

    .line 134
    :goto_5
    if-nez v1, :cond_1a

    .line 135
    .line 136
    iget-boolean v1, p0, Lorg/koin/core/scope/Scope;->isRoot:Z

    .line 137
    .line 138
    if-nez v1, :cond_9

    .line 139
    .line 140
    iget-object v1, p1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v1, Lkotlin/jvm/internal/ClassReference;

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ClassReference;->isInstance(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :cond_9
    iget-object v1, p0, Lorg/koin/core/scope/Scope;->linkedScopes:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 153
    .line 154
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 155
    .line 156
    .line 157
    new-instance v4, Lkotlin/collections/ArrayDeque;

    .line 158
    .line 159
    new-instance v5, Lkotlin/collections/ReversedListReadOnly;

    .line 160
    .line 161
    invoke-direct {v5, v1}, Lkotlin/collections/ReversedListReadOnly;-><init>(Ljava/util/List;)V

    .line 162
    .line 163
    .line 164
    invoke-direct {v4, v5}, Lkotlin/collections/ArrayDeque;-><init>(Lkotlin/collections/ReversedListReadOnly;)V

    .line 165
    .line 166
    .line 167
    :cond_a
    :goto_6
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_d

    .line 172
    .line 173
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 178
    .line 179
    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    if-nez v5, :cond_b

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_b
    iget-object v1, v1, Lorg/koin/core/scope/Scope;->linkedScopes:Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    :cond_c
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_a

    .line 200
    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    check-cast v5, Lorg/koin/core/scope/Scope;

    .line 209
    .line 210
    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-nez v6, :cond_c

    .line 215
    .line 216
    invoke-virtual {v4, v5}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_d
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_e

    .line 225
    .line 226
    goto/16 :goto_b

    .line 227
    .line 228
    :cond_e
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-eqz v3, :cond_19

    .line 237
    .line 238
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    check-cast v3, Lorg/koin/core/scope/Scope;

    .line 243
    .line 244
    iget-object v4, v0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v4, Lorg/koin/core/Koin;

    .line 247
    .line 248
    iget-object v5, v3, Lorg/koin/core/scope/Scope;->scopeArchetype:Lorg/koin/core/qualifier/TypeQualifier;

    .line 249
    .line 250
    if-eqz v5, :cond_10

    .line 251
    .line 252
    iget-object v6, v4, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v6, Lorg/jsoup/nodes/Printer;

    .line 255
    .line 256
    iget-object v7, p1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v7, Lkotlin/jvm/internal/ClassReference;

    .line 259
    .line 260
    invoke-virtual {v6, v7, v2, v5}, Lorg/jsoup/nodes/Printer;->resolveDefinition$koin_core(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    if-nez v5, :cond_11

    .line 265
    .line 266
    :cond_10
    iget-object v4, v4, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v4, Lorg/jsoup/nodes/Printer;

    .line 269
    .line 270
    iget-object v5, p1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v5, Lkotlin/jvm/internal/ClassReference;

    .line 273
    .line 274
    iget-object v6, v3, Lorg/koin/core/scope/Scope;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 275
    .line 276
    invoke-virtual {v4, v5, v2, v6}, Lorg/jsoup/nodes/Printer;->resolveDefinition$koin_core(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    :cond_11
    if-eqz v5, :cond_15

    .line 281
    .line 282
    iget-boolean v1, v3, Lorg/koin/core/scope/Scope;->isRoot:Z

    .line 283
    .line 284
    if-eqz v1, :cond_12

    .line 285
    .line 286
    instance-of v1, v5, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 287
    .line 288
    if-nez v1, :cond_12

    .line 289
    .line 290
    invoke-virtual {v5, p1}, Lorg/koin/core/instance/InstanceFactory;->get(Lcoil3/ComponentRegistry$Builder;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    goto :goto_c

    .line 295
    :cond_12
    new-instance v1, Lcoil3/ComponentRegistry$Builder;

    .line 296
    .line 297
    iget-object v4, p1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v4, Lorg/koin/core/logger/Logger;

    .line 300
    .line 301
    iget-object v6, p1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v6, Lkotlin/jvm/internal/ClassReference;

    .line 304
    .line 305
    iget-object v7, p1, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v7, Lorg/koin/core/parameter/ParametersHolder;

    .line 308
    .line 309
    invoke-direct {v1, v4, v3, v6, v7}, Lcoil3/ComponentRegistry$Builder;-><init>(Lorg/koin/core/logger/Logger;Lorg/koin/core/scope/Scope;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)V

    .line 310
    .line 311
    .line 312
    iget-object v4, v3, Lorg/koin/core/scope/Scope;->scopeArchetype:Lorg/koin/core/qualifier/TypeQualifier;

    .line 313
    .line 314
    iput-object v4, v1, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 315
    .line 316
    if-eqz v4, :cond_13

    .line 317
    .line 318
    iget-boolean v6, v3, Lorg/koin/core/scope/Scope;->isRoot:Z

    .line 319
    .line 320
    if-nez v6, :cond_13

    .line 321
    .line 322
    iput-object v4, v1, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 323
    .line 324
    :cond_13
    if-eqz v7, :cond_14

    .line 325
    .line 326
    invoke-virtual {v3, v7}, Lorg/koin/core/scope/Scope;->onParameterOnStack$koin_core(Lorg/koin/core/parameter/ParametersHolder;)Lkotlin/collections/ArrayDeque;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    goto :goto_8

    .line 331
    :cond_14
    move-object v4, v2

    .line 332
    :goto_8
    invoke-virtual {v5, v1}, Lorg/koin/core/instance/InstanceFactory;->get(Lcoil3/ComponentRegistry$Builder;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    if-eqz v4, :cond_1a

    .line 337
    .line 338
    invoke-virtual {v3, v4}, Lorg/koin/core/scope/Scope;->clearParameterStack$koin_core(Lkotlin/collections/ArrayDeque;)V

    .line 339
    .line 340
    .line 341
    goto :goto_c

    .line 342
    :cond_15
    iget-object v3, v3, Lorg/koin/core/scope/Scope;->_parameterStack:Ljava/lang/ThreadLocal;

    .line 343
    .line 344
    if-nez v3, :cond_17

    .line 345
    .line 346
    :cond_16
    :goto_9
    move-object v3, v2

    .line 347
    goto :goto_a

    .line 348
    :cond_17
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    check-cast v3, Lkotlin/collections/ArrayDeque;

    .line 353
    .line 354
    if-eqz v3, :cond_16

    .line 355
    .line 356
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    if-eqz v4, :cond_18

    .line 361
    .line 362
    goto :goto_9

    .line 363
    :cond_18
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    check-cast v3, Lorg/koin/core/parameter/ParametersHolder;

    .line 368
    .line 369
    if-eqz v3, :cond_16

    .line 370
    .line 371
    iget-object v4, p1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v4, Lkotlin/jvm/internal/ClassReference;

    .line 374
    .line 375
    invoke-virtual {v3, v4}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    :goto_a
    if-eqz v3, :cond_f

    .line 380
    .line 381
    move-object v1, v3

    .line 382
    goto :goto_c

    .line 383
    :cond_19
    :goto_b
    move-object v1, v2

    .line 384
    :cond_1a
    :goto_c
    if-nez v1, :cond_1c

    .line 385
    .line 386
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v0, Ljava/util/ArrayList;

    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-nez v1, :cond_1b

    .line 399
    .line 400
    goto :goto_d

    .line 401
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 409
    .line 410
    .line 411
    return-object v2

    .line 412
    :cond_1c
    move-object v2, v1

    .line 413
    :goto_d
    if-nez v2, :cond_22

    .line 414
    .line 415
    iget-object v0, p1, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 418
    .line 419
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    const-string v1, "scope \'"

    .line 424
    .line 425
    const/16 v2, 0x27

    .line 426
    .line 427
    if-nez v0, :cond_1d

    .line 428
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const-string v1, "\' (resolution context scope: \'"

    .line 438
    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    iget-object v1, p1, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 445
    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    const-string v1, "\')"

    .line 450
    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    goto :goto_e

    .line 459
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    :goto_e
    iget-object v1, p0, Lorg/koin/core/scope/Scope;->linkedScopes:Ljava/util/ArrayList;

    .line 475
    .line 476
    new-instance v3, Ljava/util/ArrayList;

    .line 477
    .line 478
    const/16 v4, 0xa

    .line 479
    .line 480
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 492
    .line 493
    .line 494
    move-result v5

    .line 495
    if-eqz v5, :cond_1e

    .line 496
    .line 497
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v5

    .line 501
    check-cast v5, Lorg/koin/core/scope/Scope;

    .line 502
    .line 503
    iget-object v5, v5, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 504
    .line 505
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    goto :goto_f

    .line 509
    :cond_1e
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    const-string v5, ""

    .line 514
    .line 515
    if-nez v1, :cond_20

    .line 516
    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    const-string v6, " Searched scopes: [\'"

    .line 520
    .line 521
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    iget-object v6, p0, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 525
    .line 526
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    const-string v6, "\'] -> "

    .line 530
    .line 531
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    new-instance v6, Ljava/util/ArrayList;

    .line 535
    .line 536
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 537
    .line 538
    .line 539
    move-result v4

    .line 540
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 548
    .line 549
    .line 550
    move-result v4

    .line 551
    if-eqz v4, :cond_1f

    .line 552
    .line 553
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    check-cast v4, Ljava/lang/String;

    .line 558
    .line 559
    new-instance v7, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    const-string v8, "[\'"

    .line 562
    .line 563
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    const-string v4, "\']"

    .line 570
    .line 571
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    goto :goto_10

    .line 582
    :cond_1f
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    goto :goto_11

    .line 590
    :cond_20
    move-object v1, v5

    .line 591
    :goto_11
    iget-object p1, p1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 592
    .line 593
    check-cast p1, Lkotlin/jvm/internal/ClassReference;

    .line 594
    .line 595
    invoke-static {p1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    const/16 v3, 0x2e

    .line 600
    .line 601
    invoke-static {v3, p1, p1}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v4

    .line 605
    const-string v6, "SavedStateHandle"

    .line 606
    .line 607
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 608
    .line 609
    .line 610
    move-result v4

    .line 611
    if-eqz v4, :cond_21

    .line 612
    .line 613
    const-string p0, " SavedStateHandle is provided by the ViewModel\'s CreationExtras during creation, not by a module definition \u2014 resolve the ViewModel via koinViewModel()/koinNavViewModel() with a proper owner and inject SavedStateHandle in its constructor (do not resolve it lazily or outside construction)."

    .line 614
    .line 615
    goto :goto_12

    .line 616
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 617
    .line 618
    const-string v6, " Check or add definition for type \'"

    .line 619
    .line 620
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    const-string v6, " in scope \'"

    .line 633
    .line 634
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    iget-object p0, p0, Lorg/koin/core/scope/Scope;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 638
    .line 639
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    const-string p0, "\'."

    .line 643
    .line 644
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object p0

    .line 651
    :goto_12
    new-instance v4, Lorg/koin/core/error/ClosedScopeException;

    .line 652
    .line 653
    new-instance v6, Ljava/lang/StringBuilder;

    .line 654
    .line 655
    const-string v7, "No definition found for type \'"

    .line 656
    .line 657
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    const-string p1, " on "

    .line 670
    .line 671
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object p0

    .line 693
    invoke-direct {v4, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    throw v4

    .line 697
    :cond_22
    return-object v2
.end method

.method public final resolveInstance(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/koin/core/scope/Scope;->_closed:Z

    .line 4
    .line 5
    if-nez v1, :cond_2

    .line 6
    .line 7
    new-instance v1, Lcoil3/ComponentRegistry$Builder;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    .line 10
    .line 11
    iget-object v2, v2, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lorg/koin/core/logger/Logger;

    .line 14
    .line 15
    invoke-direct {v1, v2, p0, p1, p2}, Lcoil3/ComponentRegistry$Builder;-><init>(Lorg/koin/core/logger/Logger;Lorg/koin/core/scope/Scope;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo p1, "| << parameters"

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lorg/koin/core/scope/Scope;->resolveFromContext(Lcoil3/ComponentRegistry$Builder;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    iget-object v3, v2, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Lorg/koin/core/logger/Logger;

    .line 33
    .line 34
    iget-object v4, v3, Lorg/koin/core/logger/Logger;->level:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v4, Lorg/koin/core/logger/Level;

    .line 37
    .line 38
    invoke-virtual {v4, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-gtz v4, :cond_1

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v5, "| >> parameters "

    .line 47
    .line 48
    .line 49
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v0, v4}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p0, p2}, Lorg/koin/core/scope/Scope;->onParameterOnStack$koin_core(Lorg/koin/core/parameter/ParametersHolder;)Lkotlin/collections/ArrayDeque;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/koin/core/scope/Scope;->resolveFromContext(Lcoil3/ComponentRegistry$Builder;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v2, v2, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Lorg/koin/core/logger/Logger;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v0, p1}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p2}, Lorg/koin/core/scope/Scope;->clearParameterStack$koin_core(Lkotlin/collections/ArrayDeque;)V

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :catchall_0
    move-exception v1

    .line 85
    iget-object v2, v2, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, Lorg/koin/core/logger/Logger;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v0, p1}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p2}, Lorg/koin/core/scope/Scope;->clearParameterStack$koin_core(Lkotlin/collections/ArrayDeque;)V

    .line 96
    .line 97
    .line 98
    throw v1

    .line 99
    :cond_2
    new-instance p1, Lorg/koin/core/error/ClosedScopeException;

    .line 100
    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v0, "Scope \'"

    .line 104
    .line 105
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 109
    .line 110
    const-string v0, "\' is closed"

    .line 111
    .line 112
    invoke-static {p2, p0, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "\']"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
