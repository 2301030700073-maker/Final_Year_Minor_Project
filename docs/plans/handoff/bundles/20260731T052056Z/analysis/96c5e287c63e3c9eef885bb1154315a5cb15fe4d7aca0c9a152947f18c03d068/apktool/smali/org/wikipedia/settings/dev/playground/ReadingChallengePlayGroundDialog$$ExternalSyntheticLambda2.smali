.class public final synthetic Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->scheduleNextWidgetUpdate(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
