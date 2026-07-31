.class public final Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public accountsMap:Ljava/util/Map;

.field public final actionLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

.field public contentUri:Landroid/net/Uri;

.field public savedSelection:Lcom/fsck/k9/ui/settings/export/SavedListItemSelection;

.field public final settingsExporter:Lcom/fsck/k9/preferences/SettingsExporter;

.field public final uiModel:Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

.field public final uiModelLiveData:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lcom/fsck/k9/preferences/SettingsExporter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->settingsExporter:Lcom/fsck/k9/preferences/SettingsExporter;

    .line 7
    .line 8
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    new-instance p1, Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p2}, Lcom/fsck/k9/helper/SingleLiveEvent;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->actionLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 22
    .line 23
    new-instance p1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 29
    .line 30
    iput-object p2, p1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->settingsList:Ljava/util/List;

    .line 31
    .line 32
    const/4 p2, 0x1

    .line 33
    iput-boolean p2, p1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isSettingsListEnabled:Z

    .line 34
    .line 35
    sget-object p2, Lcom/fsck/k9/ui/settings/export/ButtonState;->DISABLED:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 36
    .line 37
    iput-object p2, p1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->exportButton:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 38
    .line 39
    sget-object p2, Lcom/fsck/k9/ui/settings/export/StatusText;->HIDDEN:Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 40
    .line 41
    iput-object p2, p1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->statusText:Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModel:Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

    .line 44
    .line 45
    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->accountsMap:Ljava/util/Map;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final getIncludeGeneralSettings$1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->savedSelection:Lcom/fsck/k9/ui/settings/export/SavedListItemSelection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, v0, Lcom/fsck/k9/ui/settings/export/SavedListItemSelection;->includeGeneralSettings:Z

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModel:Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->settingsList:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/fsck/k9/ui/settings/export/SettingsListItem;

    .line 27
    .line 28
    instance-of v1, v0, Lcom/fsck/k9/ui/settings/export/SettingsListItem$GeneralSettings;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-boolean p0, v0, Lcom/fsck/k9/ui/settings/export/SettingsListItem;->selected:Z

    .line 33
    .line 34
    return p0

    .line 35
    :cond_2
    const-string p0, "Collection contains no element matching the predicate."

    .line 36
    .line 37
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public final getSelectedAccounts$1()Ljava/util/Set;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->savedSelection:Lcom/fsck/k9/ui/settings/export/SavedListItemSelection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, v0, Lcom/fsck/k9/ui/settings/export/SavedListItemSelection;->selectedAccountUuids:Ljava/util/Set;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModel:Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->settingsList:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lkotlin/sequences/FilteringSequence;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    sget-object v3, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$special$$inlined$filterIsInstance$1;->INSTANCE:Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$special$$inlined$filterIsInstance$1;

    .line 20
    .line 21
    invoke-direct {v1, v0, v2, v3}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/16 v3, 0xa

    .line 27
    .line 28
    invoke-direct {v0, v3}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lkotlin/sequences/FilteringSequence;

    .line 32
    .line 33
    invoke-direct {v3, v1, v2, v0}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const/16 v1, 0x15

    .line 39
    .line 40
    invoke-direct {v0, v1, p0}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Lkotlin/sequences/TakeWhileSequence;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-direct {p0, v3, v0, v1}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method
