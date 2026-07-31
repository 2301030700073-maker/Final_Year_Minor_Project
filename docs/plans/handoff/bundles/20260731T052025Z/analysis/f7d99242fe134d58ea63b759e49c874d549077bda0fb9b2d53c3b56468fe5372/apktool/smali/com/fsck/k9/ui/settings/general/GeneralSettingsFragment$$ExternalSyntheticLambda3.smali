.class public final synthetic Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda3;->f$0:Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget p1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->$r8$clinit:I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda3;->f$0:Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->jobManager$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/fsck/k9/job/K9JobManager;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/fsck/k9/job/K9JobManager;->syncDebugFileLogManager:Lcom/fsck/k9/job/FileLogLimitWorkManager;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/fsck/k9/job/FileLogLimitWorkManager;->workManager:Landroidx/work/impl/WorkManagerImpl;

    .line 27
    .line 28
    iget-object p2, p1, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 29
    .line 30
    iget-object p2, p2, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    .line 31
    .line 32
    const-string v0, "CancelWorkByName_"

    .line 33
    .line 34
    const-string v1, "sync_debug_timer"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v2, p1, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 41
    .line 42
    iget-object v2, v2, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Landroidx/room/TransactionExecutor;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance v3, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    const/4 v4, 0x6

    .line 52
    invoke-direct {v3, v4, v1, p1}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p2, v0, v2, v3}, Landroidx/work/OperationKt;->launchOperation(Landroidx/work/SystemClock;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/SystemClock;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->exportSyncDebugLogsResultContract:Landroidx/fragment/app/Fragment$10;

    .line 59
    .line 60
    invoke-static {}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->formatFileExportUriString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->choseFileSyncDebugLogsResultContract:Landroidx/fragment/app/Fragment$10;

    .line 69
    .line 70
    invoke-static {}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->formatFileExportUriString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 1
    sget p1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda3;->f$0:Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    sget p1, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsActivity;->$r8$clinit:I

    .line 12
    .line 13
    new-instance p1, Landroid/content/Intent;

    .line 14
    .line 15
    const-class v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsActivity;

    .line 16
    .line 17
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x1

    .line 24
    return p0
.end method
