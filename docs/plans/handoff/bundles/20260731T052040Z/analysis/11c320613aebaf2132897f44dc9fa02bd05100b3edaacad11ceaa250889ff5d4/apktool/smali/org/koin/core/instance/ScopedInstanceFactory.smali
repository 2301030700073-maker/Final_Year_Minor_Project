.class public final Lorg/koin/core/instance/ScopedInstanceFactory;
.super Lorg/koin/core/instance/InstanceFactory;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final holdInstance:Z

.field public final values:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lorg/koin/core/definition/BeanDefinition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/koin/core/instance/ScopedInstanceFactory;->holdInstance:Z

    .line 6
    .line 7
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lorg/koin/core/instance/ScopedInstanceFactory;->values:Lj$/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final dropAll()V
    .locals 2

    .line 1
    new-instance v0, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
.end method

.method public final get(Lcoil3/ComponentRegistry$Builder;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p1, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/koin/core/scope/Scope;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 8
    .line 9
    iget-object v1, v1, Lorg/koin/core/definition/BeanDefinition;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lorg/koin/core/qualifier/TypeQualifier;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 22
    .line 23
    iget-object v1, v1, Lorg/koin/core/definition/BeanDefinition;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "Wrong Scope qualifier: trying to open instance for "

    .line 33
    .line 34
    iget-object p1, p1, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 37
    .line 38
    iget-object p1, p1, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, " in "

    .line 41
    .line 42
    iget-object p0, p0, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 43
    .line 44
    invoke-static {v0, p1, v1, p0}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/koin/core/instance/ScopedInstanceFactory;->values:Lj$/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    iget-object v1, p1, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 54
    .line 55
    iget-object v1, v1, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_2
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lorg/koin/core/instance/ScopedInstanceFactory;->values:Lj$/util/concurrent/ConcurrentHashMap;

    .line 66
    .line 67
    iget-boolean v1, p0, Lorg/koin/core/instance/ScopedInstanceFactory;->holdInstance:Z

    .line 68
    .line 69
    iget-object v2, p1, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Lorg/koin/core/scope/Scope;

    .line 72
    .line 73
    iget-object v3, v2, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v2, v2, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    if-eqz v1, :cond_5

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lorg/koin/core/instance/InstanceFactory;->create(Lcoil3/ComponentRegistry$Builder;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    iget-object p1, p0, Lorg/koin/core/instance/ScopedInstanceFactory;->values:Lj$/util/concurrent/ConcurrentHashMap;

    .line 93
    .line 94
    invoke-virtual {p1, v2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    :cond_4
    :goto_1
    monitor-exit p0

    .line 98
    return-object v0

    .line 99
    :cond_5
    :try_start_1
    new-instance p1, Lorg/koin/core/error/ClosedScopeException;

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v1, "No value for scope \'"

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, "\' in "

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    monitor-exit p0

    .line 131
    throw p1
.end method
