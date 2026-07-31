.class public final Landroidx/customview/widget/ViewDragHelper$3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic this$0:Landroidx/customview/widget/ViewDragHelper;


# direct methods
.method public constructor <init>(Landroidx/customview/widget/ViewDragHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper$3;->this$0:Landroidx/customview/widget/ViewDragHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/customview/widget/ViewDragHelper$3;->this$0:Landroidx/customview/widget/ViewDragHelper;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/customview/widget/ViewDragHelper;->mInterpolator:Landroidx/viewpager/widget/ViewPager$2;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager$2;->getInterpolation(F)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
