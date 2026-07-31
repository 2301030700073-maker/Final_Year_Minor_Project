.class public final Lorg/schabi/newpipe/views/FocusOverlayView$2;
.super Lorg/schabi/newpipe/views/SimpleWindowCallback;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic val$overlay:Lorg/schabi/newpipe/views/FocusOverlayView;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;Lorg/schabi/newpipe/views/FocusOverlayView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lorg/schabi/newpipe/views/FocusOverlayView$2;->val$overlay:Lorg/schabi/newpipe/views/FocusOverlayView;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/views/SimpleWindowCallback;-><init>(Landroid/view/Window$Callback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/views/SimpleWindowCallback;->baseCallback:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/views/FocusOverlayView$2;->val$overlay:Lorg/schabi/newpipe/views/FocusOverlayView;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/schabi/newpipe/views/FocusOverlayView;->updateRect()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->animator:Lorg/schabi/newpipe/views/FocusOverlayView$1;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    const-wide/16 v1, 0x64

    .line 23
    .line 24
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 25
    .line 26
    .line 27
    return v0
.end method
