.class public final Lcom/fsck/k9/ui/messageview/MessageTopView$special$$inlined$inject$default$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_inject:Lcom/fsck/k9/ui/messageview/MessageTopView;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messageview/MessageTopView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$special$$inlined$inject$default$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/ui/messageview/MessageTopView;

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
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$special$$inlined$inject$default$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object p0, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 16
    .line 17
    const-class v0, Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    .line 18
    .line 19
    invoke-static {v0, p0, v1, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

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
    const-class v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 33
    .line 34
    invoke-static {v0, p0, v1, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_1
    invoke-interface {p0}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iget-object p0, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 44
    .line 45
    iget-object p0, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 46
    .line 47
    const-class v0, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 48
    .line 49
    invoke-static {v0, p0, v1, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
