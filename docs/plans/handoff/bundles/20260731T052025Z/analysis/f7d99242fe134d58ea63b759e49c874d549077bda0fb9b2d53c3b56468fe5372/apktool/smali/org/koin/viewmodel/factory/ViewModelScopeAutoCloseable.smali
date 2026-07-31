.class public final Lorg/koin/viewmodel/factory/ViewModelScopeAutoCloseable;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final koin:Lorg/koin/core/Koin;

.field public final scopeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/koin/core/Koin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/koin/viewmodel/factory/ViewModelScopeAutoCloseable;->scopeId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/koin/viewmodel/factory/ViewModelScopeAutoCloseable;->koin:Lorg/koin/core/Koin;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/koin/viewmodel/factory/ViewModelScopeAutoCloseable;->koin:Lorg/koin/core/Koin;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Lj$/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/koin/viewmodel/factory/ViewModelScopeAutoCloseable;->scopeId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/koin/core/scope/Scope;

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    iget-object v0, v0, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    .line 21
    .line 22
    iget-object v0, v0, Lorg/koin/core/Koin;->instanceRegistry:Lorg/slf4j/event/EventRecodingLogger;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x0

    .line 36
    new-array v3, v2, [Lorg/koin/core/instance/InstanceFactory;

    .line 37
    .line 38
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, [Lorg/koin/core/instance/InstanceFactory;

    .line 43
    .line 44
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    array-length v4, v0

    .line 50
    :goto_0
    if-ge v2, v4, :cond_0

    .line 51
    .line 52
    aget-object v5, v0, v2

    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    iget-object p0, p0, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    invoke-static {v0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    throw p0

    .line 78
    :cond_2
    return-void
.end method
