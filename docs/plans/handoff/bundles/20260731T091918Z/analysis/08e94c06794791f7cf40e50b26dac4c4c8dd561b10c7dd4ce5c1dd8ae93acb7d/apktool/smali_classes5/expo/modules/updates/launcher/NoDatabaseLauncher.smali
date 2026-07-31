.class public final Lexpo/modules/updates/launcher/NoDatabaseLauncher;
.super Ljava/lang/Object;
.source "NoDatabaseLauncher.kt"

# interfaces
.implements Lexpo/modules/updates/launcher/Launcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/launcher/NoDatabaseLauncher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB5\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0014\u0010\u001c\u001a\u00020\u001d2\n\u0010\u0006\u001a\u00060\u0007j\u0002`\u0008H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u001aX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lexpo/modules/updates/launcher/NoDatabaseLauncher;",
        "Lexpo/modules/updates/launcher/Launcher;",
        "context",
        "Landroid/content/Context;",
        "logger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "fatalException",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "launcherScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/Exception;Lkotlinx/coroutines/CoroutineScope;)V",
        "bundleAssetName",
        "",
        "getBundleAssetName",
        "()Ljava/lang/String;",
        "launchedUpdate",
        "",
        "getLaunchedUpdate",
        "()Ljava/lang/Void;",
        "launchAssetFile",
        "getLaunchAssetFile",
        "localAssetFiles",
        "getLocalAssetFiles",
        "isUsingEmbeddedAssets",
        "",
        "()Z",
        "writeErrorToLog",
        "",
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
.field public static final Companion:Lexpo/modules/updates/launcher/NoDatabaseLauncher$Companion;

.field private static final ERROR_LOG_FILENAME:Ljava/lang/String; = "expo-error.log"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bundleAssetName:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final isUsingEmbeddedAssets:Z

.field private final launchAssetFile:Ljava/lang/Void;

.field private final launchedUpdate:Ljava/lang/Void;

.field private final localAssetFiles:Ljava/lang/Void;

.field private final logger:Lexpo/modules/updates/logging/UpdatesLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/launcher/NoDatabaseLauncher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/launcher/NoDatabaseLauncher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->Companion:Lexpo/modules/updates/launcher/NoDatabaseLauncher$Companion;

    .line 42
    const-string v0, "NoDatabaseLauncher"

    sput-object v0, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/updates/logging/UpdatesLogger;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lexpo/modules/updates/launcher/NoDatabaseLauncher;-><init>(Landroid/content/Context;Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/Exception;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/Exception;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lexpo/modules/updates/launcher/NoDatabaseLauncher;-><init>(Landroid/content/Context;Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/Exception;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/Exception;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcherScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 25
    const-string p1, "index.android.bundle"

    iput-object p1, p0, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->bundleAssetName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->isUsingEmbeddedAssets:Z

    if-eqz p3, :cond_0

    .line 64
    new-instance p1, Lexpo/modules/updates/launcher/NoDatabaseLauncher$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p3, p2}, Lexpo/modules/updates/launcher/NoDatabaseLauncher$1;-><init>(Lexpo/modules/updates/launcher/NoDatabaseLauncher;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p4

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/Exception;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 23
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    check-cast p4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/updates/launcher/NoDatabaseLauncher;-><init>(Landroid/content/Context;Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/Exception;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final synthetic access$writeErrorToLog(Lexpo/modules/updates/launcher/NoDatabaseLauncher;Ljava/lang/Exception;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->writeErrorToLog(Ljava/lang/Exception;)V

    return-void
.end method

.method private final writeErrorToLog(Ljava/lang/Exception;)V
    .locals 6

    .line 33
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "expo-error.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p1, v1}, Lkotlin/io/FilesKt;->appendText(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 37
    iget-object v0, p0, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "Failed to write fatal error to log"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lexpo/modules/updates/logging/UpdatesLogger;->error$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBundleAssetName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->bundleAssetName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getLaunchAssetFile()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->getLaunchAssetFile()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchAssetFile()Ljava/lang/Void;
    .locals 1

    .line 27
    iget-object v0, p0, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->launchAssetFile:Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->getLaunchedUpdate()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lexpo/modules/updates/db/entity/UpdateEntity;

    return-object v0
.end method

.method public getLaunchedUpdate()Ljava/lang/Void;
    .locals 1

    .line 26
    iget-object v0, p0, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->launchedUpdate:Ljava/lang/Void;

    return-object v0
.end method

.method public getLocalAssetFiles()Ljava/lang/Void;
    .locals 1

    .line 28
    iget-object v0, p0, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->localAssetFiles:Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic getLocalAssetFiles()Ljava/util/Map;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->getLocalAssetFiles()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public isUsingEmbeddedAssets()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lexpo/modules/updates/launcher/NoDatabaseLauncher;->isUsingEmbeddedAssets:Z

    return v0
.end method
