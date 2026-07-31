.class public final Lexpo/modules/updates/errorrecovery/ErrorRecovery;
.super Ljava/lang/Object;
.source "ErrorRecovery.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/errorrecovery/ErrorRecovery$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 42\u00020\u0001:\u00014B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u0014J\u0019\u0010\u001e\u001a\u00020\u00192\n\u0010\u001f\u001a\u00060 j\u0002`!H\u0000\u00a2\u0006\u0002\u0008\"J\u000e\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020%J\u0019\u0010&\u001a\u00020\u00192\n\u0010\u001f\u001a\u00060 j\u0002`!H\u0000\u00a2\u0006\u0002\u0008\'J\r\u0010(\u001a\u00020\u0019H\u0000\u00a2\u0006\u0002\u0008)J\u0008\u0010,\u001a\u00020\u0019H\u0002J\u0008\u0010-\u001a\u00020\u0019H\u0002J\u0010\u0010.\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u0014H\u0002J\u0008\u0010/\u001a\u00020\u0019H\u0002J\u0010\u00100\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u0014H\u0002J\u0008\u00101\u001a\u00020\u0019H\u0002J\u0008\u00102\u001a\u00020\u0019H\u0002J\u0008\u00103\u001a\u00020\u0019H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lexpo/modules/updates/errorrecovery/ErrorRecovery;",
        "",
        "logger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "enableBridgelessArchitecture",
        "",
        "<init>",
        "(Lexpo/modules/updates/logging/UpdatesLogger;Z)V",
        "handlerThread",
        "Landroid/os/HandlerThread;",
        "getHandlerThread$expo_updates_release",
        "()Landroid/os/HandlerThread;",
        "handler",
        "Landroid/os/Handler;",
        "getHandler$expo_updates_release",
        "()Landroid/os/Handler;",
        "setHandler$expo_updates_release",
        "(Landroid/os/Handler;)V",
        "weakDevSupportManager",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
        "previousExceptionHandler",
        "Lcom/facebook/react/bridge/DefaultJSExceptionHandler;",
        "shouldHandleReactInstanceException",
        "initialize",
        "",
        "delegate",
        "Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;",
        "startMonitoring",
        "devSupportManager",
        "onReactInstanceException",
        "exception",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onReactInstanceException$expo_updates_release",
        "notifyNewRemoteLoadStatus",
        "newStatus",
        "Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;",
        "handleException",
        "handleException$expo_updates_release",
        "handleContentAppeared",
        "handleContentAppeared$expo_updates_release",
        "contentAppearedListener",
        "Lcom/facebook/react/bridge/ReactMarker$MarkerListener;",
        "registerContentAppearedListener",
        "unregisterContentAppearedListener",
        "registerErrorHandler",
        "registerErrorHandlerImplBridgeless",
        "registerErrorHandlerImplBridge",
        "unregisterErrorHandler",
        "unregisterErrorHandlerImplBridgeless",
        "unregisterErrorHandlerImplBridge",
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
.field public static final Companion:Lexpo/modules/updates/errorrecovery/ErrorRecovery$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final contentAppearedListener:Lcom/facebook/react/bridge/ReactMarker$MarkerListener;

.field private final enableBridgelessArchitecture:Z

.field public handler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private final logger:Lexpo/modules/updates/logging/UpdatesLogger;

.field private previousExceptionHandler:Lcom/facebook/react/bridge/DefaultJSExceptionHandler;

.field private shouldHandleReactInstanceException:Z

