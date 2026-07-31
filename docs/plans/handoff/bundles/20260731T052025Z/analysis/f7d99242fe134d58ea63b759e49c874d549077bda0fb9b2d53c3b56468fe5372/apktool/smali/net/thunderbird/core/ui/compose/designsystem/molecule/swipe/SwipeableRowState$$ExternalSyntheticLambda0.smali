.class public final synthetic Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

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
    .locals 4

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->layoutWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    cmpg-float v2, v2, v1

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getActiveBehaviour$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p0, v3}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getPercentageThreshold(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;)F

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    mul-float/2addr v0, p0

    .line 51
    div-float/2addr v2, v0

    .line 52
    const/high16 p0, 0x3f800000    # 1.0f

    .line 53
    .line 54
    invoke-static {v2, v1, p0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :pswitch_0
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->swipeDirection$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_1
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->pendingOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    cmpg-float v0, v0, v1

    .line 79
    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    :goto_1
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;->Settled:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    cmpl-float p0, p0, v1

    .line 101
    .line 102
    if-lez p0, :cond_3

    .line 103
    .line 104
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;->StartToEnd:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;->EndToStart:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 108
    .line 109
    :goto_2
    return-object p0

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
