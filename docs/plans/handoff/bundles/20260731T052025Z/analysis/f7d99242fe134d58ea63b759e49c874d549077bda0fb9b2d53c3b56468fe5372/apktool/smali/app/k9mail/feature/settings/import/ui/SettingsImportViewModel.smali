.class public final Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountActivator:Lcom/fsck/k9/account/AccountActivator;

.field public final accountStateMap:Ljava/util/LinkedHashMap;

.field public accountsMap:Ljava/util/LinkedHashMap;

.field public action:Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;

.field public final actionLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final contentResolver:Landroid/content/ContentResolver;

.field public contentUri:Landroid/net/Uri;

.field public currentlyAuthorizingAccountUuid:Ljava/lang/String;

.field public isInitialized:Z

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final migrationManager:Lapp/k9mail/feature/migration/launcher/k9/K9MigrationManager;

.field public final settingsImporter:Lcom/fsck/k9/preferences/SettingsImporter;

.field public final uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

.field public final uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

.field public wasActionHandled:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/fsck/k9/preferences/SettingsImporter;Lcom/fsck/k9/account/AccountActivator;Lapp/k9mail/feature/migration/launcher/k9/K9MigrationManager;Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;Lnet/thunderbird/core/logging/Logger;)V
    .locals 2

    .line 1
    sget-object p5, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object p5, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 6
    .line 7
    iget-object v0, v0, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    .line 8
    .line 9
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Landroidx/lifecycle/ViewModel;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->contentResolver:Landroid/content/ContentResolver;

    .line 28
    .line 29
    iput-object p2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->settingsImporter:Lcom/fsck/k9/preferences/SettingsImporter;

    .line 30
    .line 31
    iput-object p3, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountActivator:Lcom/fsck/k9/account/AccountActivator;

    .line 32
    .line 33
    iput-object p4, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->migrationManager:Lapp/k9mail/feature/migration/launcher/k9/K9MigrationManager;

    .line 34
    .line 35
    iput-object p5, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 36
    .line 37
    iput-object p6, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 38
    .line 39
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    new-instance p1, Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    invoke-direct {p1, p2}, Lcom/fsck/k9/helper/SingleLiveEvent;-><init>(I)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->actionLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 53
    .line 54
    sget-object p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;->Overview:Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;

    .line 55
    .line 56
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->action:Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;

    .line 57
    .line 58
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 64
    .line 65
    iput-object p3, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 66
    .line 67
    const/4 p3, 0x1

    .line 68
    iput-boolean p3, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListEnabled:Z

    .line 69
    .line 70
    sget-object p4, Lapp/k9mail/feature/settings/import/ui/ButtonState;->DISABLED:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 71
    .line 72
    iput-object p4, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 73
    .line 74
    sget-object p4, Lapp/k9mail/feature/settings/import/ui/ButtonState;->GONE:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 75
    .line 76
    iput-object p4, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->closeButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 77
    .line 78
    sget-object p4, Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;->OK:Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;

    .line 79
    .line 80
    iput-object p4, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->closeButtonLabel:Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;

    .line 81
    .line 82
    iput-boolean p3, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonVisible:Z

    .line 83
    .line 84
    iput-boolean p3, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonEnabled:Z

    .line 85
    .line 86
    iput-boolean p2, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonVisible:Z

    .line 87
    .line 88
    iput-boolean p3, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonEnabled:Z

    .line 89
    .line 90
    iput-boolean p2, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonVisible:Z

    .line 91
    .line 92
    iput-boolean p3, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonPermanentlyDisabled:Z

    .line 93
    .line 94
    sget-object p2, Lapp/k9mail/feature/settings/import/ui/StatusText;->HIDDEN:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 95
    .line 96
    iput-object p2, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->statusText:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 97
    .line 98
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 99
    .line 100
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountsMap:Ljava/util/LinkedHashMap;

    .line 106
    .line 107
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 108
    .line 109
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountStateMap:Ljava/util/LinkedHashMap;

    .line 113
    .line 114
    return-void
.end method

