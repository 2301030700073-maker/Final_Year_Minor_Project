.class public Lcom/braze/BrazeActivityLifecycleCallbackListener;
.super Ljava/lang/Object;
.source "BrazeActivityLifecycleCallbackListener.kt"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001BM\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0016\u0008\u0002\u0010\u0005\u001a\u0010\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0007\u0018\u00010\u0006\u0012\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0007\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\nB7\u0008\u0017\u0012\u0014\u0010\u0005\u001a\u0010\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0007\u0018\u00010\u0006\u0012\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0007\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\u000bJ\u001a\u0010\u0017\u001a\u00020\u00182\u0012\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00070\u0006J\u001a\u0010\u001a\u001a\u00020\u00182\u0012\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00070\u0006J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J\u001a\u0010 \u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000e2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0018\u0010#\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010$\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J\u0018\u0010%\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u0003H\u0007J\u000e\u0010\'\u001a\u00020\u00182\u0006\u0010(\u001a\u00020)R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0016\u0012\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006*"
    }
    d2 = {
        "Lcom/braze/BrazeActivityLifecycleCallbackListener;",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "sessionHandlingEnabled",
        "",
        "registerInAppMessageManager",
        "inAppMessagingRegistrationBlocklist",
        "",
        "Ljava/lang/Class;",
        "sessionHandlingBlocklist",
        "<init>",
        "(ZZLjava/util/Set;Ljava/util/Set;)V",
        "(Ljava/util/Set;Ljava/util/Set;)V",
        "previousActivityRef",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "shouldPersistWebView",
        "getShouldPersistWebView$annotations",
        "()V",
        "getShouldPersistWebView",
        "()Ljava/lang/Boolean;",
        "setShouldPersistWebView",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "setInAppMessagingRegistrationBlocklist",
        "",
        "blocklist",
        "setSessionHandlingBlocklist",
        "onActivityStarted",
        "activity",
        "onActivityStopped",
        "onActivityResumed",
        "onActivityPaused",
        "onActivityCreated",
        "bundle",
        "Landroid/os/Bundle;",
        "onActivitySaveInstanceState",
        "onActivityDestroyed",
        "shouldHandleLifecycleMethodsInActivity",
        "forSessionHandling",
        "registerOnApplication",
        "context",
        "Landroid/content/Context;",
        "android-sdk-ui_release"
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
.field private inAppMessagingRegistrationBlocklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private previousActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final registerInAppMessageManager:Z

.field private sessionHandlingBlocklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final sessionHandlingEnabled:Z

.field private shouldPersistWebView:Ljava/lang/Boolean;


# direct methods
.method public static synthetic $r8$lambda$3uK9jIW1xd6WFjlQ9_DQqCwk68E(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->onActivityStopped$lambda$5(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7Xk030shm3q9tnb9L3MuvkpUhgo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->onActivityResumed$lambda$6()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$J_Bb5rw-BX1LJgtOmQXWOGYm6ps()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->registerOnApplication$lambda$12()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Nqts94Ra1OY0agcQCGH2bjLMpWw(Ljava/util/Set;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->setInAppMessagingRegistrationBlocklist$lambda$2(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S7T_i6Wjxzz3cqboy8w-WNDxhD4(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->onActivityStarted$lambda$4(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ToBvURsTc0RYJCHFLg69aKlJwBw(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->onActivityPaused$lambda$8(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$erciBAhqIaa1yFp1tExvjsbm068(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->onActivityResumed$lambda$7(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lEIfbdvOx5AiS6eOxkCHNl8OjhA(Lcom/braze/BrazeActivityLifecycleCallbackListener;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->_init_$lambda$0(Lcom/braze/BrazeActivityLifecycleCallbackListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pHZGbtFNefyXznvgh792uuQSHnI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->onActivityPaused$lambda$9()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$swaApDEpJuUbSweU4qc2vSdr5ig(Lcom/braze/BrazeActivityLifecycleCallbackListener;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->_init_$lambda$1(Lcom/braze/BrazeActivityLifecycleCallbackListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vPHT-_bQDAiB_7wMyNURTGgjq2U(Ljava/util/Set;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->setSessionHandlingBlocklist$lambda$3(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y__VxHXTeRozY-FMcV714zy5oNo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->shouldHandleLifecycleMethodsInActivity$lambda$11()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$zUjhKjQAkNqQnVuUSib118G9SZA(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->onActivityCreated$lambda$10(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/braze/BrazeActivityLifecycleCallbackListener;-><init>(ZZLjava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/braze/BrazeActivityLifecycleCallbackListener;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 74
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/braze/BrazeActivityLifecycleCallbackListener;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 73
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p2

    .line 70
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/braze/BrazeActivityLifecycleCallbackListener;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 7

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/braze/BrazeActivityLifecycleCallbackListener;-><init>(ZZLjava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 7

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/braze/BrazeActivityLifecycleCallbackListener;-><init>(ZZLjava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/braze/BrazeActivityLifecycleCallbackListener;-><init>(ZZLjava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/util/Set;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->sessionHandlingEnabled:Z

    .line 38
    iput-boolean p2, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->registerInAppMessageManager:Z

    if-nez p3, :cond_0

    .line 51
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    .line 50
    :goto_0
    iput-object v0, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->inAppMessagingRegistrationBlocklist:Ljava/util/Set;

    if-nez p4, :cond_1

    .line 52
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p4

    :goto_1
    iput-object v0, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->sessionHandlingBlocklist:Ljava/util/Set;

    .line 53
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0}, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda12;-><init>(Lcom/braze/BrazeActivityLifecycleCallbackListener;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda1;-><init>(Lcom/braze/BrazeActivityLifecycleCallbackListener;)V

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 39
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 40
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p4

    .line 36
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/braze/BrazeActivityLifecycleCallbackListener;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/braze/BrazeActivityLifecycleCallbackListener;)Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrazeActivityLifecycleCallbackListener using in-app messaging blocklist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->inAppMessagingRegistrationBlocklist:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final _init_$lambda$1(Lcom/braze/BrazeActivityLifecycleCallbackListener;)Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrazeActivityLifecycleCallbackListener using session handling blocklist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->sessionHandlingBlocklist:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getShouldPersistWebView$annotations()V
    .locals 0

    return-void
.end method

.method private static final onActivityCreated$lambda$10(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Automatically calling lifecycle method: ensureSubscribedToInAppMessageEvents for class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final onActivityPaused$lambda$8(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Automatically calling lifecycle method: unregisterInAppMessageManager for class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final onActivityPaused$lambda$9()Ljava/lang/String;
    .locals 1

    .line 155
    const-string v0, "Skipping unregisterInAppMessageManager in onActivityPaused because shouldPersistWebView is true"

    return-object v0
.end method

.method private static final onActivityResumed$lambda$6()Ljava/lang/String;
    .locals 1

    .line 117
    const-string v0, "Activity is different from previous activity. Unregistering in-app message manager"

    return-object v0
.end method

.method private static final onActivityResumed$lambda$7(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Automatically calling lifecycle method: registerInAppMessageManager for class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final onActivityStarted$lambda$4(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Automatically calling lifecycle method: openSession for class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final onActivityStopped$lambda$5(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Automatically calling lifecycle method: closeSession for class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final registerOnApplication$lambda$12()Ljava/lang/String;
    .locals 1

    .line 204
    const-string v0, "Failed to register this lifecycle callback listener directly against application class"

    return-object v0
.end method

.method private static final setInAppMessagingRegistrationBlocklist$lambda$2(Ljava/util/Set;)Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setInAppMessagingRegistrationBlocklist called with blocklist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final setSessionHandlingBlocklist$lambda$3(Ljava/util/Set;)Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSessionHandlingBlocklist called with blocklist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final shouldHandleLifecycleMethodsInActivity$lambda$11()Ljava/lang/String;
    .locals 1

    .line 181
    const-string v0, "Skipping automatic registration for notification trampoline activity class."

    return-object v0
.end method


# virtual methods
.method public final getShouldPersistWebView()Ljava/lang/Boolean;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->shouldPersistWebView:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda9;

    invoke-direct {v5, p1}, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda9;-><init>(Landroid/app/Activity;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 165
    sget-object p2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {p2}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->ensureSubscribedToInAppMessageEvents(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-boolean v0, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->registerInAppMessageManager:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->shouldHandleLifecycleMethodsInActivity(Landroid/app/Activity;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->shouldPersistWebView:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/braze/configuration/BrazeConfigurationProvider;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->getShouldPersistWebViewWhenBackgroundingApp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->shouldPersistWebView:Ljava/lang/Boolean;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->shouldPersistWebView:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda6;

    invoke-direct {v6, p1}, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda6;-><init>(Landroid/app/Activity;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 151
    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->unregisterInAppMessageManager(Landroid/app/Activity;)V

    goto :goto_0

    .line 153
    :cond_1
    sget-object p1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->pauseWebviewIfNecessary$android_sdk_ui_release()V

    .line 154
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda7;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 11

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-boolean v0, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->registerInAppMessageManager:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->shouldHandleLifecycleMethodsInActivity(Landroid/app/Activity;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->previousActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->shouldPersistWebView:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v8, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda10;

    invoke-direct {v8}, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda10;-><init>()V

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 119
    sget-object v1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {v1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->unregisterInAppMessageManager(Landroid/app/Activity;)V

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->shouldPersistWebView:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 130
    :cond_2
    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->resumeWebviewIfNecessary$android_sdk_ui_release()V

    goto :goto_2

    .line 125
    :cond_3
    :goto_1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda11;

    invoke-direct {v6, p1}, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda11;-><init>(Landroid/app/Activity;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 128
    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->registerInAppMessageManager(Landroid/app/Activity;)V

    .line 133
    :goto_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->previousActivityRef:Ljava/lang/ref/WeakReference;

    :cond_4
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bundle"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-boolean v0, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->sessionHandlingEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->shouldHandleLifecycleMethodsInActivity(Landroid/app/Activity;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda8;

    invoke-direct {v6, p1}, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda8;-><init>(Landroid/app/Activity;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->openSession(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-boolean v0, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->sessionHandlingEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/braze/BrazeActivityLifecycleCallbackListener;->shouldHandleLifecycleMethodsInActivity(Landroid/app/Activity;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda5;

    invoke-direct {v6, p1}, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda5;-><init>(Landroid/app/Activity;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->closeSession(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final registerOnApplication(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    move-object v0, p0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 204
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    new-instance v5, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda2;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final setInAppMessagingRegistrationBlocklist(Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "blocklist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1}, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 81
    iput-object p1, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->inAppMessagingRegistrationBlocklist:Ljava/util/Set;

    return-void
.end method

.method public final setSessionHandlingBlocklist(Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "blocklist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda4;

    invoke-direct {v6, p1}, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 89
    iput-object p1, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->sessionHandlingBlocklist:Ljava/util/Set;

    return-void
.end method

.method public final setShouldPersistWebView(Ljava/lang/Boolean;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->shouldPersistWebView:Ljava/lang/Boolean;

    return-void
.end method

.method public final shouldHandleLifecycleMethodsInActivity(Landroid/app/Activity;Z)Z
    .locals 10

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 180
    const-class v0, Lcom/braze/push/NotificationTrampolineActivity;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 181
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/braze/BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda3;-><init>()V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 186
    iget-object p2, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->sessionHandlingBlocklist:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 188
    :cond_1
    iget-object p2, p0, Lcom/braze/BrazeActivityLifecycleCallbackListener;->inAppMessagingRegistrationBlocklist:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    move v1, v0

    :cond_2
    return v1
.end method
