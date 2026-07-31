.class public final Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $contentUri:Landroid/net/Uri;

.field public final synthetic $includeGeneralSettings:Z

.field public final synthetic $selectedAccounts:Ljava/util/Set;

.field public final synthetic this$0:Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;ZLjava/util/Set;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;->this$0:Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;->$includeGeneralSettings:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;->$selectedAccounts:Ljava/util/Set;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;->$contentUri:Landroid/net/Uri;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;->$selectedAccounts:Ljava/util/Set;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;->$contentUri:Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;->this$0:Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;->$includeGeneralSettings:Z

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;-><init>(Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;ZLjava/util/Set;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;->this$0:Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->settingsExporter:Lcom/fsck/k9/preferences/SettingsExporter;

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;->$includeGeneralSettings:Z

    .line 9
    .line 10
    iget-object v1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;->$selectedAccounts:Ljava/util/Set;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;->$contentUri:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v2, p1, Lcom/fsck/k9/preferences/SettingsExporter;->contentResolver:Landroid/content/ContentResolver;

    .line 21
    .line 22
    const-string/jumbo v3, "wt"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p0, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    :try_start_1
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->exportPreferences(Ljava/io/OutputStream;ZLjava/util/Set;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    :catchall_1
    move-exception v0

    .line 45
    :try_start_4
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    new-instance p1, Lcom/fsck/k9/preferences/SettingsImportExportException;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method
