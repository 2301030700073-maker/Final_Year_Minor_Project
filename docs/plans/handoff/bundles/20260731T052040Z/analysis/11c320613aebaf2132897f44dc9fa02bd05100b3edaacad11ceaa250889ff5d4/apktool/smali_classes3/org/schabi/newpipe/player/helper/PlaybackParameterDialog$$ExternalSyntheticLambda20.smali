.class public final synthetic Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

.field public final synthetic f$1:Ljava/util/function/DoubleConsumer;

.field public final synthetic f$2:Ljava/util/function/DoubleSupplier;

.field public final synthetic f$3:D


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;->f$1:Ljava/util/function/DoubleConsumer;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;->f$2:Ljava/util/function/DoubleSupplier;

    .line 9
    .line 10
    iput-wide p4, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;->f$3:D

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;->f$2:Ljava/util/function/DoubleSupplier;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const v3, 0x7f130021

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/high16 v4, 0x3e800000    # 0.25f

    .line 25
    .line 26
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    float-to-double v2, v2

    .line 31
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 32
    .line 33
    mul-double/2addr v2, v4

    .line 34
    iget-wide v4, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;->f$3:D

    .line 35
    .line 36
    mul-double/2addr v2, v4

    .line 37
    add-double/2addr v2, v0

    .line 38
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;->f$1:Ljava/util/function/DoubleConsumer;

    .line 39
    .line 40
    invoke-interface {p0, v2, v3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    .line 44
    .line 45
    .line 46
    return-void
.end method
