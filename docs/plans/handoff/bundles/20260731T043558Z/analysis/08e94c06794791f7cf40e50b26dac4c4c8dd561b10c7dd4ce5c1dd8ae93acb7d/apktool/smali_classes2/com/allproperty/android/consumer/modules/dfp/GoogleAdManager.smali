.class public final Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "GoogleAdManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0014\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u0011H\u0016J*\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0018\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u000fH\u0007J\u0014\u0010\u001c\u001a\u00020\u001d*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\nH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "context",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "getContext",
        "()Lcom/facebook/react/bridge/ReactApplicationContext;",
        "customFormatAdList",
        "",
        "",
        "Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;",
        "index",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getName",
        "",
        "getConstants",
        "",
        "loadMastheadImage",
        "",
        "adUnitId",
        "templateId",
        "customTargeting",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "performClick",
        "key",
        "toMap",
        "Lcom/facebook/react/bridge/WritableMap;",
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
.field public static final Companion:Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$Companion;

.field private static final INDEX:Ljava/lang/String; = "index"

.field private static final REACT_CLASS:Ljava/lang/String; = "GoogleAdManager"


# instance fields
.field private final context:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final customFormatAdList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;",
            ">;"
        }
    .end annotation
.end field

.field private final index:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic $r8$lambda$wfQuV_wU4geRGmL5H1WHvgjNq0k(Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->performClick$lambda$0(Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->Companion:Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 21
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->customFormatAdList:Ljava/util/Map;

    .line 22
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static final synthetic access$getCustomFormatAdList$p(Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;)Ljava/util/Map;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->customFormatAdList:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getIndex$p(Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$toMap(Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;I)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->toMap(Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;I)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method private static final performClick$lambda$0(Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;ILjava/lang/String;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->customFormatAdList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;

    if-eqz p0, :cond_0

    .line 80
    invoke-interface {p0, p2}, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;->performClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final toMap(Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;I)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 85
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 86
    const-string v1, "MastheadImage"

    invoke-interface {p1, v1}, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;->getImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "CTALogo"

    invoke-interface {p1, v1}, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;->getImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "Description"

    invoke-interface {p1, v1}, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "CalltoAction"

    invoke-interface {p1, v1}, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "Image"

    invoke-interface {p1, v1}, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;->getImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "Headline"

    invoke-interface {p1, v1}, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string p1, "index"

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 93
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    .line 30
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "logo"

    const-string v2, "CTALogo"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 31
    const-string v1, "description"

    const-string v2, "Description"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 32
    const-string v1, "cta"

    const-string v2, "CalltoAction"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 33
    const-string v1, "headline"

    const-string v2, "Headline"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 34
    const-string v1, "image"

    const-string v2, "Image"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 35
    const-string v1, "index"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 29
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "GoogleAdManager"

    return-object v0
.end method

.method public final loadMastheadImage(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "templateId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;

    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 47
    new-instance p1, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$loadMastheadImage$1;

    invoke-direct {p1, p0, p4}, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$loadMastheadImage$1;-><init>(Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;Lcom/facebook/react/bridge/Promise;)V

    check-cast p1, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;

    .line 46
    invoke-virtual {v0, p1}, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;->setCallback(Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;)V

    .line 73
    invoke-virtual {v0}, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;->loadAd()V

    return-void
.end method

.method public final performClick(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$$ExternalSyntheticLambda0;-><init>(Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
