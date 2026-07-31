.class public final Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final LONG_PRESS_TIME:I

.field public static instance:Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;


# instance fields
.field public isLongPressed:Z

.field public longClickHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->LONG_PRESS_TIME:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->longClickHandler:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    if-nez v0, :cond_6

    .line 20
    .line 21
    :cond_1
    invoke-static {p1, p3}, Landroidx/core/os/BundleKt;->getOffsetForHorizontalLine(Landroid/widget/TextView;Landroid/view/MotionEvent;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const-class v4, Lorg/schabi/newpipe/util/text/LongPressClickableSpan;

    .line 26
    .line 27
    invoke-interface {p2, v3, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, [Lorg/schabi/newpipe/util/text/LongPressClickableSpan;

    .line 32
    .line 33
    array-length v4, v3

    .line 34
    if-eqz v4, :cond_6

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    if-ne v0, v1, :cond_4

    .line 38
    .line 39
    iget-object p2, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->longClickHandler:Landroid/os/Handler;

    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-boolean p2, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->isLongPressed:Z

    .line 47
    .line 48
    if-nez p2, :cond_3

    .line 49
    .line 50
    aget-object p2, v3, p3

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iput-boolean p3, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->isLongPressed:Z

    .line 56
    .line 57
    return v1

    .line 58
    :cond_4
    aget-object v0, v3, p3

    .line 59
    .line 60
    invoke-interface {p2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    aget-object p3, v3, p3

    .line 65
    .line 66
    invoke-interface {p2, p3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    invoke-static {p2, v0, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->longClickHandler:Landroid/os/Handler;

    .line 74
    .line 75
    if-eqz p2, :cond_5

    .line 76
    .line 77
    new-instance p3, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    .line 78
    .line 79
    const/16 v0, 0x12

    .line 80
    .line 81
    invoke-direct {p3, v0, p0, v3, p1}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    sget p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->LONG_PRESS_TIME:I

    .line 85
    .line 86
    int-to-long p0, p0

    .line 87
    invoke-virtual {p2, p3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    .line 89
    .line 90
    :cond_5
    return v1

    .line 91
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    return p0
.end method
