.class public final Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final delegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public isSeeking:Z


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->delegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->isSeeking:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->isSeeking:Z

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->delegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 20
    .line 21
    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->isSeeking:Z

    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->delegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->isSeeking:Z

    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->delegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
