.class public final Lcom/facebook/react/bridge/ReactBridge;
.super Ljava/lang/Object;
.source "ReactBridge.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u00058FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000c\u0010\u0003\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u00058FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0010\u0010\u0003\u001a\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u00088GX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0013\u0010\u0003\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/facebook/react/bridge/ReactBridge;",
        "",
        "<init>",
        "()V",
        "_loadStartTime",
        "",
        "_loadEndTime",
        "_didInit",
        "",
        "staticInit",
        "",
        "loadStartTime",
        "getLoadStartTime$annotations",
        "getLoadStartTime",
        "()J",
        "loadEndTime",
        "getLoadEndTime$annotations",
        "getLoadEndTime",
        "initialized",
        "isInitialized$annotations",
        "isInitialized",
        "()Z",
        "ReactAndroid_release"
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
.field public static final INSTANCE:Lcom/facebook/react/bridge/ReactBridge;

.field private static volatile _didInit:Z

.field private static volatile _loadEndTime:J

.field private static volatile _loadStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/bridge/ReactBridge;

    invoke-direct {v0}, Lcom/facebook/react/bridge/ReactBridge;-><init>()V

    sput-object v0, Lcom/facebook/react/bridge/ReactBridge;->INSTANCE:Lcom/facebook/react/bridge/ReactBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLoadEndTime()J
    .locals 2

    .line 43
    sget-wide v0, Lcom/facebook/react/bridge/ReactBridge;->_loadEndTime:J

    return-wide v0
.end method

.method public static synthetic getLoadEndTime$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getLoadStartTime()J
    .locals 2

    .line 39
    sget-wide v0, Lcom/facebook/react/bridge/ReactBridge;->_loadStartTime:J

    return-wide v0
.end method

.method public static synthetic getLoadStartTime$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final isInitialized()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/facebook/react/bridge/ReactBridge;->_didInit:Z

    return v0
.end method

.method public static synthetic isInitialized$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final declared-synchronized staticInit()V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/react/bridge/ReactBridge;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-boolean v1, Lcom/facebook/react/bridge/ReactBridge;->_didInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 24
    monitor-exit v0

    return-void

    .line 26
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/facebook/react/bridge/ReactBridge;->_loadStartTime:J

    .line 28
    const-string v1, "ReactBridge.staticInit::load:reactnativejni"

    const-wide/16 v2, 0x0

    .line 27
    invoke-static {v2, v3, v1}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 29
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->LOAD_REACT_NATIVE_SO_FILE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 30
    const-string v1, "reactnativejni"

    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 31
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->LOAD_REACT_NATIVE_SO_FILE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 32
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/facebook/react/bridge/ReactBridge;->_loadEndTime:J

    const/4 v1, 0x1

    .line 34
    sput-boolean v1, Lcom/facebook/react/bridge/ReactBridge;->_didInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
