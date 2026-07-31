.class public Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "RNSentryReactFragmentLifecycleTracer.java"


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final emitNewFrameEvent:Ljava/lang/Runnable;

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method static bridge synthetic -$$Nest$fgetbuildInfoProvider(Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;)Lio/sentry/android/core/BuildInfoProvider;
    .locals 0

    iget-object p0, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    return-object p0
.end method

.method public constructor <init>(Lio/sentry/android/core/BuildInfoProvider;Ljava/lang/Runnable;Lio/sentry/ILogger;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    .line 32
    iput-object p1, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 33
    iput-object p2, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;->emitNewFrameEvent:Ljava/lang/Runnable;

    .line 34
    iput-object p3, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;->logger:Lio/sentry/ILogger;

    return-void
.end method

.method private static getEventDispatcherForReactTag(Landroid/view/View;I)Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getReactContext(Landroid/view/View;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object p0

    .line 102
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.swmansion.rnscreens.ScreenStackFragment"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 44
    iget-object p1, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;->logger:Lio/sentry/ILogger;

    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p4, "Fragment is not a ScreenStackFragment, won\'t listen for the first draw."

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p1, p3, p4, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 50
    :cond_0
    instance-of p1, p3, Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    .line 51
    iget-object p1, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;->logger:Lio/sentry/ILogger;

    sget-object p3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p4, "Fragment view is not a ViewGroup, won\'t listen for the first draw."

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p1, p3, p4, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 57
    :cond_1
    move-object p1, p3

    check-cast p1, Landroid/view/ViewGroup;

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-nez p4, :cond_2

    .line 59
    iget-object p1, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;->logger:Lio/sentry/ILogger;

    sget-object p3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p4, "Fragment view has no children, won\'t listen for the first draw."

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p1, p3, p4, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 64
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    instance-of p4, p4, Lcom/facebook/react/bridge/ReactContext;

    if-nez p4, :cond_3

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p4

    const/4 v0, -0x1

    if-ne p4, v0, :cond_4

    .line 74
    iget-object p1, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;->logger:Lio/sentry/ILogger;

    sget-object p3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p4, "Screen has no id, won\'t listen for the first draw."

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p1, p3, p4, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 79
    :cond_4
    invoke-static {p1, p4}, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;->getEventDispatcherForReactTag(Landroid/view/View;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    if-nez p1, :cond_5

    .line 81
    iget-object p1, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;->logger:Lio/sentry/ILogger;

    sget-object p3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p4, "Screen has no event dispatcher, won\'t listen for the first draw."

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p1, p3, p4, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 86
    :cond_5
    iget-object p2, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;->emitNewFrameEvent:Ljava/lang/Runnable;

    .line 87
    new-instance p4, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer$1;

    invoke-direct {p4, p0, p1, p3, p2}, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer$1;-><init>(Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;Lcom/facebook/react/uimanager/events/EventDispatcher;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-interface {p1, p4}, Lcom/facebook/react/uimanager/events/EventDispatcher;->addListener(Lcom/facebook/react/uimanager/events/EventDispatcherListener;)V

    return-void

    .line 66
    :cond_6
    :goto_0
    iget-object p1, p0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;->logger:Lio/sentry/ILogger;

    sget-object p3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p4, "Fragment view has no ReactContext, won\'t listen for the first draw."

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p1, p3, p4, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
