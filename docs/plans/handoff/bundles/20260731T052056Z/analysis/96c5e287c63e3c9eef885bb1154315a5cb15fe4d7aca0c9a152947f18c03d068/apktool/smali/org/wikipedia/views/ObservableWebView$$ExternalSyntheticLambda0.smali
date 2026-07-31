.class public final synthetic Lorg/wikipedia/views/ObservableWebView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/views/ObservableWebView;

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/views/ObservableWebView;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/views/ObservableWebView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/views/ObservableWebView;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/views/ObservableWebView$$ExternalSyntheticLambda0;->f$2:F

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/views/ObservableWebView$$ExternalSyntheticLambda0;->f$3:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    sget-object v0, Lorg/wikipedia/views/ObservableWebView;->INVALIDATE_EVENT:Lorg/wikipedia/events/WebViewInvalidateEvent;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    const-wide/16 v5, 0x3e8

    .line 12
    .line 13
    add-long/2addr v3, v5

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    iget v6, p0, Lorg/wikipedia/views/ObservableWebView$$ExternalSyntheticLambda0;->f$2:F

    .line 17
    .line 18
    iget v7, p0, Lorg/wikipedia/views/ObservableWebView$$ExternalSyntheticLambda0;->f$3:F

    .line 19
    .line 20
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object p0, p0, Lorg/wikipedia/views/ObservableWebView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/views/ObservableWebView;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method
