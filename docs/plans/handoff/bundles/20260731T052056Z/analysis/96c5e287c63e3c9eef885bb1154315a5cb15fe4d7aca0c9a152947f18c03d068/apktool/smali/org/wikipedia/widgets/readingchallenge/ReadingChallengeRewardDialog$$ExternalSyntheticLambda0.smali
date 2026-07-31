.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object p0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, p2, 0x3

    .line 22
    .line 23
    if-eq v0, v2, :cond_0

    .line 24
    .line 25
    move v0, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v3

    .line 28
    :goto_0
    and-int/2addr p2, v4

    .line 29
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_5

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 44
    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    if-ne v0, v2, :cond_2

    .line 48
    .line 49
    :cond_1
    new-instance v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda2;

    .line 50
    .line 51
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-nez p2, :cond_3

    .line 68
    .line 69
    if-ne v5, v2, :cond_4

    .line 70
    .line 71
    :cond_3
    new-instance v5, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda2;

    .line 72
    .line 73
    invoke-direct {v5, p0, v4}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 80
    .line 81
    invoke-static {v0, v5, p1, v3}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->RewardScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-object v1

    .line 89
    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    .line 90
    .line 91
    if-eq v0, v2, :cond_6

    .line 92
    .line 93
    move v3, v4

    .line 94
    :cond_6
    and-int/2addr p2, v4

    .line 95
    invoke-virtual {p1, p2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_7

    .line 100
    .line 101
    new-instance p2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda0;

    .line 102
    .line 103
    invoke-direct {p2, p0, v4}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;I)V

    .line 104
    .line 105
    .line 106
    const p0, 0x460eae0b

    .line 107
    .line 108
    .line 109
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    const/16 p2, 0x30

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-static {v0, p0, p1, p2, v4}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 121
    .line 122
    .line 123
    :goto_2
    return-object v1

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
