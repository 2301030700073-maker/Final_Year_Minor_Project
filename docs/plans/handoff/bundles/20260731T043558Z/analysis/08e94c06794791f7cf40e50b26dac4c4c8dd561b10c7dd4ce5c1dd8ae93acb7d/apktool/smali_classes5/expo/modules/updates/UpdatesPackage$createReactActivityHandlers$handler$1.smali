.class public final Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1;
.super Ljava/lang/Object;
.source "UpdatesPackage.kt"

# interfaces
.implements Lexpo/modules/core/interfaces/ReactActivityHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/UpdatesPackage;->createReactActivityHandlers(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0083@\u00a2\u0006\u0002\u0010\u000cJ\u0016\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0083@\u00a2\u0006\u0002\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "expo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1",
        "Lexpo/modules/core/interfaces/ReactActivityHandler;",
        "getDelayLoadAppHandler",
        "Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;",
        "activity",
        "Lcom/facebook/react/ReactActivity;",
        "reactNativeHost",
        "Lcom/facebook/react/ReactNativeHost;",
        "startUpdatesController",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "invokeReadyRunnable",
        "whenReadyRunnable",
        "Ljava/lang/Runnable;",
        "(Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# direct methods
.method public static synthetic $r8$lambda$9UiyBToEHf8guvLek1XGQDF_UMM(Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1;->getDelayLoadAppHandler$lambda$0(Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1;Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$invokeReadyRunnable(Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1;->invokeReadyRunnable(Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startUpdatesController(Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1;->startUpdatesController(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getDelayLoadAppHandler$lambda$0(Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 7

    .line 66
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1$getDelayLoadAppHandler$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1$getDelayLoadAppHandler$1$1;-><init>(Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1;Landroid/content/Context;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final invokeReadyRunnable(Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 88
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1$invokeReadyRunnable$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1$invokeReadyRunnable$2;-><init>(Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final startUpdatesController(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1$startUpdatesController$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1$startUpdatesController$2;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public getDelayLoadAppHandler(Lcom/facebook/react/ReactActivity;Lcom/facebook/react/ReactNativeHost;)Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactNativeHost"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lexpo/modules/updates/UpdatesPackage;->Companion:Lexpo/modules/updates/UpdatesPackage$Companion;

    invoke-virtual {v0}, Lexpo/modules/updates/UpdatesPackage$Companion;->isUsingCustomInit$expo_updates_release()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/ReactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 63
    invoke-virtual {p2}, Lcom/facebook/react/ReactNativeHost;->getUseDeveloperSupport()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 64
    sget-object p2, Lexpo/modules/updates/UpdatesPackage;->Companion:Lexpo/modules/updates/UpdatesPackage$Companion;

    invoke-virtual {p2}, Lexpo/modules/updates/UpdatesPackage$Companion;->isUsingNativeDebug()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 57
    :cond_2
    :goto_0
    new-instance p2, Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1;Landroid/content/Context;)V

    return-object p2
.end method
