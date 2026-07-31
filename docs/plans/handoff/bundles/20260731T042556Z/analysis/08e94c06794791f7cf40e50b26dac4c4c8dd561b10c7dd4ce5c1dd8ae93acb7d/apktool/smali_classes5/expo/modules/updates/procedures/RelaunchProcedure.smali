.class public final Lexpo/modules/updates/procedures/RelaunchProcedure;
.super Lexpo/modules/updates/procedures/StateMachineProcedure;
.source "RelaunchProcedure.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/procedures/RelaunchProcedure$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRelaunchProcedure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RelaunchProcedure.kt\nexpo/modules/updates/procedures/RelaunchProcedure\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,162:1\n314#2,11:163\n*S KotlinDebug\n*F\n+ 1 RelaunchProcedure.kt\nexpo/modules/updates/procedures/RelaunchProcedure\n*L\n114#1:163,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 52\u00020\u0001:\u00015B\u009a\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u0012!\u0010\u0016\u001a\u001d\u0012\u0013\u0012\u00110\u0015\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u001b0\u0017\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0006\u0010\u001e\u001a\u00020\u001f\u0012\u0008\u0008\u0002\u0010 \u001a\u00020!\u00a2\u0006\u0004\u0008\"\u0010#J\u0016\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020*H\u0096@\u00a2\u0006\u0002\u0010+J\u0008\u0010,\u001a\u00020\u001bH\u0002J\u0016\u0010-\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020/H\u0082@\u00a2\u0006\u0002\u00100J\u0018\u00101\u001a\u00020\u001b2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020%H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R)\u0010\u0016\u001a\u001d\u0012\u0013\u0012\u00110\u0015\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u001b0\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020%X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'\u00a8\u00066"
    }
    d2 = {
        "Lexpo/modules/updates/procedures/RelaunchProcedure;",
        "Lexpo/modules/updates/procedures/StateMachineProcedure;",
        "context",
        "Landroid/content/Context;",
        "weakActivity",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "updatesConfiguration",
        "Lexpo/modules/updates/UpdatesConfiguration;",
        "logger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "databaseHolder",
        "Lexpo/modules/updates/db/DatabaseHolder;",
        "updatesDirectory",
        "Ljava/io/File;",
        "fileDownloader",
        "Lexpo/modules/updates/loader/FileDownloader;",
        "selectionPolicy",
        "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;",
        "getCurrentLauncher",
        "Lkotlin/Function0;",
        "Lexpo/modules/updates/launcher/Launcher;",
        "setCurrentLauncher",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "launcher",
        "",
        "shouldRunReaper",
        "",
        "callback",
        "Lexpo/modules/updates/launcher/Launcher$LauncherCallback;",
        "procedureScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/ref/WeakReference;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLexpo/modules/updates/launcher/Launcher$LauncherCallback;Lkotlinx/coroutines/CoroutineScope;)V",
        "loggerTimerLabel",
        "",
        "getLoggerTimerLabel",
        "()Ljava/lang/String;",
        "run",
        "procedureContext",
        "Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;",
        "(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "runReaper",
        "launchWith",
        "newLauncher",
        "Lexpo/modules/updates/launcher/DatabaseLauncher;",
        "(Lexpo/modules/updates/launcher/DatabaseLauncher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "replaceLaunchAssetFileIfNeeded",
        "reactApplication",
        "Lcom/facebook/react/ReactApplication;",
        "launchAssetFile",
        "Companion",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/updates/procedures/RelaunchProcedure$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

.field private final context:Landroid/content/Context;

.field private final databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

.field private final fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

.field private final getCurrentLauncher:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lexpo/modules/updates/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lexpo/modules/updates/logging/UpdatesLogger;

.field private final loggerTimerLabel:Ljava/lang/String;

.field private final procedureScope:Lkotlinx/coroutines/CoroutineScope;

.field private final selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

.field private final setCurrentLauncher:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lexpo/modules/updates/launcher/Launcher;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldRunReaper:Z

.field private final updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

.field private final updatesDirectory:Ljava/io/File;

.field private final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/procedures/RelaunchProcedure$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/procedures/RelaunchProcedure$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/procedures/RelaunchProcedure;->Companion:Lexpo/modules/updates/procedures/RelaunchProcedure$Companion;

    .line 159
    const-string v0, "RelaunchProcedure"

    sput-object v0, Lexpo/modules/updates/procedures/RelaunchProcedure;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLexpo/modules/updates/launcher/Launcher$LauncherCallback;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lexpo/modules/updates/UpdatesConfiguration;",
            "Lexpo/modules/updates/logging/UpdatesLogger;",
            "Lexpo/modules/updates/db/DatabaseHolder;",
            "Ljava/io/File;",
            "Lexpo/modules/updates/loader/FileDownloader;",
            "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lexpo/modules/updates/launcher/Launcher;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/updates/launcher/Launcher;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lexpo/modules/updates/launcher/Launcher$LauncherCallback;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseHolder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesDirectory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileDownloader"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionPolicy"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getCurrentLauncher"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setCurrentLauncher"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "procedureScope"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lexpo/modules/updates/procedures/StateMachineProcedure;-><init>()V

    .line 30
    iput-object p1, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 32
    iput-object p3, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 33
    iput-object p4, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 34
    iput-object p5, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    .line 35
    iput-object p6, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->updatesDirectory:Ljava/io/File;

    .line 36
    iput-object p7, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

    .line 37
    iput-object p8, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    .line 38
    iput-object p9, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->getCurrentLauncher:Lkotlin/jvm/functions/Function0;

    .line 39
    iput-object p10, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->setCurrentLauncher:Lkotlin/jvm/functions/Function1;

    .line 40
    iput-boolean p11, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->shouldRunReaper:Z

    .line 41
    iput-object p12, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    .line 42
    iput-object p13, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->procedureScope:Lkotlinx/coroutines/CoroutineScope;

    .line 44
    const-string p1, "timer-relaunch"

    iput-object p1, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->loggerTimerLabel:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLexpo/modules/updates/launcher/Launcher$LauncherCallback;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p14

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    move-object v14, v0

    goto :goto_0

    :cond_0
    move-object/from16 v14, p13

    :goto_0
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    .line 29
    invoke-direct/range {v1 .. v14}, Lexpo/modules/updates/procedures/RelaunchProcedure;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLexpo/modules/updates/launcher/Launcher$LauncherCallback;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final synthetic access$getDatabaseHolder$p(Lexpo/modules/updates/procedures/RelaunchProcedure;)Lexpo/modules/updates/db/DatabaseHolder;
    .locals 0

    .line 29
    iget-object p0, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    return-object p0
.end method

.method public static final synthetic access$getGetCurrentLauncher$p(Lexpo/modules/updates/procedures/RelaunchProcedure;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 29
    iget-object p0, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->getCurrentLauncher:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lexpo/modules/updates/procedures/RelaunchProcedure;)Lexpo/modules/updates/logging/UpdatesLogger;
    .locals 0

    .line 29
    iget-object p0, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    return-object p0
.end method

.method public static final synthetic access$getSelectionPolicy$p(Lexpo/modules/updates/procedures/RelaunchProcedure;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;
    .locals 0

    .line 29
    iget-object p0, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    return-object p0
.end method

.method public static final synthetic access$getUpdatesConfiguration$p(Lexpo/modules/updates/procedures/RelaunchProcedure;)Lexpo/modules/updates/UpdatesConfiguration;
    .locals 0

    .line 29
    iget-object p0, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    return-object p0
.end method

.method public static final synthetic access$getUpdatesDirectory$p(Lexpo/modules/updates/procedures/RelaunchProcedure;)Ljava/io/File;
    .locals 0

    .line 29
    iget-object p0, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->updatesDirectory:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getWeakActivity$p(Lexpo/modules/updates/procedures/RelaunchProcedure;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 29
    iget-object p0, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->weakActivity:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$launchWith(Lexpo/modules/updates/procedures/RelaunchProcedure;Lexpo/modules/updates/launcher/DatabaseLauncher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lexpo/modules/updates/procedures/RelaunchProcedure;->launchWith(Lexpo/modules/updates/launcher/DatabaseLauncher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final launchWith(Lexpo/modules/updates/launcher/DatabaseLauncher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/launcher/DatabaseLauncher;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 164
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 170
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 171
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 116
    invoke-static {p0}, Lexpo/modules/updates/procedures/RelaunchProcedure;->access$getDatabaseHolder$p(Lexpo/modules/updates/procedures/RelaunchProcedure;)Lexpo/modules/updates/db/DatabaseHolder;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/updates/db/DatabaseHolder;->getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object v2

    .line 117
    new-instance v3, Lexpo/modules/updates/procedures/RelaunchProcedure$launchWith$2$1;

    invoke-direct {v3, v1}, Lexpo/modules/updates/procedures/RelaunchProcedure$launchWith$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v3, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    .line 115
    invoke-virtual {p1, v2, v3}, Lexpo/modules/updates/launcher/DatabaseLauncher;->launch(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/launcher/Launcher$LauncherCallback;)V

    .line 172
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 163
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    .line 173
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final replaceLaunchAssetFileIfNeeded(Lcom/facebook/react/ReactApplication;Ljava/lang/String;)V
    .locals 2

    .line 148
    sget-object v0, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->INSTANCE:Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

    invoke-virtual {v0}, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->getEnableBridgelessArchitecture()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mBundleLoader"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 155
    invoke-static {p2}, Lcom/facebook/react/bridge/JSBundleLoader;->createFileLoader(Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final runReaper()V
    .locals 6

    .line 98
    iget-object v0, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->procedureScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;-><init>(Lexpo/modules/updates/procedures/RelaunchProcedure;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public getLoggerTimerLabel()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lexpo/modules/updates/procedures/RelaunchProcedure;->loggerTimerLabel:Ljava/lang/String;

    return-object v0
.end method

.method public run(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    instance-of v3, v0, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;

    iget v4, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v0, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->label:I

    sub-int/2addr v0, v5

    iput v0, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;

    invoke-direct {v3, v1, v0}, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;-><init>(Lexpo/modules/updates/procedures/RelaunchProcedure;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 46
    iget v5, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->label:I

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v2, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lexpo/modules/updates/launcher/DatabaseLauncher;

    iget-object v4, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/react/ReactApplication;

    iget-object v7, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    iget-object v3, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lexpo/modules/updates/procedures/RelaunchProcedure;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v2

    move-object v2, v7

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    iget-object v0, v1, Lexpo/modules/updates/procedures/RelaunchProcedure;->context:Landroid/content/Context;

    instance-of v5, v0, Lcom/facebook/react/ReactApplication;

    if-eqz v5, :cond_3

    check-cast v0, Lcom/facebook/react/ReactApplication;

    move-object v5, v0

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_4

    move-object v0, v1

    check-cast v0, Lexpo/modules/updates/procedures/RelaunchProcedure;

    .line 48
    iget-object v0, v1, Lexpo/modules/updates/procedures/RelaunchProcedure;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Could not reload application. Ensure you have passed the correct instance of ReactApplication into UpdatesController.initialize()."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;->onFailure(Ljava/lang/Exception;)V

    .line 49
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 52
    :cond_4
    new-instance v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Restart;

    invoke-direct {v0}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Restart;-><init>()V

    check-cast v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {v2, v0}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 54
    iget-object v0, v1, Lexpo/modules/updates/procedures/RelaunchProcedure;->getCurrentLauncher:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/updates/launcher/Launcher;

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher;->getLaunchAssetFile()Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v15, Lexpo/modules/updates/launcher/DatabaseLauncher;

    .line 57
    iget-object v9, v1, Lexpo/modules/updates/procedures/RelaunchProcedure;->context:Landroid/content/Context;

    .line 58
    iget-object v10, v1, Lexpo/modules/updates/procedures/RelaunchProcedure;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 59
    iget-object v11, v1, Lexpo/modules/updates/procedures/RelaunchProcedure;->updatesDirectory:Ljava/io/File;

    .line 60
    iget-object v12, v1, Lexpo/modules/updates/procedures/RelaunchProcedure;->fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

    .line 61
    iget-object v13, v1, Lexpo/modules/updates/procedures/RelaunchProcedure;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    .line 62
    iget-object v14, v1, Lexpo/modules/updates/procedures/RelaunchProcedure;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const/16 v16, 0x40

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v15

    move-object v6, v15

    move/from16 v15, v18

    .line 56
    invoke-direct/range {v8 .. v17}, Lexpo/modules/updates/launcher/DatabaseLauncher;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    :try_start_1
    iput-object v1, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->L$2:Ljava/lang/Object;

    iput-object v0, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->L$3:Ljava/lang/Object;

    iput-object v6, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->L$4:Ljava/lang/Object;

    iput v7, v3, Lexpo/modules/updates/procedures/RelaunchProcedure$run$1;->label:I

    invoke-direct {v1, v6, v3}, Lexpo/modules/updates/procedures/RelaunchProcedure;->launchWith(Lexpo/modules/updates/launcher/DatabaseLauncher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v3, v4, :cond_5

    return-object v4

    :cond_5
    move-object v4, v0

    move-object v3, v1

    .line 73
    :goto_2
    iget-object v0, v3, Lexpo/modules/updates/procedures/RelaunchProcedure;->setCurrentLauncher:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, v3, Lexpo/modules/updates/procedures/RelaunchProcedure;->getCurrentLauncher:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/updates/launcher/Launcher;

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher;->getLaunchAssetFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 75
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 77
    :try_start_2
    invoke-direct {v3, v5, v0}, Lexpo/modules/updates/procedures/RelaunchProcedure;->replaceLaunchAssetFileIfNeeded(Lcom/facebook/react/ReactApplication;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 79
    iget-object v0, v3, Lexpo/modules/updates/procedures/RelaunchProcedure;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v6, "Could not reset launchAssetFile for the ReactApplication"

    sget-object v7, Lexpo/modules/updates/logging/UpdatesErrorCode;->Unknown:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, v6, v4, v7}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 82
    :cond_6
    :goto_3
    iget-object v0, v3, Lexpo/modules/updates/procedures/RelaunchProcedure;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;->onSuccess()V

    .line 84
    iget-object v6, v3, Lexpo/modules/updates/procedures/RelaunchProcedure;->procedureScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lexpo/modules/updates/procedures/RelaunchProcedure$run$2;

    const/4 v4, 0x0

    invoke-direct {v0, v5, v3, v4}, Lexpo/modules/updates/procedures/RelaunchProcedure$run$2;-><init>(Lcom/facebook/react/ReactApplication;Lexpo/modules/updates/procedures/RelaunchProcedure;Lkotlin/coroutines/Continuation;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 90
    iget-boolean v0, v3, Lexpo/modules/updates/procedures/RelaunchProcedure;->shouldRunReaper:Z

    if-eqz v0, :cond_7

    .line 91
    invoke-direct {v3}, Lexpo/modules/updates/procedures/RelaunchProcedure;->runReaper()V

    .line 93
    :cond_7
    invoke-interface {v2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->resetStateAfterRestart()V

    .line 94
    invoke-interface {v2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    .line 95
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catch_2
    move-exception v0

    move-object v3, v1

    .line 67
    :goto_4
    iget-object v4, v3, Lexpo/modules/updates/procedures/RelaunchProcedure;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v5, "Error launching new launcher"

    sget-object v6, Lexpo/modules/updates/logging/UpdatesErrorCode;->Unknown:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v4, v5, v0, v6}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 68
    iget-object v3, v3, Lexpo/modules/updates/procedures/RelaunchProcedure;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    invoke-interface {v3, v0}, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;->onFailure(Ljava/lang/Exception;)V

    .line 69
    invoke-interface {v2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    .line 70
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
