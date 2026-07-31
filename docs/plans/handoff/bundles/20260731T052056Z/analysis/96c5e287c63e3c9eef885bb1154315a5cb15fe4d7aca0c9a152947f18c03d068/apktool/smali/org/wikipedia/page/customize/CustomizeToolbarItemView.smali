.class public final Lorg/wikipedia/page/customize/CustomizeToolbarItemView;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public binding:Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;


# virtual methods
.method public final setDragHandleEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/customize/CustomizeToolbarItemView;->binding:Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;->dragHandle:Landroid/widget/ImageView;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 p1, 0x8

    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setDragHandleTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/customize/CustomizeToolbarItemView;->binding:Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;->dragHandle:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
