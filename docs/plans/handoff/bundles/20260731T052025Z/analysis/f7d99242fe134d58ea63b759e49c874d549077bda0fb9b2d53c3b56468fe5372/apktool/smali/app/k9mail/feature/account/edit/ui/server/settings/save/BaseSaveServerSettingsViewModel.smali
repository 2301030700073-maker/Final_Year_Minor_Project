.class public abstract Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountUuid:Ljava/lang/String;

.field public final isIncoming:Z

.field public final saveServerSettings:Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;->accountUuid:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;->isIncoming:Z

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;->saveServerSettings:Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Event$SaveServerSettings;->INSTANCE:Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Event$SaveServerSettings;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x5

    .line 18
    const/4 v2, 0x0

    .line 19
    const-class v4, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;

    .line 20
    .line 21
    const-string v5, "onSaveServerSettings"

    .line 22
    .line 23
    const-string v6, "onSaveServerSettings()V"

    .line 24
    .line 25
    move-object v3, p0

    .line 26
    invoke-direct/range {v1 .. v8}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1, v1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->handleOneTimeEvent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    move-object v3, p0

    .line 34
    sget-object p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Event$OnBackClicked;

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    iget-object p0, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 43
    .line 44
    iget-object p1, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 45
    .line 46
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;

    .line 51
    .line 52
    iget-boolean p1, p1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->isLoading:Z

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 57
    .line 58
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;

    .line 63
    .line 64
    iget-object p0, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->error:Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;

    .line 65
    .line 66
    if-nez p0, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 74
    .line 75
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;)V

    .line 76
    .line 77
    .line 78
    sget-object p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Effect$NavigateBack;

    .line 79
    .line 80
    invoke-virtual {v3, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    return-void

    .line 84
    :cond_3
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 85
    .line 86
    .line 87
    return-void
.end method
