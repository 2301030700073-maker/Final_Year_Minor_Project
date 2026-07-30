.class public Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "AutoLayoutViewManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U:",
        "Lcom/facebook/react/uimanager/BaseViewManager<",
        "TT;+",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        ">;:",
        "Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface<",
        "TT;>;>",
        "Lcom/facebook/react/uimanager/BaseViewManagerDelegate<",
        "TT;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/BaseViewManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "windowSize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "renderAheadOffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "horizontal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "scrollOffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "enableInstrumentation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "disableAutoLayout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    const-wide/16 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 32
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface;

    if-nez p3, :cond_6

    goto :goto_1

    :cond_6
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :goto_1
    invoke-interface {p2, p1, v3, v4}, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface;->setWindowSize(Landroid/view/View;D)V

    goto :goto_7

    .line 35
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface;

    if-nez p3, :cond_7

    goto :goto_2

    :cond_7
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :goto_2
    invoke-interface {p2, p1, v3, v4}, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface;->setRenderAheadOffset(Landroid/view/View;D)V

    goto :goto_7

    .line 26
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface;

    if-nez p3, :cond_8

    goto :goto_3

    :cond_8
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_3
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface;->setHorizontal(Landroid/view/View;Z)V

    goto :goto_7

    .line 29
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface;

    if-nez p3, :cond_9

    goto :goto_4

    :cond_9
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :goto_4
    invoke-interface {p2, p1, v3, v4}, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface;->setScrollOffset(Landroid/view/View;D)V

    goto :goto_7

    .line 38
    :pswitch_4
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface;

    if-nez p3, :cond_a

    goto :goto_5

    :cond_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_5
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface;->setEnableInstrumentation(Landroid/view/View;Z)V

    goto :goto_7

    .line 41
    :pswitch_5
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface;

    if-nez p3, :cond_b

    goto :goto_6

    :cond_b
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_6
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface;->setDisableAutoLayout(Landroid/view/View;Z)V

    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x67d9fd3f -> :sswitch_5
        -0x67775495 -> :sswitch_4
        -0x33a4d640 -> :sswitch_3
        0x52b58c24 -> :sswitch_2
        0x65ad9e3e -> :sswitch_1
        0x6f03b811 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
