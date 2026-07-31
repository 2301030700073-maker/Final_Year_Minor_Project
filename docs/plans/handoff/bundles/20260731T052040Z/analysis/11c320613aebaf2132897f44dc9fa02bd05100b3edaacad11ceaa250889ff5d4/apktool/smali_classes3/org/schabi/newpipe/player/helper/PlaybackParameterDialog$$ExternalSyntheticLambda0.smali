.class public final synthetic Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdateTempo(D)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdatePitch(D)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    .line 22
    .line 23
    iget-object p2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 24
    .line 25
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->skipSilenceCheckbox:Landroid/widget/CheckBox;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    iget-wide p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialTempo:D

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdateTempo(D)V

    .line 37
    .line 38
    .line 39
    iget-wide p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialPitchPercent:D

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdatePitch(D)V

    .line 42
    .line 43
    .line 44
    iget-boolean p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialSkipSilence:Z

    .line 45
    .line 46
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    .line 47
    .line 48
    iget-object p2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 49
    .line 50
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->skipSilenceCheckbox:Landroid/widget/CheckBox;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
