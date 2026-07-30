.class public final Lexpo/modules/video/utils/EventDispatcherUtilsKt;
.super Ljava/lang/Object;
.source "EventDispatcherUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u001a\u000c\u0010\t\u001a\u00020\n*\u00020\u0006H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "dispatchMotionEvent",
        "",
        "Lcom/facebook/react/uimanager/events/EventDispatcher;",
        "view",
        "Landroid/view/View;",
        "event",
        "Landroid/view/MotionEvent;",
        "touchEventCoalescingKeyHelper",
        "Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;",
        "toTouchEventType",
        "Lcom/facebook/react/uimanager/events/TouchEventType;",
        "expo-video_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final dispatchMotionEvent(Lcom/facebook/react/uimanager/events/EventDispatcher;Landroid/view/View;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;)V
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchEventCoalescingKeyHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 18
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/react/uimanager/events/TouchEvent;->Companion:Lcom/facebook/react/uimanager/events/TouchEvent$Companion;

    .line 19
    invoke-static {p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v2

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 21
    invoke-static {p2}, Lexpo/modules/video/utils/EventDispatcherUtilsKt;->toTouchEventType(Landroid/view/MotionEvent;)Lcom/facebook/react/uimanager/events/TouchEventType;

    move-result-object v4

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move-object v5, p2

    move-object v10, p3

    .line 18
    invoke-virtual/range {v1 .. v10}, Lcom/facebook/react/uimanager/events/TouchEvent$Companion;->obtain(IILcom/facebook/react/uimanager/events/TouchEventType;Landroid/view/MotionEvent;JFFLcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;)Lcom/facebook/react/uimanager/events/TouchEvent;

    move-result-object p1

    .line 28
    check-cast p1, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {p0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 31
    const-string p1, "Error dispatching touch event"

    check-cast p0, Ljava/lang/Throwable;

    const-string p2, "EventDispatcherUtils"

    invoke-static {p2, p1, p0}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static final toTouchEventType(Landroid/view/MotionEvent;)Lcom/facebook/react/uimanager/events/TouchEventType;
    .locals 1

    .line 36
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 41
    sget-object p0, Lcom/facebook/react/uimanager/events/TouchEventType;->CANCEL:Lcom/facebook/react/uimanager/events/TouchEventType;

    goto :goto_0

    .line 40
    :cond_0
    sget-object p0, Lcom/facebook/react/uimanager/events/TouchEventType;->CANCEL:Lcom/facebook/react/uimanager/events/TouchEventType;

    goto :goto_0

    .line 39
    :cond_1
    sget-object p0, Lcom/facebook/react/uimanager/events/TouchEventType;->MOVE:Lcom/facebook/react/uimanager/events/TouchEventType;

    goto :goto_0

    .line 38
    :cond_2
    sget-object p0, Lcom/facebook/react/uimanager/events/TouchEventType;->END:Lcom/facebook/react/uimanager/events/TouchEventType;

    goto :goto_0

    .line 37
    :cond_3
    sget-object p0, Lcom/facebook/react/uimanager/events/TouchEventType;->START:Lcom/facebook/react/uimanager/events/TouchEventType;

    :goto_0
    return-object p0
.end method
