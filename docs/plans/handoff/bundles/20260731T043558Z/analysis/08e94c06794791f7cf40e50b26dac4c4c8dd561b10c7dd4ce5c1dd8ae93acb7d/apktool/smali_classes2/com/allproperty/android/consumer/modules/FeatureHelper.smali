.class public final Lcom/allproperty/android/consumer/modules/FeatureHelper;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "FeatureHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allproperty/android/consumer/modules/FeatureHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0014\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\tH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u000bH\u0007J\u0008\u0010\u0010\u001a\u00020\u000bH\u0007J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J \u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J \u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J \u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/FeatureHelper;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "context",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "getName",
        "",
        "getConstants",
        "",
        "sendEvent",
        "",
        "eventName",
        "params",
        "Lcom/facebook/react/bridge/WritableMap;",
        "startConfigUpdateListener",
        "stopConfigUpdateListener",
        "fetchAndActivate",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "getStringValue",
        "key",
        "defaultValue",
        "getBooleanValue",
        "",
        "getIntValue",
        "",
        "getAuthToken",
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
.field public static final Companion:Lcom/allproperty/android/consumer/modules/FeatureHelper$Companion;

.field private static final REACT_CLASS:Ljava/lang/String; = "FeatureHelper"

.field private static final remoteConfig:Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;


# direct methods
.method public static synthetic $r8$lambda$-siEfmzfplF_wTnzsLG8tW23fDs(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/allproperty/android/consumer/modules/FeatureHelper;->getAuthToken$lambda$2(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uWkYEiXapNAOp0xn5VypLv43Ekk(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/allproperty/android/consumer/modules/FeatureHelper;->fetchAndActivate$lambda$1(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y_mpQfucogOJ6Nxu9TFKSMgYPyw(Lcom/allproperty/android/consumer/modules/FeatureHelper;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/allproperty/android/consumer/modules/FeatureHelper;->startConfigUpdateListener$lambda$0(Lcom/allproperty/android/consumer/modules/FeatureHelper;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/allproperty/android/consumer/modules/FeatureHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allproperty/android/consumer/modules/FeatureHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/allproperty/android/consumer/modules/FeatureHelper;->Companion:Lcom/allproperty/android/consumer/modules/FeatureHelper$Companion;

    .line 14
    new-instance v0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;

    invoke-direct {v0}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;-><init>()V

    sput-object v0, Lcom/allproperty/android/consumer/modules/FeatureHelper;->remoteConfig:Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method public static final synthetic access$getRemoteConfig$cp()Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;
    .locals 1

    .line 11
    sget-object v0, Lcom/allproperty/android/consumer/modules/FeatureHelper;->remoteConfig:Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;

    return-object v0
.end method

.method private static final fetchAndActivate$lambda$1(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method private static final getAuthToken$lambda$2(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/installations/InstallationTokenResult;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/installations/InstallationTokenResult;->getToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_1

    .line 75
    :cond_1
    const-string p1, ""

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private final sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    .line 27
    sget-object p1, Lcom/allproperty/android/consumer/modules/EventEmitter;->Companion:Lcom/allproperty/android/consumer/modules/EventEmitter$Companion;

    invoke-virtual {p1}, Lcom/allproperty/android/consumer/modules/EventEmitter$Companion;->getInstance()Lcom/allproperty/android/consumer/modules/EventEmitter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    const-string/jumbo v0, "remoteConfigUpdate"

    invoke-virtual {p1, v0, p2}, Lcom/allproperty/android/consumer/modules/EventEmitter;->sendNativeEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_0
    return-void
.end method

.method private static final startConfigUpdateListener$lambda$0(Lcom/allproperty/android/consumer/modules/FeatureHelper;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/allproperty/android/consumer/modules/FeatureHelper;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 37
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final fetchAndActivate(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/allproperty/android/consumer/modules/FeatureHelper;->remoteConfig:Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;

    invoke-virtual {v0}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->fetchAndActivate()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/allproperty/android/consumer/modules/FeatureHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/FeatureHelper$$ExternalSyntheticLambda2;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final getAuthToken(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 70
    invoke-static {}, Lcom/google/firebase/installations/FirebaseInstallations;->getInstance()Lcom/google/firebase/installations/FirebaseInstallations;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/allproperty/android/consumer/modules/FeatureHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/FeatureHelper$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final getBooleanValue(Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/allproperty/android/consumer/modules/FeatureHelper;->remoteConfig:Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;

    invoke-virtual {v0, p1, p2}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    const-string v0, "EVENT_CONFIG_UPDATE"

    const-string v1, "configUpdate"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getIntValue(Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/allproperty/android/consumer/modules/FeatureHelper;->remoteConfig:Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;

    invoke-virtual {v0, p1, p2}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->getIntValue(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "FeatureHelper"

    return-object v0
.end method

.method public final getStringValue(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/allproperty/android/consumer/modules/FeatureHelper;->remoteConfig:Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;

    invoke-virtual {v0, p1, p2}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final startConfigUpdateListener()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 35
    sget-object v0, Lcom/allproperty/android/consumer/modules/FeatureHelper;->remoteConfig:Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;

    new-instance v1, Lcom/allproperty/android/consumer/modules/FeatureHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/allproperty/android/consumer/modules/FeatureHelper$$ExternalSyntheticLambda0;-><init>(Lcom/allproperty/android/consumer/modules/FeatureHelper;)V

    invoke-virtual {v0, v1}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->startConfigUpdateListener(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final stopConfigUpdateListener()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 42
    sget-object v0, Lcom/allproperty/android/consumer/modules/FeatureHelper;->remoteConfig:Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;

    invoke-virtual {v0}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->stopConfigUpdateListener()V

    return-void
.end method
