.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;

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
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object p0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v11, p1

    .line 14
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    and-int/lit8 p2, p1, 0x3

    .line 23
    .line 24
    if-eq p2, v2, :cond_0

    .line 25
    .line 26
    move p2, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move p2, v3

    .line 29
    :goto_0
    and-int/2addr p1, v4

    .line 30
    invoke-virtual {v11, p1, p2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_5

    .line 35
    .line 36
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    if-ne p2, v0, :cond_2

    .line 49
    .line 50
    :cond_1
    new-instance p2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2;

    .line 51
    .line 52
    invoke-direct {p2, p0, v3}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v11, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    check-cast p2, Lkotlin/jvm/functions/Function0;

    .line 59
    .line 60
    const p1, 0x7f120711

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v11}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const p1, 0x7f120710

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v11}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    if-ne v2, v0, :cond_4

    .line 85
    .line 86
    :cond_3
    new-instance v2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2;

    .line 87
    .line 88
    invoke-direct {v2, p0, v4}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    move-object v7, v2

    .line 95
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 96
    .line 97
    new-instance p1, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;

    .line 98
    .line 99
    const/16 v0, 0xe

    .line 100
    .line 101
    invoke-direct {p1, v0, p0, p2}, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    const p0, 0xb9b4cc0

    .line 105
    .line 106
    .line 107
    invoke-static {p0, p1, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    sget-object v10, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->lambda$1819238617:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 112
    .line 113
    const v12, 0x30c00

    .line 114
    .line 115
    .line 116
    const/4 v9, 0x0

    .line 117
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/compose/components/TabsBoxKt;->InstallWidgetScreen(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 122
    .line 123
    .line 124
    :goto_1
    return-object v1

    .line 125
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 126
    .line 127
    check-cast p2, Ljava/lang/Integer;

    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    and-int/lit8 v0, p2, 0x3

    .line 134
    .line 135
    if-eq v0, v2, :cond_6

    .line 136
    .line 137
    move v3, v4

    .line 138
    :cond_6
    and-int/2addr p2, v4

    .line 139
    invoke-virtual {p1, p2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-eqz p2, :cond_7

    .line 144
    .line 145
    new-instance p2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda0;

    .line 146
    .line 147
    invoke-direct {p2, p0, v4}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;I)V

    .line 148
    .line 149
    .line 150
    const p0, 0x3b77ea5d

    .line 151
    .line 152
    .line 153
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    const/16 p2, 0x30

    .line 158
    .line 159
    const/4 v0, 0x0

    .line 160
    invoke-static {v0, p0, p1, p2, v4}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 165
    .line 166
    .line 167
    :goto_2
    return-object v1

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
