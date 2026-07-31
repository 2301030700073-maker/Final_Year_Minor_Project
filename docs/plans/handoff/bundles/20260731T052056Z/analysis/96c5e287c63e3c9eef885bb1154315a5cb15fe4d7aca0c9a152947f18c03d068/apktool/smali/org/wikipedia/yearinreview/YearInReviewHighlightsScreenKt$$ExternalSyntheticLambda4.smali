.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;FI)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/yearinreview/YearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lorg/wikipedia/yearinreview/YearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4;->f$1:F

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/yearinreview/YearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4;->f$1:F

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroidx/compose/animation/core/Transition;

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Long;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->startTimeNanos$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;

    .line 23
    .line 24
    if-nez p1, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;->getLongValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    const-wide/high16 v6, -0x8000000000000000L

    .line 31
    .line 32
    cmp-long p1, v4, v6

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;->setLongValue(J)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 40
    .line 41
    iget-object p1, p1, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 44
    .line 45
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;->getLongValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    sub-long/2addr v2, v4

    .line 55
    const/4 p1, 0x0

    .line 56
    cmpg-float p1, v1, p1

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    long-to-double v2, v2

    .line 62
    float-to-double v0, v1

    .line 63
    div-double/2addr v2, v0

    .line 64
    invoke-static {v2, v3}, Lkotlin/UnsignedKt;->roundToLong(D)J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    :goto_0
    invoke-virtual {p0, v2, v3}, Landroidx/compose/animation/core/Transition;->setPlayTimeNanos(J)V

    .line 69
    .line 70
    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 p1, 0x0

    .line 76
    :goto_1
    invoke-virtual {p0, v2, v3, p1}, Landroidx/compose/animation/core/Transition;->onFrame$animation_core(JZ)V

    .line 77
    .line 78
    .line 79
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p0

    .line 82
    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/ScrollState;

    .line 83
    .line 84
    check-cast p1, Landroidx/compose/ui/unit/Density;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Landroidx/compose/foundation/ScrollState;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    int-to-float p0, p0

    .line 96
    mul-float/2addr p0, v1

    .line 97
    float-to-int p0, p0

    .line 98
    int-to-long p0, p0

    .line 99
    const-wide v0, 0xffffffffL

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    and-long/2addr p0, v0

    .line 105
    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    .line 106
    .line 107
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 108
    .line 109
    .line 110
    return-object v0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
