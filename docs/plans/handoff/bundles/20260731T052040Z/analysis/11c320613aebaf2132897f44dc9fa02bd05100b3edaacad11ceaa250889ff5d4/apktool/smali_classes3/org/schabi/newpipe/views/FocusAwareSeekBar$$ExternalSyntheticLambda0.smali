.class public final synthetic Lorg/schabi/newpipe/views/FocusAwareSeekBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/views/FocusAwareSeekBar;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/views/FocusAwareSeekBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouchModeChanged(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 4
    .line 5
    iget-object p1, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->listener:Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p1, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->isSeeking:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    sget p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->$r8$clinit:I

    .line 18
    .line 19
    return-void
.end method
