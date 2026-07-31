.class public final Lcoil3/size/ViewSizeResolver$size$3$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $preDrawListener:Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;

.field public final synthetic $viewTreeObserver:Landroid/view/ViewTreeObserver;

.field public final synthetic this$0:Lcoil3/size/RealViewSizeResolver;


# direct methods
.method public constructor <init>(Lcoil3/size/RealViewSizeResolver;Landroid/view/ViewTreeObserver;Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->this$0:Lcoil3/size/RealViewSizeResolver;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->$viewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->$preDrawListener:Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->$viewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->$preDrawListener:Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->this$0:Lcoil3/size/RealViewSizeResolver;

    .line 18
    .line 19
    iget-object p0, p0, Lcoil3/size/RealViewSizeResolver;->view:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method
