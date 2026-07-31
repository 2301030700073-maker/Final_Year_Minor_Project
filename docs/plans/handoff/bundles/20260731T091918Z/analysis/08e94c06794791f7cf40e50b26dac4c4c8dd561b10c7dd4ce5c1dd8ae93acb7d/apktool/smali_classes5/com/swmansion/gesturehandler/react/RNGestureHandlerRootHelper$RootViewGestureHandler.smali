.class public final Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;
.super Lcom/swmansion/gesturehandler/core/GestureHandler;
.source "RNGestureHandlerRootHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RootViewGestureHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/core/GestureHandler<",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0080\u0004\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0000R\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0014J\u0008\u0010\n\u001a\u00020\u0006H\u0014\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;",
        "<init>",
        "(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V",
        "onHandle",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "sourceEvent",
        "onCancel",
        "react-native-gesture-handler_release"
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
.field final synthetic this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;


# direct methods
.method public constructor <init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 10

    .line 75
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->access$setShouldIntercept$p(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;Z)V

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-wide v2, v4

    .line 77
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 80
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/react/uimanager/RootView;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/RootView;

    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-virtual {v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/uimanager/RootView;->onChildStartedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->getState()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 65
    iget-object p2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-static {p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->access$getShouldIntercept$p(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->getOrchestrator()Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->isAnyHandlerActive()Z

    move-result p2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->begin()V

    .line 67
    iget-object p2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->access$setShouldIntercept$p(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;Z)V

    .line 69
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->end()V

    :cond_2
    return-void
.end method
