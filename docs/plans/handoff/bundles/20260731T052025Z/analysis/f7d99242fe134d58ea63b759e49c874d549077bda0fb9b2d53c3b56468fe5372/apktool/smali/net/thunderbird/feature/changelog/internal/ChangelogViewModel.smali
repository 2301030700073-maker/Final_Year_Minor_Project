.class public final Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final changeLogManager:Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final mode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/ChangelogContract$State;

    .line 5
    .line 6
    sget-object v1, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->EMPTY:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/feature/changelog/internal/ChangelogContract$State;-><init>(Lkotlinx/collections/immutable/ImmutableList;Z)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 16
    .line 17
    iput-object p2, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;->changeLogManager:Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

    .line 18
    .line 19
    iput-object p3, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;->mode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 20
    .line 21
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;

    .line 26
    .line 27
    const/4 p3, 0x0

    .line 28
    invoke-direct {p2, p0, p3, v2}, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;-><init>(Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x3

    .line 32
    invoke-static {p1, p3, p3, p2, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lnet/thunderbird/feature/changelog/internal/ChangelogContract$Event$OnShowRecentChangesCheck;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p1, Lnet/thunderbird/feature/changelog/internal/ChangelogContract$Event$OnShowRecentChangesCheck;->isChecked:Z

    .line 7
    .line 8
    xor-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iget-object p0, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 11
    .line 12
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, v0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 19
    .line 20
    iget-object v2, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->miscSettings:Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;

    .line 21
    .line 22
    iget-boolean v3, v2, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;->shouldShowSetupArchiveFolderDialog:Z

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v5, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;

    .line 28
    .line 29
    invoke-direct {v5, p1, v3}, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;-><init>(ZZ)V

    .line 30
    .line 31
    .line 32
    const/4 v6, 0x7

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static/range {v1 .. v6}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v6, 0x0

    .line 41
    const/16 v7, 0x77

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-static/range {v0 .. v7}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final onCleared()V
    .locals 5

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;->changeLogManager:Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->appCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 6
    .line 7
    new-instance v2, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v2, p0, v4, v3}, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;-><init>(Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x2

    .line 15
    invoke-static {v0, v1, v4, v2, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 16
    .line 17
    .line 18
    return-void
.end method
