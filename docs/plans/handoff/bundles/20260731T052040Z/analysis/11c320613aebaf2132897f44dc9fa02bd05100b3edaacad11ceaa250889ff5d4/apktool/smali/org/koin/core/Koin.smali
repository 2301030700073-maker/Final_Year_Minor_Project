.class public final Lorg/koin/core/Koin;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public extensionManager:Ljava/lang/Object;

.field public instanceRegistry:Ljava/lang/Object;

.field public logger:Ljava/lang/Object;

.field public optionRegistry:Ljava/lang/Object;

.field public propertyRegistry:Ljava/lang/Object;

.field public resolver:Ljava/lang/Object;

.field public scopeRegistry:Ljava/lang/Object;


# virtual methods
.method public close()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/koin/core/registry/ScopeRegistry;

    .line 4
    .line 5
    iget-object v1, v0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Lj$/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    new-array v3, v2, [Lorg/koin/core/scope/Scope;

    .line 13
    .line 14
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    array-length v3, v1

    .line 19
    move v4, v2

    .line 20
    :goto_0
    if-ge v4, v3, :cond_0

    .line 21
    .line 22
    aget-object v5, v1, v4

    .line 23
    .line 24
    check-cast v5, Lorg/koin/core/scope/Scope;

    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v6, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-direct {v6, v5, v2}, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    monitor-enter v5

    .line 35
    :try_start_0
    invoke-virtual {v6}, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit v5

    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v5

    .line 44
    throw p0

    .line 45
    :cond_0
    iget-object v1, v0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Lj$/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/Set;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lorg/jsoup/nodes/Printer;

    .line 58
    .line 59
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-array v3, v2, [Lorg/koin/core/instance/InstanceFactory;

    .line 68
    .line 69
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, [Lorg/koin/core/instance/InstanceFactory;

    .line 74
    .line 75
    array-length v3, v1

    .line 76
    :goto_1
    if-ge v2, v3, :cond_1

    .line 77
    .line 78
    aget-object v4, v1, v2

    .line 79
    .line 80
    invoke-virtual {v4}, Lorg/koin/core/instance/InstanceFactory;->dropAll()V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lorg/koin/core/Koin;->propertyRegistry:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Lorg/koin/core/registry/PropertyRegistry;

    .line 92
    .line 93
    iget-object v0, v0, Lorg/koin/core/registry/PropertyRegistry;->_values:Lj$/util/concurrent/ConcurrentHashMap;

    .line 94
    .line 95
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lorg/koin/core/Koin;->extensionManager:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p0, Lio/noties/markwon/RenderPropsImpl;

    .line 101
    .line 102
    iget-object p0, p0, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    check-cast p0, Ljava/lang/Iterable;

    .line 112
    .line 113
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_2

    .line 122
    .line 123
    return-void

    .line 124
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public createEagerInstances()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/koin/core/logger/Logger;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 9
    .line 10
    const-string v2, "Create eager instances ..."

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->read()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-object v0, p0, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lorg/jsoup/nodes/Printer;

    .line 22
    .line 23
    iget-object v4, v0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v4, Lj$/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const/4 v6, 0x0

    .line 32
    new-array v6, v6, [Lorg/koin/core/instance/SingleInstanceFactory;

    .line 33
    .line 34
    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, [Lorg/koin/core/instance/SingleInstanceFactory;

    .line 39
    .line 40
    array-length v6, v5

    .line 41
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-static {v5}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 50
    .line 51
    .line 52
    new-instance v4, Lcoil3/ComponentRegistry$Builder;

    .line 53
    .line 54
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lorg/koin/core/Koin;

    .line 57
    .line 58
    iget-object v6, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v6, Lorg/koin/core/logger/Logger;

    .line 61
    .line 62
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lorg/koin/core/registry/ScopeRegistry;

    .line 65
    .line 66
    iget-object v0, v0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 67
    .line 68
    const-class v7, Lkotlin/text/CharsKt;

    .line 69
    .line 70
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    const/4 v8, 0x0

    .line 75
    invoke-direct {v4, v6, v0, v7, v8}, Lcoil3/ComponentRegistry$Builder;-><init>(Lorg/koin/core/logger/Logger;Lorg/koin/core/scope/Scope;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_0

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 93
    .line 94
    invoke-virtual {v5, v4}, Lorg/koin/core/instance/SingleInstanceFactory;->get(Lcoil3/ComponentRegistry$Builder;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    invoke-static {v2, v3}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    iget-object p0, p0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p0, Lorg/koin/core/logger/Logger;

    .line 105
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v4, "Created eager instances in "

    .line 109
    .line 110
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-object v4, Lkotlin/time/Duration;->Companion:Lokio/ByteString$Companion;

    .line 114
    .line 115
    sget-object v4, Lkotlin/time/DurationUnit;->MICROSECONDS:Lkotlin/time/DurationUnit;

    .line 116
    .line 117
    invoke-static {v2, v3, v4}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    long-to-double v2, v2

    .line 122
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    div-double/2addr v2, v4

    .line 128
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v2, " ms"

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v1, v0}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    return-object p0
.end method

.method public loadModules(Ljava/util/List;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lkotlin/collections/ArrayDeque;

    .line 9
    .line 10
    new-instance v3, Lkotlin/collections/ReversedListReadOnly;

    .line 11
    .line 12
    move-object/from16 v4, p1

    .line 13
    .line 14
    invoke-direct {v3, v4}, Lkotlin/collections/ReversedListReadOnly;-><init>(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lkotlin/collections/ArrayDeque;-><init>(Lkotlin/collections/ReversedListReadOnly;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_3

    .line 25
    .line 26
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lorg/koin/core/module/Module;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v3, v3, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v4, Lkotlin/collections/ReversedList;

    .line 45
    .line 46
    invoke-direct {v4, v3}, Lkotlin/collections/ReversedList;-><init>(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lkotlin/collections/ReversedList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :cond_2
    :goto_1
    move-object v4, v3

    .line 54
    check-cast v4, Lkotlin/collections/ReversedList$listIterator$1;

    .line 55
    .line 56
    iget-object v4, v4, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v4, Ljava/util/ListIterator;

    .line 59
    .line 60
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_0

    .line 65
    .line 66
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Lorg/koin/core/module/Module;

    .line 71
    .line 72
    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_2

    .line 77
    .line 78
    invoke-virtual {v2, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object v2, v0, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Lorg/jsoup/nodes/Printer;

    .line 85
    .line 86
    iget-object v3, v2, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v3, Lj$/util/concurrent/ConcurrentHashMap;

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_a

    .line 99
    .line 100
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Lorg/koin/core/module/Module;

    .line 105
    .line 106
    iget-object v6, v5, Lorg/koin/core/module/Module;->mappings:Ljava/util/LinkedHashMap;

    .line 107
    .line 108
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_9

    .line 121
    .line 122
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    check-cast v7, Ljava/util/Map$Entry;

    .line 127
    .line 128
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    check-cast v8, Ljava/lang/String;

    .line 133
    .line 134
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    check-cast v7, Lorg/koin/core/instance/InstanceFactory;

    .line 139
    .line 140
    iget-object v9, v7, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 141
    .line 142
    iget-object v9, v2, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v9, Lorg/koin/core/Koin;

    .line 145
    .line 146
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    iget-object v10, v7, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 150
    .line 151
    iget-object v11, v2, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v11, Lj$/util/concurrent/ConcurrentHashMap;

    .line 154
    .line 155
    invoke-virtual {v11, v8}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    check-cast v12, Lorg/koin/core/instance/InstanceFactory;

    .line 160
    .line 161
    const-string v14, "\' -> \'"

    .line 162
    .line 163
    if-eqz v12, :cond_8

    .line 164
    .line 165
    if-eqz p2, :cond_7

    .line 166
    .line 167
    iget-object v12, v9, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v12, Lorg/koin/core/logger/Logger;

    .line 170
    .line 171
    new-instance v15, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v13, "(+) override index \'"

    .line 174
    .line 175
    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const/16 v13, 0x27

    .line 188
    .line 189
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    sget-object v15, Lorg/koin/core/logger/Level;->WARNING:Lorg/koin/core/logger/Level;

    .line 200
    .line 201
    invoke-virtual {v12, v15, v13}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    check-cast v12, Ljava/lang/Iterable;

    .line 209
    .line 210
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    if-eqz v13, :cond_6

    .line 219
    .line 220
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v13

    .line 224
    move-object v15, v13

    .line 225
    check-cast v15, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 226
    .line 227
    iget-object v15, v15, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 228
    .line 229
    invoke-virtual {v15, v10}, Lorg/koin/core/definition/BeanDefinition;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v15

    .line 233
    if-eqz v15, :cond_5

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_6
    const/4 v13, 0x0

    .line 237
    :goto_3
    check-cast v13, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 238
    .line 239
    if-eqz v13, :cond_8

    .line 240
    .line 241
    invoke-virtual {v10}, Lorg/koin/core/definition/BeanDefinition;->hashCode()I

    .line 242
    .line 243
    .line 244
    move-result v12

    .line 245
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v12

    .line 249
    invoke-virtual {v3, v12}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_7
    new-instance v0, Lorg/koin/core/error/ClosedScopeException;

    .line 254
    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v2, "Already existing definition for "

    .line 258
    .line 259
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v2, " at "

    .line 266
    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :cond_8
    :goto_4
    iget-object v9, v9, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v9, Lorg/koin/core/logger/Logger;

    .line 284
    .line 285
    new-instance v12, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v13, "(+) index \'"

    .line 288
    .line 289
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const/16 v13, 0x27

    .line 302
    .line 303
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v10

    .line 310
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    sget-object v12, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 314
    .line 315
    invoke-virtual {v9, v12, v10}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v11, v8, v7}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    :cond_9
    iget-object v5, v5, Lorg/koin/core/module/Module;->eagerInstances:Ljava/util/LinkedHashSet;

    .line 324
    .line 325
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    if-eqz v6, :cond_4

    .line 334
    .line 335
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    check-cast v6, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 340
    .line 341
    iget-object v7, v6, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 342
    .line 343
    invoke-virtual {v7}, Lorg/koin/core/definition/BeanDefinition;->hashCode()I

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    invoke-virtual {v3, v7, v6}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    goto :goto_5

    .line 355
    :cond_a
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v0, Lorg/koin/core/registry/ScopeRegistry;

    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-eqz v2, :cond_b

    .line 371
    .line 372
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    check-cast v2, Lorg/koin/core/module/Module;

    .line 377
    .line 378
    iget-object v3, v0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/Set;

    .line 379
    .line 380
    iget-object v2, v2, Lorg/koin/core/module/Module;->scopes:Ljava/util/LinkedHashSet;

    .line 381
    .line 382
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 383
    .line 384
    .line 385
    goto :goto_6

    .line 386
    :cond_b
    return-void
.end method
