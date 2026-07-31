.class public final Lorg/koin/core/registry/ScopeRegistry;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;


# instance fields
.field public final _koin:Lorg/koin/core/Koin;

.field public final _scopeDefinitions:Ljava/util/Set;

.field public final _scopes:Lj$/util/concurrent/ConcurrentHashMap;

.field public final rootScope:Lorg/koin/core/scope/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/koin/core/qualifier/StringQualifier;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lorg/koin/core/Koin;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    .line 5
    .line 6
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/Set;

    .line 19
    .line 20
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Lj$/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    new-instance v2, Lorg/koin/core/scope/Scope;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    const/16 v7, 0x8

    .line 31
    .line 32
    sget-object v3, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 33
    .line 34
    const-string v4, "_root_"

    .line 35
    .line 36
    move-object v6, p1

    .line 37
    invoke-direct/range {v2 .. v7}, Lorg/koin/core/scope/Scope;-><init>(Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;Lorg/koin/core/qualifier/TypeQualifier;Lorg/koin/core/Koin;I)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 41
    .line 42
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final deleteScope$koin_core(Lorg/koin/core/scope/Scope;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lorg/jsoup/nodes/Printer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Lorg/koin/core/instance/InstanceFactory;

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, [Lorg/koin/core/instance/InstanceFactory;

    .line 26
    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    array-length v3, v0

    .line 33
    :goto_0
    if-ge v1, v3, :cond_1

    .line 34
    .line 35
    aget-object v4, v0, v1

    .line 36
    .line 37
    instance-of v5, v4, Lorg/koin/core/instance/ScopedInstanceFactory;

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lorg/koin/core/instance/ScopedInstanceFactory;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    new-instance v2, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    const/16 v3, 0x18

    .line 69
    .line 70
    invoke-direct {v2, v1, p1, v3}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    monitor-enter v1

    .line 74
    :try_start_0
    invoke-virtual {v2}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit v1

    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v1

    .line 81
    throw p0

    .line 82
    :cond_2
    iget-object p0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Lj$/util/concurrent/ConcurrentHashMap;

    .line 83
    .line 84
    iget-object p1, p1, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    return-void
.end method
