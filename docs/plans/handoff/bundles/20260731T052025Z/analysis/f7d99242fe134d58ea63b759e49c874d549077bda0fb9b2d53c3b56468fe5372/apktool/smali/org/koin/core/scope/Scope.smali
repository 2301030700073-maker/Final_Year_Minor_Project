.class public final Lorg/koin/core/scope/Scope;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
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
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 37
    .line 38
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 39
    .line 40
    .line 41
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

.method public final get(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lorg/koin/core/parameter/ParametersHolder;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p3, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
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

.method public final resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/koin/core/Koin;->logger:Lokio/AsyncTimeout$Companion;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Lorg/koin/core/logger/Level;->NONE:Lorg/koin/core/logger/Level;

    .line 9
    .line 10
    sget-object v2, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-gtz v1, :cond_1

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {p1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->read()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lorg/koin/core/scope/Scope;->resolveInstance(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v1, v2}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide p2

    .line 41
    invoke-static {p1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 45
    .line 46
    sget-object p1, Lkotlin/time/DurationUnit;->MICROSECONDS:Lkotlin/time/DurationUnit;

    .line 47
    .line 48
    invoke-static {p2, p3, p1}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/koin/core/scope/Scope;->resolveInstance(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public final resolveFromContext(Lcom/fsck/k9/mailstore/LocalStore$7;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/koin/core/Koin;->resolver:Lorg/jsoup/internal/SoftPool;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, v1, Lorg/koin/core/parameter/ParametersHolder;->_values:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 27
    .line 28
    iget-object v3, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Lkotlin/jvm/internal/ClassReference;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    move-object v1, v2

    .line 38
    :goto_1
    if-nez v1, :cond_1c

    .line 39
    .line 40
    iget-object v1, p0, Lorg/koin/core/scope/Scope;->_parameterStack:Ljava/lang/ThreadLocal;

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    :cond_2
    :goto_2
    move-object v1, v2

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lkotlin/collections/ArrayDeque;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    iget-object v3, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v3, Lkotlin/jvm/internal/ClassReference;

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :goto_3
    if-nez v1, :cond_1c

    .line 78
    .line 79
    iget-object v1, v0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Lorg/koin/core/Koin;

    .line 82
    .line 83
    iget-object v3, v1, Lorg/koin/core/Koin;->instanceRegistry:Lorg/slf4j/event/EventRecodingLogger;

    .line 84
    .line 85
    iget-object v4, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v4, Lkotlin/jvm/internal/ClassReference;

    .line 88
    .line 89
    iget-object v5, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v5, Lorg/koin/core/qualifier/Qualifier;

    .line 92
    .line 93
    iget-object v6, p0, Lorg/koin/core/scope/Scope;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 94
    .line 95
    invoke-virtual {v3, v4, v5, v6}, Lorg/slf4j/event/EventRecodingLogger;->resolveDefinition$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;

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
    iget-object v1, v1, Lorg/koin/core/Koin;->instanceRegistry:Lorg/slf4j/event/EventRecodingLogger;

    .line 112
    .line 113
    iget-object v4, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v4, Lkotlin/jvm/internal/ClassReference;

    .line 116
    .line 117
    invoke-virtual {v1, v4, v5, v3}, Lorg/slf4j/event/EventRecodingLogger;->resolveDefinition$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    move-object v3, v1

    .line 122
    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    .line 123
    .line 124
    invoke-virtual {v3, p1}, Lorg/koin/core/instance/InstanceFactory;->get(Lcom/fsck/k9/mailstore/LocalStore$7;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    goto :goto_5

    .line 129
    :cond_8
    move-object v1, v2

    .line 130
    :goto_5
    if-nez v1, :cond_1a

    .line 131
    .line 132
    iget-boolean v1, p0, Lorg/koin/core/scope/Scope;->isRoot:Z

    .line 133
    .line 134
    if-nez v1, :cond_a

    .line 135
    .line 136
    iget-object v1, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v1, Lorg/koin/core/qualifier/Qualifier;

    .line 139
    .line 140
    if-eqz v1, :cond_9

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_9
    iget-object v1, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v1, Lkotlin/jvm/internal/ClassReference;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ClassReference;->isInstance(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_a
    :goto_6
    iget-object v1, p0, Lorg/koin/core/scope/Scope;->linkedScopes:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 156
    .line 157
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 158
    .line 159
    .line 160
    new-instance v4, Lkotlin/collections/ArrayDeque;

    .line 161
    .line 162
    new-instance v5, Lkotlin/collections/ReversedListReadOnly;

    .line 163
    .line 164
    invoke-direct {v5, v1}, Lkotlin/collections/ReversedListReadOnly;-><init>(Ljava/util/List;)V

    .line 165
    .line 166
    .line 167
    invoke-direct {v4, v5}, Lkotlin/collections/ArrayDeque;-><init>(Lkotlin/collections/ReversedListReadOnly;)V

    .line 168
    .line 169
    .line 170
    :cond_b
    :goto_7
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_e

    .line 175
    .line 176
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 181
    .line 182
    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    if-nez v5, :cond_c

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_c
    iget-object v1, v1, Lorg/koin/core/scope/Scope;->linkedScopes:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    :cond_d
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-eqz v5, :cond_b

    .line 203
    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    check-cast v5, Lorg/koin/core/scope/Scope;

    .line 212
    .line 213
    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    if-nez v6, :cond_d

    .line 218
    .line 219
    invoke-virtual {v4, v5}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    goto :goto_8

    .line 223
    :cond_e
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-eqz v1, :cond_f

    .line 228
    .line 229
    goto/16 :goto_10

    .line 230
    .line 231
    :cond_f
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eqz v3, :cond_19

    .line 240
    .line 241
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    move-object v6, v3

    .line 246
    check-cast v6, Lorg/koin/core/scope/Scope;

    .line 247
    .line 248
    iget-object v3, v0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v3, Lorg/koin/core/Koin;

    .line 251
    .line 252
    iget-object v4, v6, Lorg/koin/core/scope/Scope;->scopeArchetype:Lorg/koin/core/qualifier/TypeQualifier;

    .line 253
    .line 254
    if-eqz v4, :cond_12

    .line 255
    .line 256
    iget-object v5, v3, Lorg/koin/core/Koin;->instanceRegistry:Lorg/slf4j/event/EventRecodingLogger;

    .line 257
    .line 258
    iget-object v7, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v7, Lkotlin/jvm/internal/ClassReference;

    .line 261
    .line 262
    iget-object v8, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v8, Lorg/koin/core/qualifier/Qualifier;

    .line 265
    .line 266
    invoke-virtual {v5, v7, v8, v4}, Lorg/slf4j/event/EventRecodingLogger;->resolveDefinition$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    if-nez v4, :cond_11

    .line 271
    .line 272
    goto :goto_a

    .line 273
    :cond_11
    :goto_9
    move-object v3, v4

    .line 274
    goto :goto_b

    .line 275
    :cond_12
    :goto_a
    iget-object v3, v3, Lorg/koin/core/Koin;->instanceRegistry:Lorg/slf4j/event/EventRecodingLogger;

    .line 276
    .line 277
    iget-object v4, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v4, Lkotlin/jvm/internal/ClassReference;

    .line 280
    .line 281
    iget-object v5, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v5, Lorg/koin/core/qualifier/Qualifier;

    .line 284
    .line 285
    iget-object v7, v6, Lorg/koin/core/scope/Scope;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 286
    .line 287
    invoke-virtual {v3, v4, v5, v7}, Lorg/slf4j/event/EventRecodingLogger;->resolveDefinition$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    goto :goto_9

    .line 292
    :goto_b
    if-eqz v3, :cond_15

    .line 293
    .line 294
    new-instance v4, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 295
    .line 296
    iget-object v1, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 297
    .line 298
    move-object v5, v1

    .line 299
    check-cast v5, Lokio/AsyncTimeout$Companion;

    .line 300
    .line 301
    iget-object v1, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 302
    .line 303
    move-object v7, v1

    .line 304
    check-cast v7, Lkotlin/jvm/internal/ClassReference;

    .line 305
    .line 306
    iget-object v1, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 307
    .line 308
    move-object v8, v1

    .line 309
    check-cast v8, Lorg/koin/core/qualifier/Qualifier;

    .line 310
    .line 311
    iget-object v1, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 312
    .line 313
    move-object v9, v1

    .line 314
    check-cast v9, Lorg/koin/core/parameter/ParametersHolder;

    .line 315
    .line 316
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Lokio/AsyncTimeout$Companion;Lorg/koin/core/scope/Scope;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)V

    .line 317
    .line 318
    .line 319
    if-eqz v9, :cond_13

    .line 320
    .line 321
    invoke-virtual {v6, v9}, Lorg/koin/core/scope/Scope;->onParameterOnStack$koin_core(Lorg/koin/core/parameter/ParametersHolder;)Lkotlin/collections/ArrayDeque;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    goto :goto_c

    .line 326
    :cond_13
    move-object v1, v2

    .line 327
    :goto_c
    invoke-virtual {v3, v4}, Lorg/koin/core/instance/InstanceFactory;->get(Lcom/fsck/k9/mailstore/LocalStore$7;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    if-eqz v1, :cond_14

    .line 332
    .line 333
    invoke-virtual {v6, v1}, Lorg/koin/core/scope/Scope;->clearParameterStack$koin_core(Lkotlin/collections/ArrayDeque;)V

    .line 334
    .line 335
    .line 336
    :cond_14
    :goto_d
    move-object v1, v3

    .line 337
    goto :goto_11

    .line 338
    :cond_15
    iget-object v3, v6, Lorg/koin/core/scope/Scope;->_parameterStack:Ljava/lang/ThreadLocal;

    .line 339
    .line 340
    if-nez v3, :cond_17

    .line 341
    .line 342
    :cond_16
    :goto_e
    move-object v3, v2

    .line 343
    goto :goto_f

    .line 344
    :cond_17
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    check-cast v3, Lkotlin/collections/ArrayDeque;

    .line 349
    .line 350
    if-eqz v3, :cond_16

    .line 351
    .line 352
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-eqz v4, :cond_18

    .line 357
    .line 358
    goto :goto_e

    .line 359
    :cond_18
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    check-cast v3, Lorg/koin/core/parameter/ParametersHolder;

    .line 364
    .line 365
    if-eqz v3, :cond_16

    .line 366
    .line 367
    iget-object v4, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v4, Lkotlin/jvm/internal/ClassReference;

    .line 370
    .line 371
    invoke-virtual {v3, v4}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    :goto_f
    if-eqz v3, :cond_10

    .line 376
    .line 377
    goto :goto_d

    .line 378
    :cond_19
    :goto_10
    move-object v1, v2

    .line 379
    :cond_1a
    :goto_11
    if-nez v1, :cond_1c

    .line 380
    .line 381
    iget-object v0, v0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast v0, Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    if-nez v1, :cond_1b

    .line 394
    .line 395
    goto :goto_12

    .line 396
    :cond_1b
    invoke-static {v0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 397
    .line 398
    .line 399
    move-result-object p0

    .line 400
    throw p0

    .line 401
    :cond_1c
    move-object v2, v1

    .line 402
    :goto_12
    if-nez v2, :cond_22

    .line 403
    .line 404
    iget-object v0, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v0, Lorg/koin/core/qualifier/Qualifier;

    .line 407
    .line 408
    const-string v1, ""

    .line 409
    .line 410
    const/16 v2, 0x27

    .line 411
    .line 412
    if-eqz v0, :cond_1d

    .line 413
    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    const-string v4, " and qualifier \'"

    .line 417
    .line 418
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    goto :goto_13

    .line 432
    :cond_1d
    move-object v0, v1

    .line 433
    :goto_13
    iget-object v3, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v3, Lorg/koin/core/scope/Scope;

    .line 436
    .line 437
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    const-string v4, "scope \'"

    .line 442
    .line 443
    if-nez v3, :cond_1e

    .line 444
    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    const-string v4, "\' (resolution context scope: \'"

    .line 454
    .line 455
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    iget-object v4, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 459
    .line 460
    check-cast v4, Lorg/koin/core/scope/Scope;

    .line 461
    .line 462
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    const-string v4, "\')"

    .line 466
    .line 467
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    goto :goto_14

    .line 475
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    :goto_14
    iget-object v4, p0, Lorg/koin/core/scope/Scope;->linkedScopes:Ljava/util/ArrayList;

    .line 491
    .line 492
    new-instance v5, Ljava/util/ArrayList;

    .line 493
    .line 494
    const/16 v6, 0xa

    .line 495
    .line 496
    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 497
    .line 498
    .line 499
    move-result v7

    .line 500
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    if-eqz v7, :cond_1f

    .line 512
    .line 513
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v7

    .line 517
    check-cast v7, Lorg/koin/core/scope/Scope;

    .line 518
    .line 519
    iget-object v7, v7, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 520
    .line 521
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    goto :goto_15

    .line 525
    :cond_1f
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 526
    .line 527
    .line 528
    move-result v4

    .line 529
    if-nez v4, :cond_21

    .line 530
    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    const-string v4, " Searched scopes: [\'"

    .line 534
    .line 535
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    iget-object v4, p0, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 539
    .line 540
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    const-string v4, "\'] -> "

    .line 544
    .line 545
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    new-instance v4, Ljava/util/ArrayList;

    .line 549
    .line 550
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 551
    .line 552
    .line 553
    move-result v6

    .line 554
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 558
    .line 559
    .line 560
    move-result-object v5

    .line 561
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 562
    .line 563
    .line 564
    move-result v6

    .line 565
    if-eqz v6, :cond_20

    .line 566
    .line 567
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v6

    .line 571
    check-cast v6, Ljava/lang/String;

    .line 572
    .line 573
    new-instance v7, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    const-string v8, "[\'"

    .line 576
    .line 577
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    const-string v6, "\']"

    .line 584
    .line 585
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v6

    .line 592
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    goto :goto_16

    .line 596
    :cond_20
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    :cond_21
    new-instance v4, Lorg/koin/core/error/NoDefinitionFoundException;

    .line 604
    .line 605
    iget-object v5, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 606
    .line 607
    check-cast v5, Lkotlin/jvm/internal/ClassReference;

    .line 608
    .line 609
    invoke-static {v5}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v5

    .line 613
    iget-object p1, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 614
    .line 615
    check-cast p1, Lkotlin/jvm/internal/ClassReference;

    .line 616
    .line 617
    invoke-static {p1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object p1

    .line 621
    iget-object p0, p0, Lorg/koin/core/scope/Scope;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 622
    .line 623
    new-instance v6, Ljava/lang/StringBuilder;

    .line 624
    .line 625
    const-string v7, "No definition found for type \'"

    .line 626
    .line 627
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    const-string v5, " on "

    .line 640
    .line 641
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    const/16 v3, 0x2e

    .line 648
    .line 649
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    const-string v1, ". Check or add definition for type \'"

    .line 656
    .line 657
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    const-string p1, " in scope \'"

    .line 670
    .line 671
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    const-string p0, "\'."

    .line 678
    .line 679
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object p0

    .line 686
    invoke-direct {v4, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    throw v4

    .line 690
    :cond_22
    return-object v2
.end method

.method public final resolveInstance(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 2
    .line 3
    iget-object v6, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    .line 4
    .line 5
    iget-object v1, v6, Lorg/koin/core/Koin;->logger:Lokio/AsyncTimeout$Companion;

    .line 6
    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v5, p2

    .line 10
    move-object v4, p3

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Lokio/AsyncTimeout$Companion;Lorg/koin/core/scope/Scope;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)V

    .line 12
    .line 13
    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Lorg/koin/core/scope/Scope;->resolveFromContext(Lcom/fsck/k9/mailstore/LocalStore$7;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    iget-object p0, v6, Lorg/koin/core/Koin;->logger:Lokio/AsyncTimeout$Companion;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object p1, Lorg/koin/core/logger/Level;->NONE:Lorg/koin/core/logger/Level;

    .line 27
    .line 28
    sget-object p2, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-gtz p3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v5}, Lorg/koin/core/parameter/ParametersHolder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v2, v5}, Lorg/koin/core/scope/Scope;->onParameterOnStack$koin_core(Lorg/koin/core/parameter/ParametersHolder;)Lkotlin/collections/ArrayDeque;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/koin/core/scope/Scope;->resolveFromContext(Lcom/fsck/k9/mailstore/LocalStore$7;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p3}, Lorg/koin/core/scope/Scope;->clearParameterStack$koin_core(Lkotlin/collections/ArrayDeque;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p3}, Lorg/koin/core/scope/Scope;->clearParameterStack$koin_core(Lkotlin/collections/ArrayDeque;)V

    .line 65
    .line 66
    .line 67
    throw v0
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
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
