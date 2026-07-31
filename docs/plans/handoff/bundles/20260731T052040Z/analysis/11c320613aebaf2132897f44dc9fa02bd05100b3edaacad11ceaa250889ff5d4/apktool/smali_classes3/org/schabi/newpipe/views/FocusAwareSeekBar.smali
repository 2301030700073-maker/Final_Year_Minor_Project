.class public final Lorg/schabi/newpipe/views/FocusAwareSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public listener:Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;

.field public final touchModeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field public treeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/schabi/newpipe/views/FocusAwareSeekBar$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/views/FocusAwareSeekBar$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/FocusAwareSeekBar;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->touchModeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance p1, Lorg/schabi/newpipe/views/FocusAwareSeekBar$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/views/FocusAwareSeekBar$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/FocusAwareSeekBar;)V

    iput-object p1, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->touchModeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance p1, Lorg/schabi/newpipe/views/FocusAwareSeekBar$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/views/FocusAwareSeekBar$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/FocusAwareSeekBar;)V

    iput-object p1, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->touchModeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/SeekBar;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->treeObserver:Landroid/view/ViewTreeObserver;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->touchModeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->treeObserver:Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->treeObserver:Landroid/view/ViewTreeObserver;

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->treeObserver:Landroid/view/ViewTreeObserver;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->touchModeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->treeObserver:Landroid/view/ViewTreeObserver;

    .line 26
    .line 27
    invoke-super {p0}, Landroid/widget/SeekBar;->onDetachedFromWindow()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SeekBar;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->listener:Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-boolean p2, p1, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->isSeeking:Z

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-boolean v0, Lorg/schabi/newpipe/util/DeviceUtils;->SAMSUNG:Z

    .line 8
    .line 9
    const/16 v0, 0x17

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x3e

    .line 14
    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x42

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    const/16 v0, 0xa0

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->listener:Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-boolean v1, v0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->isSeeking:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;-><init>(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 8
    .line 9
    .line 10
    move-object p1, v0

    .line 11
    :goto_0
    iput-object p1, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->listener:Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;

    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
