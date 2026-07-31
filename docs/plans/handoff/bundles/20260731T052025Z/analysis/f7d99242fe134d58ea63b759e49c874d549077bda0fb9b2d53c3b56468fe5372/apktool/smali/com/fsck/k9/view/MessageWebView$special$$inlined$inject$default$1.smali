.class public final Lcom/fsck/k9/view/MessageWebView$special$$inlined$inject$default$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_inject:Lcom/fsck/k9/view/MessageWebView;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/view/MessageWebView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/view/MessageWebView$special$$inlined$inject$default$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/view/MessageWebView$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/view/MessageWebView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/view/MessageWebView$special$$inlined$inject$default$1;->$r8$classId:I

    .line 2
    .line 3
    const-class v1, Lcom/fsck/k9/view/WebViewClientFactory;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/fsck/k9/view/MessageWebView$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/view/MessageWebView;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 18
    .line 19
    invoke-static {v1, p0, v2, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_0
    invoke-interface {p0}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p0, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 29
    .line 30
    iget-object p0, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 31
    .line 32
    invoke-static {v1, p0, v2, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_1
    invoke-interface {p0}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iget-object p0, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 42
    .line 43
    iget-object p0, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 44
    .line 45
    invoke-static {v1, p0, v2, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
