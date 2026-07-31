.class public final Lcom/allproperty/android/consumer/modules/SplashScreen;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "SplashScreen.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSplashScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplashScreen.kt\ncom/allproperty/android/consumer/modules/SplashScreen\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,181:1\n1#2:182\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0007J\u0008\u0010\n\u001a\u00020\tH\u0007J\u0008\u0010\u000b\u001a\u00020\tH\u0007J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0007H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/SplashScreen;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "getName",
        "",
        "show",
        "",
        "hide",
        "displayIAMIfRequired",
        "forceDownloadImage",
        "url",
        "Companion",
        "app_myPublicRelease"
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
.field public static final Companion:Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;

.field public static final REACT_CLASS:Ljava/lang/String; = "SplashScreen"

.field private static isShowing:Z

.field private static launchScreenReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public static synthetic $r8$lambda$P3NsnTsXgG787P-ExHEq6qgt7lc(Lcom/allproperty/android/consumer/modules/SplashScreen;)V
    .locals 0

    invoke-static {p0}, Lcom/allproperty/android/consumer/modules/SplashScreen;->show$lambda$1(Lcom/allproperty/android/consumer/modules/SplashScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lup7QHRY4nUioO2dJ_x96QfPIcQ(Landroid/app/Dialog;)V
    .locals 0

    invoke-static {p0}, Lcom/allproperty/android/consumer/modules/SplashScreen;->hide$lambda$3(Landroid/app/Dialog;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/allproperty/android/consumer/modules/SplashScreen;->Companion:Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string/jumbo v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 31
    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/SplashScreen;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method public static final synthetic access$isShowing$cp()Z
    .locals 1

    .line 31
    sget-boolean v0, Lcom/allproperty/android/consumer/modules/SplashScreen;->isShowing:Z

    return v0
.end method

.method public static final synthetic access$setLaunchScreenReference$cp(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 31
    sput-object p0, Lcom/allproperty/android/consumer/modules/SplashScreen;->launchScreenReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$setShowing$cp(Z)V
    .locals 0

    .line 31
    sput-boolean p0, Lcom/allproperty/android/consumer/modules/SplashScreen;->isShowing:Z

    return-void
.end method

.method private static final hide$lambda$3(Landroid/app/Dialog;)V
    .locals 0

    .line 142
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    const/4 p0, 0x0

    .line 143
    sput-object p0, Lcom/allproperty/android/consumer/modules/SplashScreen;->launchScreenReference:Ljava/lang/ref/WeakReference;

    const/4 p0, 0x0

    .line 144
    sput-boolean p0, Lcom/allproperty/android/consumer/modules/SplashScreen;->isShowing:Z

    return-void
.end method

.method private static final show$lambda$1(Lcom/allproperty/android/consumer/modules/SplashScreen;)V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/SplashScreen;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/allproperty/android/consumer/modules/SplashScreen;->Companion:Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;

    invoke-virtual {v0, p0}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;->onCreate(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final displayIAMIfRequired()V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 150
    new-instance v0, Lcom/allproperty/android/consumer/modules/SplashScreen$displayIAMIfRequired$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allproperty/android/consumer/modules/SplashScreen$displayIAMIfRequired$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final forceDownloadImage(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/SplashScreen;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v1, Lcom/allproperty/android/consumer/modules/SplashScreen$forceDownloadImage$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/allproperty/android/consumer/modules/SplashScreen$forceDownloadImage$1$1;-><init>(Ljava/lang/String;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v2, v1, p1, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 127
    const-string v0, "SplashScreen"

    return-object v0
.end method

.method public final hide()V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 140
    sget-object v0, Lcom/allproperty/android/consumer/modules/SplashScreen;->launchScreenReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/SplashScreen;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    new-instance v2, Lcom/allproperty/android/consumer/modules/SplashScreen$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/allproperty/android/consumer/modules/SplashScreen$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnUiQueueThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final show()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/SplashScreen;->hide()V

    .line 133
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/SplashScreen;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    new-instance v1, Lcom/allproperty/android/consumer/modules/SplashScreen$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/allproperty/android/consumer/modules/SplashScreen$$ExternalSyntheticLambda1;-><init>(Lcom/allproperty/android/consumer/modules/SplashScreen;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnUiQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method
