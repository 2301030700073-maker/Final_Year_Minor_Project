.class public Lcom/facebook/react/devsupport/ReleaseDevSupportManager;
.super Ljava/lang/Object;
.source "ReleaseDevSupportManager.kt"

# interfaces
.implements Lcom/facebook/react/devsupport/interfaces/DevSupportManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001c\u0010\u000c\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J$\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010\u0018\u001a\u00020\u00072\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0016H\u0016J\u0008\u0010\u001a\u001a\u00020\u0007H\u0016J\u0008\u0010\u001b\u001a\u00020\u0007H\u0016J\u0008\u0010\u001c\u001a\u00020\u0007H\u0016J\u0008\u0010\u001d\u001a\u00020\u0007H\u0016J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020 H\u0016J\u0008\u0010#\u001a\u00020\u0007H\u0016J\u0010\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u000204H\u0016J\u0010\u00105\u001a\u00020\u00072\u0006\u00103\u001a\u000204H\u0016J\u0008\u0010=\u001a\u00020 H\u0016J\u0008\u0010>\u001a\u00020\u0007H\u0016J\u0008\u0010?\u001a\u00020\u0007H\u0016J\u0018\u0010@\u001a\u00020\u00072\u0006\u0010A\u001a\u00020\t2\u0006\u0010B\u001a\u00020CH\u0016J\u0018\u0010D\u001a\u00020\u00072\u0006\u0010E\u001a\u00020\t2\u0006\u0010B\u001a\u00020FH\u0016J\u0010\u0010G\u001a\u00020\u00072\u0006\u0010B\u001a\u00020HH\u0016J\u001c\u0010I\u001a\u0004\u0018\u00010J2\u0006\u0010K\u001a\u00020\t2\u0008\u0010L\u001a\u0004\u0018\u00010JH\u0016J\u0012\u0010[\u001a\u00020\u00072\u0008\u0010\\\u001a\u0004\u0018\u00010]H\u0016J8\u0010^\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020Q0P\u0018\u00010_2\u001a\u0010`\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020Q0P\u0018\u00010_H\u0016J\u0012\u0010a\u001a\u00020\u00072\u0008\u0010b\u001a\u0004\u0018\u00010cH\u0016J\u0014\u0010d\u001a\u00020\u00072\n\u0010\n\u001a\u00060ej\u0002`fH\u0016J\u0014\u0010n\u001a\u0004\u0018\u00010o2\u0008\u0010p\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010q\u001a\u00020\u0007H\u0016J\u0018\u0010r\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010s\u001a\u00020tH\u0016J\u0008\u0010u\u001a\u00020\u0007H\u0016J\u0018\u0010v\u001a\u00020\u00072\u0006\u0010w\u001a\u00020\t2\u0006\u0010x\u001a\u00020\tH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010%\u001a\u00020 2\u0006\u0010$\u001a\u00020 8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u0016\u0010*\u001a\u0004\u0018\u00010+8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u0016\u0010.\u001a\u0004\u0018\u00010/8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u0016\u00106\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R\u0016\u00109\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008:\u00108R\u0016\u0010;\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u00108R\u0016\u0010M\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u00108R\u001c\u0010O\u001a\n\u0012\u0004\u0012\u00020Q\u0018\u00010P8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008R\u0010SR\u0016\u0010T\u001a\u0004\u0018\u00010U8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008V\u0010WR\u0014\u0010X\u001a\u00020\u0014X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u0010ZR\u0016\u0010g\u001a\u0004\u0018\u00010h8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010jR\u0016\u0010k\u001a\u0004\u0018\u0001048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010m\u00a8\u0006y"
    }
    d2 = {
        "Lcom/facebook/react/devsupport/ReleaseDevSupportManager;",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
        "<init>",
        "()V",
        "defaultJSExceptionHandler",
        "Lcom/facebook/react/bridge/JSExceptionHandler;",
        "showNewJavaError",
        "",
        "message",
        "",
        "e",
        "",
        "addCustomDevOption",
        "optionName",
        "optionHandler",
        "Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;",
        "showNewJSError",
        "details",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "errorCookie",
        "",
        "createRootView",
        "Landroid/view/View;",
        "appKey",
        "destroyRootView",
        "rootView",
        "hideRedboxDialog",
        "showDevOptionsDialog",
        "startInspector",
        "stopInspector",
        "setHotModuleReplacementEnabled",
        "isHotModuleReplacementEnabled",
        "",
        "setFpsDebugEnabled",
        "isFpsDebugEnabled",
        "toggleElementInspector",
        "isDevSupportEnabled",
        "devSupportEnabled",
        "getDevSupportEnabled",
        "()Z",
        "setDevSupportEnabled",
        "(Z)V",
        "devSettings",
        "Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;",
        "getDevSettings",
        "()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;",
        "redBoxHandler",
        "Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;",
        "getRedBoxHandler",
        "()Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;",
        "onNewReactContextCreated",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "onReactInstanceDestroyed",
        "sourceMapUrl",
        "getSourceMapUrl",
        "()Ljava/lang/String;",
        "sourceUrl",
        "getSourceUrl",
        "downloadedJSBundleFile",
        "getDownloadedJSBundleFile",
        "hasUpToDateJSBundleInCache",
        "reloadSettings",
        "handleReloadJS",
        "reloadJSFromServer",
        "bundleURL",
        "callback",
        "Lcom/facebook/react/devsupport/interfaces/BundleLoadCallback;",
        "loadSplitBundleFromServer",
        "bundlePath",
        "Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;",
        "isPackagerRunning",
        "Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;",
        "downloadBundleResourceFromUrlSync",
        "Ljava/io/File;",
        "resourceURL",
        "outputFile",
        "lastErrorTitle",
        "getLastErrorTitle",
        "lastErrorStack",
        "",
        "Lcom/facebook/react/devsupport/interfaces/StackFrame;",
        "getLastErrorStack",
        "()[Lcom/facebook/react/devsupport/interfaces/StackFrame;",
        "lastErrorType",
        "Lcom/facebook/react/devsupport/interfaces/ErrorType;",
        "getLastErrorType",
        "()Lcom/facebook/react/devsupport/interfaces/ErrorType;",
        "lastErrorCookie",
        "getLastErrorCookie",
        "()I",
        "registerErrorCustomizer",
        "errorCustomizer",
        "Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;",
        "processErrorCustomizers",
        "Landroid/util/Pair;",
        "errorInfo",
        "setPackagerLocationCustomizer",
        "packagerLocationCustomizer",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;",
        "handleException",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "currentActivity",
        "Landroid/app/Activity;",
        "getCurrentActivity",
        "()Landroid/app/Activity;",
        "currentReactContext",
        "getCurrentReactContext",
        "()Lcom/facebook/react/bridge/ReactContext;",
        "createSurfaceDelegate",
        "Lcom/facebook/react/common/SurfaceDelegate;",
        "moduleName",
        "openDebugger",
        "showPausedInDebuggerOverlay",
        "listener",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PausedInDebuggerOverlayCommandListener;",
        "hidePausedInDebuggerOverlay",
        "setAdditionalOptionForPackager",
        "name",
        "value",
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


# instance fields
.field private final defaultJSExceptionHandler:Lcom/facebook/react/bridge/JSExceptionHandler;

.field private final lastErrorCookie:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/facebook/react/bridge/DefaultJSExceptionHandler;

    invoke-direct {v0}, Lcom/facebook/react/bridge/DefaultJSExceptionHandler;-><init>()V

    check-cast v0, Lcom/facebook/react/bridge/JSExceptionHandler;

    iput-object v0, p0, Lcom/facebook/react/devsupport/ReleaseDevSupportManager;->defaultJSExceptionHandler:Lcom/facebook/react/bridge/JSExceptionHandler;

    return-void
.end method


# virtual methods
.method public addCustomDevOption(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V
    .locals 0

    return-void
.end method

.method public createRootView(Ljava/lang/String;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSurfaceDelegate(Ljava/lang/String;)Lcom/facebook/react/common/SurfaceDelegate;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public destroyRootView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public downloadBundleResourceFromUrlSync(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 0

    const-string/jumbo p2, "resourceURL"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevSupportEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadedJSBundleFile()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastErrorCookie()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/facebook/react/devsupport/ReleaseDevSupportManager;->lastErrorCookie:I

    return v0
.end method

.method public getLastErrorStack()[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastErrorTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastErrorType()Lcom/facebook/react/devsupport/interfaces/ErrorType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRedBoxHandler()Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceMapUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleException(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/facebook/react/devsupport/ReleaseDevSupportManager;->defaultJSExceptionHandler:Lcom/facebook/react/bridge/JSExceptionHandler;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/JSExceptionHandler;->handleException(Ljava/lang/Exception;)V

    return-void
.end method

.method public handleReloadJS()V
    .locals 0

    return-void
.end method

.method public hasUpToDateJSBundleInCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hidePausedInDebuggerOverlay()V
    .locals 0

    return-void
.end method

.method public hideRedboxDialog()V
    .locals 0

    return-void
.end method

.method public isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 110
    invoke-interface {p1, v0}, Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;->onPackagerStatusFetched(Z)V

    return-void
.end method

.method public loadSplitBundleFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V
    .locals 1

    const-string v0, "bundlePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onNewReactContextCreated(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReactInstanceDestroyed(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public openDebugger()V
    .locals 0

    return-void
.end method

.method public processErrorCustomizers(Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Lcom/facebook/react/devsupport/interfaces/StackFrame;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Lcom/facebook/react/devsupport/interfaces/StackFrame;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public registerErrorCustomizer(Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;)V
    .locals 0

    return-void
.end method

.method public reloadJSFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/BundleLoadCallback;)V
    .locals 1

    const-string v0, "bundleURL"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public reloadSettings()V
    .locals 0

    return-void
.end method

.method public setAdditionalOptionForPackager(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setDevSupportEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setFpsDebugEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setHotModuleReplacementEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setPackagerLocationCustomizer(Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;)V
    .locals 0

    return-void
.end method

.method public showDevOptionsDialog()V
    .locals 0

    return-void
.end method

.method public showNewJSError(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;I)V
    .locals 0

    return-void
.end method

.method public showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public showPausedInDebuggerOverlay(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PausedInDebuggerOverlayCommandListener;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "listener"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public startInspector()V
    .locals 0

    return-void
.end method

.method public stopInspector()V
    .locals 0

    return-void
.end method

.method public toggleElementInspector()V
    .locals 0

    return-void
.end method
