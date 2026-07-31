.class public final Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;
.super Ljava/lang/Object;
.source "RemoteConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u000b\u001a\u00020\u000c2\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000c0\u000eJ\u0006\u0010\u0011\u001a\u00020\u000cJ\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u000fH\u0002J\u0016\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u000fJ\u0016\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0007J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001cJ\u0016\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;",
        "",
        "<init>",
        "()V",
        "remoteConfig",
        "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;",
        "MINIMUM_FETCH_INTERVAL_IN_SECONDS",
        "",
        "cacheExpiration",
        "configUpdateListenerRegistration",
        "Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;",
        "startConfigUpdateListener",
        "",
        "callback",
        "Lkotlin/Function2;",
        "",
        "Lcom/facebook/react/bridge/WritableMap;",
        "stopConfigUpdateListener",
        "fetchAndActivate",
        "Lcom/google/android/gms/tasks/Task;",
        "",
        "getValue",
        "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;",
        "key",
        "getStringValue",
        "defaultValue",
        "getLongValue",
        "getIntValue",
        "",
        "getBooleanValue",
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


# instance fields
.field private final MINIMUM_FETCH_INTERVAL_IN_SECONDS:J

.field private final cacheExpiration:J

.field private configUpdateListenerRegistration:Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

.field private remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;


# direct methods
.method public static synthetic $r8$lambda$3xO7v627oVXLJy-j0N484VXoMDI(Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->fetchAndActivate$lambda$1(Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M0-NuVVpt6irfGcrXKU2jraiEJo(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->fetchAndActivate$lambda$1$lambda$0(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YBYJn92P8hWvZgECGlsaXuzjyH4(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->fetchAndActivate$lambda$2(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xa8c0

    .line 19
    iput-wide v0, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->MINIMUM_FETCH_INTERVAL_IN_SECONDS:J

    .line 22
    const-string/jumbo v2, "production"

    const-string v3, "internal"

    if-ne v2, v3, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    iput-wide v0, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->cacheExpiration:J

    .line 27
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    .line 28
    new-instance v2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    invoke-direct {v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;-><init>()V

    .line 29
    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setMinimumFetchIntervalInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->build()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setConfigSettingsAsync(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/android/gms/tasks/Task;

    .line 32
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    sget v1, Lcom/allproperty/android/consumer/R$xml;->remote_config_defaults:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setDefaultsAsync(I)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final fetchAndActivate$lambda$1(Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    const-string v0, "fetchTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object p0, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->activate()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p2, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/Exception;

    const-string p2, "Fetch failed"

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 86
    :cond_1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private static final fetchAndActivate$lambda$1$lambda$0(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    const-string v0, "activateTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 78
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Activation failed"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 80
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private static final fetchAndActivate$lambda$2(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    const-string v0, "activateTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 94
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 95
    iget-object p0, p1, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetch()Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Activation failed"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 97
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private final getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    move-result-object p1

    const-string v0, "getValue(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-interface {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->getSource()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final fetchAndActivate()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInfo()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;->getLastFetchStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 71
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetch()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig$$ExternalSyntheticLambda1;-><init>(Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 73
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->activate()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p0}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 91
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 104
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-string v1, "getTask(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getBooleanValue(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 131
    :cond_0
    invoke-interface {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asBoolean()Z

    move-result p1

    return p1
.end method

.method public final getIntValue(Ljava/lang/String;I)I
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p2

    .line 126
    invoke-virtual {p0, p1, v0, v1}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->getLongValue(Ljava/lang/String;J)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public final getLongValue(Ljava/lang/String;J)J
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    .line 122
    :cond_0
    invoke-interface {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asLong()J

    move-result-wide p1

    return-wide p1
.end method

.method public final getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 117
    :cond_0
    invoke-interface {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "asString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final startConfigUpdateListener(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/facebook/react/bridge/WritableMap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->configUpdateListenerRegistration:Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    new-instance v1, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig$startConfigUpdateListener$1;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig$startConfigUpdateListener$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v1, Lcom/google/firebase/remoteconfig/ConfigUpdateListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->addOnConfigUpdateListener(Lcom/google/firebase/remoteconfig/ConfigUpdateListener;)Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    move-result-object p1

    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->configUpdateListenerRegistration:Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    :cond_0
    return-void
.end method

.method public final stopConfigUpdateListener()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->configUpdateListenerRegistration:Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;->remove()V

    :cond_0
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->configUpdateListenerRegistration:Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    return-void
.end method