.field private weakDevSupportManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CxrxRg2mBMg_3CbTJcTsRl6Rlr8(Lexpo/modules/updates/errorrecovery/ErrorRecovery;Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->contentAppearedListener$lambda$1(Lexpo/modules/updates/errorrecovery/ErrorRecovery;Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JeLauZtokQ5cD-_L_vFUl1EtUA0(Lexpo/modules/updates/errorrecovery/ErrorRecovery;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->handleContentAppeared$lambda$0(Lexpo/modules/updates/errorrecovery/ErrorRecovery;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JyyxMSzj2Tgh38E2akidSGvCIHM(Lexpo/modules/updates/errorrecovery/ErrorRecovery;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->registerErrorHandlerImplBridge$lambda$2(Lexpo/modules/updates/errorrecovery/ErrorRecovery;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$biMEy7pDvJUIDQCIyhdd72iFGUo(Lexpo/modules/updates/errorrecovery/ErrorRecovery;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->unregisterErrorHandlerImplBridge$lambda$6(Lexpo/modules/updates/errorrecovery/ErrorRecovery;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/errorrecovery/ErrorRecovery$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/errorrecovery/ErrorRecovery$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->Companion:Lexpo/modules/updates/errorrecovery/ErrorRecovery$Companion;

    .line 165
    const-string v0, "ErrorRecovery"

    sput-object v0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lexpo/modules/updates/logging/UpdatesLogger;Z)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 31
    iput-boolean p2, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->enableBridgelessArchitecture:Z

    .line 33
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "expo-updates-error-recovery"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->handlerThread:Landroid/os/HandlerThread;

    .line 86
    new-instance p1, Lexpo/modules/updates/errorrecovery/ErrorRecovery$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/updates/errorrecovery/ErrorRecovery;)V

    iput-object p1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->contentAppearedListener:Lcom/facebook/react/bridge/ReactMarker$MarkerListener;

    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/updates/logging/UpdatesLogger;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 29
    :cond_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;-><init>(Lexpo/modules/updates/logging/UpdatesLogger;Z)V

    return-void
.end method

.method private static final contentAppearedListener$lambda$1(Lexpo/modules/updates/errorrecovery/ErrorRecovery;Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V
    .locals 0

    .line 87
    sget-object p2, Lcom/facebook/react/bridge/ReactMarkerConstants;->CONTENT_APPEARED:Lcom/facebook/react/bridge/ReactMarkerConstants;

    if-ne p1, p2, :cond_0

    .line 88
    invoke-virtual {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->handleContentAppeared$expo_updates_release()V

    :cond_0
    return-void
.end method

.method private static final handleContentAppeared$lambda$0(Lexpo/modules/updates/errorrecovery/ErrorRecovery;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->unregisterErrorHandler()V

    return-void
.end method

.method private final registerContentAppearedListener()V
    .locals 1

    .line 93
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->contentAppearedListener:Lcom/facebook/react/bridge/ReactMarker$MarkerListener;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->addListener(Lcom/facebook/react/bridge/ReactMarker$MarkerListener;)V

    return-void
.end method

.method private final registerErrorHandler(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->enableBridgelessArchitecture:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->registerErrorHandlerImplBridgeless()V

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->registerErrorHandlerImplBridge(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    :goto_0
    return-void
.end method

.method private final registerErrorHandlerImplBridge(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 3

    .line 113
    instance-of v0, p1, Lcom/facebook/react/devsupport/ReleaseDevSupportManager;

    if-nez v0, :cond_0

    .line 114
    iget-object p1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v0, "Unexpected type of ReactInstanceManager.DevSupportManager. expo-updates error recovery will not behave properly."

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->debug$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V

    return-void

    .line 118
    :cond_0
    new-instance v0, Lexpo/modules/updates/errorrecovery/ErrorRecovery$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/updates/errorrecovery/ErrorRecovery;)V

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 121
    const-string v2, "defaultJSExceptionHandler"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 124
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    const-string v0, "null cannot be cast to non-null type com.facebook.react.bridge.DefaultJSExceptionHandler"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/facebook/react/bridge/DefaultJSExceptionHandler;

    .line 121
    iput-object v2, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->previousExceptionHandler:Lcom/facebook/react/bridge/DefaultJSExceptionHandler;

    .line 127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->weakDevSupportManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static final registerErrorHandlerImplBridge$lambda$2(Lexpo/modules/updates/errorrecovery/ErrorRecovery;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->handleException$expo_updates_release(Ljava/lang/Exception;)V

    return-void
.end method

.method private final registerErrorHandlerImplBridgeless()V
    .locals 1

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->shouldHandleReactInstanceException:Z

    return-void
.end method

.method private final unregisterContentAppearedListener()V
    .locals 1

    .line 97
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->contentAppearedListener:Lcom/facebook/react/bridge/ReactMarker$MarkerListener;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->removeListener(Lcom/facebook/react/bridge/ReactMarker$MarkerListener;)V

    return-void
.end method

.method private final unregisterErrorHandler()V
    .locals 1

    .line 131
    iget-boolean v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->enableBridgelessArchitecture:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->unregisterErrorHandlerImplBridgeless()V

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->unregisterErrorHandlerImplBridge()V

    :goto_0
    return-void
.end method

.method private final unregisterErrorHandlerImplBridge()V
    .locals 4

    .line 143
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->weakDevSupportManager:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    if-eqz v0, :cond_2

    .line 144
    instance-of v1, v0, Lcom/facebook/react/devsupport/ReleaseDevSupportManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 145
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v1, "Unexpected type of ReactInstanceManager.DevSupportManager. expo-updates could not unregister its error handler"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->debug$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V

    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->previousExceptionHandler:Lcom/facebook/react/bridge/DefaultJSExceptionHandler;

    if-nez v1, :cond_1

    return-void

    .line 152
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 153
    const-string v3, "defaultJSExceptionHandler"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 155
    iget-object v3, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->previousExceptionHandler:Lcom/facebook/react/bridge/DefaultJSExceptionHandler;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    iput-object v2, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->weakDevSupportManager:Ljava/lang/ref/WeakReference;

    .line 161
    :cond_2
    invoke-virtual {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->getHandler$expo_updates_release()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lexpo/modules/updates/errorrecovery/ErrorRecovery$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery$$ExternalSyntheticLambda3;-><init>(Lexpo/modules/updates/errorrecovery/ErrorRecovery;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final unregisterErrorHandlerImplBridge$lambda$6(Lexpo/modules/updates/errorrecovery/ErrorRecovery;)V
    .locals 0

    .line 161
    iget-object p0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method private final unregisterErrorHandlerImplBridgeless()V
    .locals 1

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->shouldHandleReactInstanceException:Z

    return-void
.end method


# virtual methods
.method public final getHandler$expo_updates_release()Landroid/os/Handler;
    .locals 1

    .line 34
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "handler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHandlerThread$expo_updates_release()Landroid/os/HandlerThread;
    .locals 1

    .line 33
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->handlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public final handleContentAppeared$expo_updates_release()V
    .locals 4

    .line 73
    invoke-virtual {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->getHandler$expo_updates_release()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->getHandler$expo_updates_release()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->unregisterContentAppearedListener()V

    .line 83
    invoke-virtual {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->getHandler$expo_updates_release()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lexpo/modules/updates/errorrecovery/ErrorRecovery$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/updates/errorrecovery/ErrorRecovery;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final handleException$expo_updates_release(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ErrorRecovery: exception encountered: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->Unknown:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 69
    invoke-virtual {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->getHandler$expo_updates_release()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->getHandler$expo_updates_release()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final initialize(Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;)V
    .locals 3

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;

    iget-object v1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "getLooper(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-direct {v0, v1, p1, v2}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;-><init>(Landroid/os/Looper;Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;Lexpo/modules/updates/logging/UpdatesLogger;)V

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->setHandler$expo_updates_release(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public final notifyNewRemoteLoadStatus(Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V
    .locals 4

    const-string v0, "newStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ErrorRecovery: remote load status changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->info$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->getHandler$expo_updates_release()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->getHandler$expo_updates_release()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onReactInstanceException$expo_updates_release(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-boolean v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->shouldHandleReactInstanceException:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->handleException$expo_updates_release(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final setHandler$expo_updates_release(Landroid/os/Handler;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->handler:Landroid/os/Handler;

    return-void
.end method

.method public final startMonitoring(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 1

    const-string v0, "devSupportManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->registerContentAppearedListener()V

    .line 49
    invoke-direct {p0, p1}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->registerErrorHandler(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    return-void
.end method
