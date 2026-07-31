.class public final Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/views/ObservableWebView$OnContentHeightChangedListener;


# instance fields
.field public stagedScrollY:I

.field public final synthetic this$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onContentHeightChanged(I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->stagedScrollY:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    int-to-float p1, p1

    .line 6
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 7
    .line 8
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 27
    .line 28
    mul-float/2addr p1, v0

    .line 29
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    int-to-float v1, v1

    .line 40
    sub-float/2addr p1, v1

    .line 41
    iget v1, p0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->stagedScrollY:I

    .line 42
    .line 43
    int-to-float v1, v1

    .line 44
    cmpl-float p1, p1, v1

    .line 45
    .line 46
    if-lez p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget v0, p0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->stagedScrollY:I

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollY(I)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->stagedScrollY:I

    .line 59
    .line 60
    :cond_0
    return-void
.end method