.method public static final access$importSettings(Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;Landroid/net/Uri;ZLjava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p4, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$importSettings$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$importSettings$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$importSettings$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$importSettings$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$importSettings$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$importSettings$1;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$importSettings$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$importSettings$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$importSettings$1;->L$3:Ljava/io/InputStream;

    .line 36
    .line 37
    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p4, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->contentResolver:Landroid/content/ContentResolver;

    .line 53
    .line 54
    invoke-virtual {p4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 55
    .line 56
    .line 57
    move-result-object p4

    .line 58
    if-eqz p4, :cond_4

    .line 59
    .line 60
    :try_start_1
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->settingsImporter:Lcom/fsck/k9/preferences/SettingsImporter;

    .line 61
    .line 62
    iput-object p4, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$importSettings$1;->L$3:Ljava/io/InputStream;

    .line 63
    .line 64
    iput v2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$importSettings$1;->label:I

    .line 65
    .line 66
    invoke-virtual {p0, p4, p2, p3, v0}, Lcom/fsck/k9/preferences/SettingsImporter;->importSettings(Ljava/io/InputStream;ZLjava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 71
    .line 72
    if-ne p0, p1, :cond_3

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_3
    move-object v4, p4

    .line 76
    move-object p4, p0

    .line 77
    move-object p0, v4

    .line 78
    :goto_1
    :try_start_2
    check-cast p4, Lcom/fsck/k9/preferences/ImportResults;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    invoke-static {p0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    return-object p4

    .line 84
    :catchall_1
    move-exception p1

    .line 85
    move-object p0, p4

    .line 86
    :goto_2
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 87
    :catchall_2
    move-exception p2

    .line 88
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw p2

    .line 92
    :cond_4
    const-string p0, "Failed to open settings file for reading: "

    .line 93
    .line 94
    invoke-static {p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object v3
.end method


# virtual methods
.method public final getContainsGeneralSettings()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 2
    .line 3
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 29
    .line 30
    instance-of v0, v0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$GeneralSettings;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final getIncludeGeneralSettings()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 2
    .line 3
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 20
    .line 21
    instance-of v1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$GeneralSettings;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-boolean p0, v0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->selected:Z

    .line 26
    .line 27
    return p0

    .line 28
    :cond_1
    const-string p0, "Collection contains no element matching the predicate."

    .line 29
    .line 30
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final getListIndexOfAccount(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 2
    .line 3
    iget-object v0, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 21
    .line 22
    instance-of v3, v2, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-object v3, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountsMap:Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    check-cast v2, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;

    .line 29
    .line 30
    iget v2, v2, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;->accountIndex:I

    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    return v1

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p0, -0x1

    .line 51
    return p0
.end method

.method public final onSettingsListItemClicked(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 2
    .line 3
    iget-object v1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 10
    .line 11
    iget-object v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    if-eq v2, p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x4

    .line 23
    if-eq v2, p1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;

    .line 27
    .line 28
    iget p1, v1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;->accountIndex:I

    .line 29
    .line 30
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountsMap:Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    check-cast p1, Ljava/lang/String;

    .line 44
    .line 45
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->currentlyAuthorizingAccountUuid:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/Action$StartAuthorization;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Lapp/k9mail/feature/settings/import/ui/Action$StartAuthorization;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->sendActionEvent(Lapp/k9mail/feature/settings/import/ui/Action;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;

    .line 57
    .line 58
    iget p1, v1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;->accountIndex:I

    .line 59
    .line 60
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountsMap:Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-object v3, v0

    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    .line 76
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountStateMap:Ljava/util/LinkedHashMap;

    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/AccountState;

    .line 90
    .line 91
    new-instance v2, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;

    .line 92
    .line 93
    iget-object v4, v1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;->displayName:Ljava/lang/String;

    .line 94
    .line 95
    iget-boolean v5, p1, Lapp/k9mail/feature/settings/import/ui/AccountState;->incomingServerPasswordNeeded:Z

    .line 96
    .line 97
    iget-object v6, p1, Lapp/k9mail/feature/settings/import/ui/AccountState;->incomingServerName:Ljava/lang/String;

    .line 98
    .line 99
    iget-boolean v7, p1, Lapp/k9mail/feature/settings/import/ui/AccountState;->outgoingServerPasswordNeeded:Z

    .line 100
    .line 101
    iget-object v8, p1, Lapp/k9mail/feature/settings/import/ui/AccountState;->outgoingServerName:Ljava/lang/String;

    .line 102
    .line 103
    invoke-direct/range {v2 .. v8}, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v2}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->sendActionEvent(Lapp/k9mail/feature/settings/import/ui/Action;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    iget-object v1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 117
    .line 118
    iget-boolean v1, p1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->selected:Z

    .line 119
    .line 120
    xor-int/lit8 v1, v1, 0x1

    .line 121
    .line 122
    iput-boolean v1, p1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->selected:Z

    .line 123
    .line 124
    sget-object p1, Lapp/k9mail/feature/settings/import/ui/StatusText;->HIDDEN:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 125
    .line 126
    iput-object p1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->statusText:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 127
    .line 128
    invoke-virtual {v0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->updateImportButtonFromSelection()V

    .line 129
    .line 130
    .line 131
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public final sendActionEvent(Lapp/k9mail/feature/settings/import/ui/Action;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->actionLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fsck/k9/helper/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
