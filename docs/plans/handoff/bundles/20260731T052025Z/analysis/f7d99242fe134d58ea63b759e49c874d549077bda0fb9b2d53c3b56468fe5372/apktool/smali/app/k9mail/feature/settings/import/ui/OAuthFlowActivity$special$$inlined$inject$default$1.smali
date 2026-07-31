.class public final Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity$special$$inlined$inject$default$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_inject:Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity$special$$inlined$inject$default$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity$special$$inlined$inject$default$1;->$this_inject:Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;

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
    .locals 7

    .line 1
    iget v0, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity$special$$inlined$inject$default$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity$special$$inlined$inject$default$1;->$this_inject:Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const-class p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 21
    .line 22
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_0
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-class v0, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
