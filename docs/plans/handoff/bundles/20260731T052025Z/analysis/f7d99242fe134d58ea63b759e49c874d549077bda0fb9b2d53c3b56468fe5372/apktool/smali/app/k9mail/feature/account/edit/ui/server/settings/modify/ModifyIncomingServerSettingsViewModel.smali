.class public final Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyIncomingServerSettingsViewModel;
.super Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountStateLoader:Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;

.field public final accountUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsValidator;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V
    .locals 3

    .line 1
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xfff

    .line 5
    .line 6
    invoke-direct {v0, v1, v1, v2}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;-><init>(Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;->Edit:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

    .line 13
    .line 14
    invoke-direct {p0, v0, v1, p3, p4}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;-><init>(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsValidator;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyIncomingServerSettingsViewModel;->accountUuid:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p2, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyIncomingServerSettingsViewModel;->accountStateLoader:Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final loadAccountState()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v1, p0, v3, v2}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x3

    .line 13
    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 14
    .line 15
    .line 16
    return-void
.end method
