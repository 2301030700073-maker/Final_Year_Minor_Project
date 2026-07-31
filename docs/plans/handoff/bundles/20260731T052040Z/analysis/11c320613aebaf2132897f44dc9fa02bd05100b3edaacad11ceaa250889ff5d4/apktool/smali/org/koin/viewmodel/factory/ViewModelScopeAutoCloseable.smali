.class public final Lorg/koin/viewmodel/factory/ViewModelScopeAutoCloseable;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

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
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/koin/viewmodel/factory/ViewModelScopeAutoCloseable;->koin:Lorg/koin/core/Koin;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lorg/koin/core/registry/ScopeRegistry;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Lj$/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    iget-object p0, p0, Lorg/koin/viewmodel/factory/ViewModelScopeAutoCloseable;->scopeId:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lorg/koin/core/scope/Scope;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lorg/koin/core/registry/ScopeRegistry;->deleteScope$koin_core(Lorg/koin/core/scope/Scope;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
