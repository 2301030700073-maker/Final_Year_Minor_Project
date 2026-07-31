.class public final synthetic Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda15;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda15;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 4
    .line 5
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchControlModeTabs:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    if-ne p1, v1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, v0

    .line 19
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 20
    .line 21
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchControlModeTabs:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    move v1, v0

    .line 26
    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 30
    .line 31
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchToogleControlModes:Landroid/widget/ImageView;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    const/16 v0, 0xb4

    .line 36
    .line 37
    :cond_2
    invoke-static {v0, p0}, Lnet/newpipe/app/AppKt;->animateRotation(ILandroid/view/View;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
