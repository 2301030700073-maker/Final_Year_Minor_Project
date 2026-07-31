.class public final synthetic Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 9
    .line 10
    sub-int/2addr p4, p2

    .line 11
    sub-int/2addr p8, p6

    .line 12
    if-ne p4, p8, :cond_0

    .line 13
    .line 14
    sub-int/2addr p5, p3

    .line 15
    sub-int/2addr p9, p7

    .line 16
    if-eq p5, p9, :cond_1

    .line 17
    .line 18
    :cond_0
    new-instance p2, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    const/16 p3, 0xd

    .line 21
    .line 22
    invoke-direct {p2, p3, p0}, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void

    .line 29
    :pswitch_0
    check-cast p0, Landroidx/camera/view/PreviewView;

    .line 30
    .line 31
    sub-int/2addr p4, p2

    .line 32
    sub-int/2addr p8, p6

    .line 33
    if-ne p4, p8, :cond_2

    .line 34
    .line 35
    sub-int/2addr p5, p3

    .line 36
    sub-int/2addr p9, p7

    .line 37
    if-eq p5, p9, :cond_3

    .line 38
    .line 39
    :cond_2
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->redrawPreview()V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getViewPort()Landroidx/camera/core/ViewPort;

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
