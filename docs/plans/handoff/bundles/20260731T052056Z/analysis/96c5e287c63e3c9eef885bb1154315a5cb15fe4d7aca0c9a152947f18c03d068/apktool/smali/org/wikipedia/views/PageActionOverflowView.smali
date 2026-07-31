.class public final Lorg/wikipedia/views/PageActionOverflowView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public binding:Lokhttp3/MultipartBody$Builder;

.field public callback:Lorg/wikipedia/page/action/PageActionItem$Callback;

.field public popupWindowHost:Landroid/widget/PopupWindow;


# virtual methods
.method public final dismissPopupWindowHost()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/PageActionOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/wikipedia/views/PageActionOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final getCallback()Lorg/wikipedia/page/action/PageActionItem$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/PageActionOverflowView;->callback:Lorg/wikipedia/page/action/PageActionItem$Callback;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "callback"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final setCallback(Lorg/wikipedia/page/action/PageActionItem$Callback;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/views/PageActionOverflowView;->callback:Lorg/wikipedia/page/action/PageActionItem$Callback;

    .line 5
    .line 6
    return-void
.end method
