.class public Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "LottieAnimationViewManagerDelegate.java"


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
        "Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface<",
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

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    return-void
.end method


# virtual methods
.method public receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "reset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "pause"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_0

    :sswitch_3
    const-string v0, "resume"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 96
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    invoke-interface {p2, p1}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->reset(Landroid/view/View;)V

    goto :goto_1

    .line 99
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    invoke-interface {p2, p1}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->pause(Landroid/view/View;)V

    goto :goto_1

    .line 93
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v0

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p3

    invoke-interface {p2, p1, v0, p3}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->play(Landroid/view/View;II)V

    goto :goto_1

    .line 102
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    invoke-interface {p2, p1}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->resume(Landroid/view/View;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b237d3 -> :sswitch_3
        0x348b34 -> :sswitch_2
        0x65825f6 -> :sswitch_1
        0x6761d4f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "enableMergePathsAndroidForKitKatAndAbove"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "resizeMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "autoPlay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "colorFilters"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "renderMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "enableSafeModeAndroid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "hardwareAccelerationAndroid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "speed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "dummy"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "loop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "sourceDotLottieURI"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "textFiltersAndroid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_c
    const-string v0, "progress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_d
    const-string v0, "cacheComposition"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_e
    const-string v0, "sourceName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_f
    const-string v0, "sourceJson"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_10
    const-string v0, "textFiltersIOS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_11
    const-string v0, "sourceURL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_12
    const-string v0, "imageAssetsFolder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    move v2, v1

    :goto_0
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 61
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    if-nez p3, :cond_13

    goto :goto_1

    :cond_13
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setEnableMergePathsAndroidForKitKatAndAbove(Landroid/view/View;Z)V

    goto/16 :goto_10

    .line 28
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    if-nez p3, :cond_14

    goto :goto_2

    :cond_14
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setResizeMode(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 58
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    if-nez p3, :cond_15

    goto :goto_3

    :cond_15
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_3
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setAutoPlay(Landroid/view/View;Z)V

    goto/16 :goto_10

    .line 73
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setColorFilters(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_10

    .line 31
    :pswitch_4
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    if-nez p3, :cond_16

    goto :goto_4

    :cond_16
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_4
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setRenderMode(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 64
    :pswitch_5
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    if-nez p3, :cond_17

    goto :goto_5

    :cond_17
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_5
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setEnableSafeModeAndroid(Landroid/view/View;Z)V

    goto/16 :goto_10

    .line 67
    :pswitch_6
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    if-nez p3, :cond_18

    goto :goto_6

    :cond_18
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_6
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setHardwareAccelerationAndroid(Landroid/view/View;Z)V

    goto/16 :goto_10

    .line 52
    :pswitch_7
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    if-nez p3, :cond_19

    const-wide/16 v0, 0x0

    goto :goto_7

    :cond_19
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_7
    invoke-interface {p2, p1, v0, v1}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setSpeed(Landroid/view/View;D)V

    goto/16 :goto_10

    .line 76
    :pswitch_8
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setDummy(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_10

    .line 55
    :pswitch_9
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    if-nez p3, :cond_1a

    goto :goto_8

    :cond_1a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_8
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setLoop(Landroid/view/View;Z)V

    goto/16 :goto_10

    .line 43
    :pswitch_a
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    if-nez p3, :cond_1b

    goto :goto_9

    :cond_1b
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_9
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setSourceDotLottieURI(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 79
    :pswitch_b
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setTextFiltersAndroid(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_10

    .line 49
    :pswitch_c
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    if-nez p3, :cond_1c

    const/4 p3, 0x0

    goto :goto_a

    :cond_1c
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result p3

    :goto_a
    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setProgress(Landroid/view/View;F)V

    goto :goto_10

    .line 70
    :pswitch_d
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    if-nez p3, :cond_1d

    goto :goto_b

    :cond_1d
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_b
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setCacheComposition(Landroid/view/View;Z)V

    goto :goto_10

    .line 34
    :pswitch_e
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    if-nez p3, :cond_1e

    goto :goto_c

    :cond_1e
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_c
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setSourceName(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_10

    .line 37
    :pswitch_f
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    if-nez p3, :cond_1f

    goto :goto_d

    :cond_1f
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_d
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setSourceJson(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_10

    .line 82
    :pswitch_10
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setTextFiltersIOS(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_10

    .line 40
    :pswitch_11
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    if-nez p3, :cond_20

    goto :goto_e

    :cond_20
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_e
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setSourceURL(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_10

    .line 46
    :pswitch_12
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;

    if-nez p3, :cond_21

    goto :goto_f

    :cond_21
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_f
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;->setImageAssetsFolder(Landroid/view/View;Ljava/lang/String;)V

    :goto_10
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x731ba534 -> :sswitch_12
        -0x653bd8ac -> :sswitch_11
        -0x609b00e1 -> :sswitch_10
        -0x4243bc5d -> :sswitch_f
        -0x42422eba -> :sswitch_e
        -0x3ff56338 -> :sswitch_d
        -0x3bab3dd3 -> :sswitch_c
        -0x18a4377f -> :sswitch_b
        -0xc29f641 -> :sswitch_a
        0x32c6a4 -> :sswitch_9
        0x5b804a8 -> :sswitch_8
        0x6890047 -> :sswitch_7
        0x17c972c7 -> :sswitch_6
        0x470d217c -> :sswitch_5
        0x47293459 -> :sswitch_4
        0x54138718 -> :sswitch_3
        0x55bf6d83 -> :sswitch_2
        0x7a2cd077 -> :sswitch_1
        0x7dd7e061 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
