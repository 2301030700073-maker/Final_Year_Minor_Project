.class public final Lcom/propertyguru/webkit/CookieManager;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "CookieManager.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    hasConstants = false
    name = "CookieManager"
    needsEagerInit = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/propertyguru/webkit/CookieManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J \u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/propertyguru/webkit/CookieManager;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "getName",
        "",
        "getCookies",
        "",
        "uri",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "setCookies",
        "cookie",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "clearCookies",
        "Companion",
        "propertyguru_react-native-webkit_release"
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
.field public static final COOKIE_MANAGER_NAME:Ljava/lang/String; = "CookieManager"

.field public static final Companion:Lcom/propertyguru/webkit/CookieManager$Companion;


# direct methods
.method public static synthetic $r8$lambda$8GbMJEjnGk85B3UY0oCEqG8-nw4(Lcom/facebook/react/bridge/WritableArray;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/propertyguru/webkit/CookieManager;->setCookies$lambda$1$lambda$0(Lcom/facebook/react/bridge/WritableArray;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$94XGx_G1dNS3TZvv_QpH2sKjSZs(Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-static {p0}, Lcom/propertyguru/webkit/CookieManager;->clearCookies$lambda$3(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FCXkTlzjZBuCVLLJiPXXVsp7xOY(Landroid/webkit/CookieManager;Lcom/facebook/react/bridge/Promise;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/propertyguru/webkit/CookieManager;->clearCookies$lambda$3$lambda$2(Landroid/webkit/CookieManager;Lcom/facebook/react/bridge/Promise;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dBvfq3Iyh9wgoy6nTo20PX09C3M(ILandroid/webkit/CookieManager;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/WritableArray;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/propertyguru/webkit/CookieManager;->setCookies$lambda$1(ILandroid/webkit/CookieManager;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/WritableArray;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/propertyguru/webkit/CookieManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/propertyguru/webkit/CookieManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/propertyguru/webkit/CookieManager;->Companion:Lcom/propertyguru/webkit/CookieManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method private static final clearCookies$lambda$3(Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    .line 58
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p0}, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda2;-><init>(Landroid/webkit/CookieManager;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static final clearCookies$lambda$3$lambda$2(Landroid/webkit/CookieManager;Lcom/facebook/react/bridge/Promise;Ljava/lang/Boolean;)V
    .locals 0

    .line 61
    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    .line 62
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method private static final setCookies$lambda$1(ILandroid/webkit/CookieManager;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/WritableArray;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 42
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p4, p5}, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda3;-><init>(Lcom/facebook/react/bridge/WritableArray;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p1, p2, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final setCookies$lambda$1$lambda$0(Lcom/facebook/react/bridge/WritableArray;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .locals 0

    .line 43
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p2}, Lcom/facebook/react/bridge/WritableArray;->pushBoolean(Z)V

    .line 44
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public final clearCookies(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getCookies(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 29
    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "CookieManager"

    return-object v0
.end method

.method public final setCookies(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 11
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cookie"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 36
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    .line 37
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v8

    .line 39
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v9, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 40
    new-instance v10, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda0;

    move-object v1, v10

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda0;-><init>(ILandroid/webkit/CookieManager;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/WritableArray;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v10}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 49
    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 51
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 52
    invoke-interface {p3, v8}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
