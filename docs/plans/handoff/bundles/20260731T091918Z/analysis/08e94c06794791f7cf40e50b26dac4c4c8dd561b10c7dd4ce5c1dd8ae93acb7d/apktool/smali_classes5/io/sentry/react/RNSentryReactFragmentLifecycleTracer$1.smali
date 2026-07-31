.class Lio/sentry/react/RNSentryReactFragmentLifecycleTracer$1;
.super Ljava/lang/Object;
.source "RNSentryReactFragmentLifecycleTracer.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/EventDispatcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;->onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;

.field final synthetic val$emitNewFrameEvent:Ljava/lang/Runnable;

.field final synthetic val$eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;Lcom/facebook/react/uimanager/events/EventDispatcher;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer$1;->this$0:Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;

    iput-object p2, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer$1;->val$eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iput-object p3, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer$1;->val$v:Landroid/view/View;

    iput-object p4, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer$1;->val$emitNewFrameEvent:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventDispatch(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 2

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.swmansion.rnscreens.events.ScreenAppearEvent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer$1;->val$eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    invoke-interface {p1, p0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->removeListener(Lcom/facebook/react/uimanager/events/EventDispatcherListener;)V

    .line 94
    iget-object p1, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer$1;->val$v:Landroid/view/View;

    iget-object v0, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer$1;->val$emitNewFrameEvent:Ljava/lang/Runnable;

    iget-object v1, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer$1;->this$0:Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;

    invoke-static {v1}, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;->-$$Nest$fgetbuildInfoProvider(Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;)Lio/sentry/android/core/BuildInfoProvider;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->registerForNextDraw(Landroid/view/View;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V

    :cond_0
    return-void
.end method
