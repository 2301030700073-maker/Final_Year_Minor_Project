.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$3:Z

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$4:Lkotlin/jvm/functions/Function2;

    .line 12
    .line 13
    iput p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$1:I

    .line 14
    .line 15
    iput p5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$2:I

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;IIZLkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    iput p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$1:I

    iput p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$2:I

    iput-boolean p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$3:Z

    iput-object p5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$4:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$1:I

    .line 7
    .line 8
    iget-object v4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$4:Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    iget-object v5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object v6, v5

    .line 16
    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    move-object v8, v4

    .line 19
    check-cast v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 20
    .line 21
    move-object v9, p1

    .line 22
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    check-cast p2, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    or-int/lit8 p1, v3, 0x1

    .line 30
    .line 31
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 32
    .line 33
    .line 34
    move-result v10

    .line 35
    iget-boolean v7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$3:Z

    .line 36
    .line 37
    iget v11, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$2:I

    .line 38
    .line 39
    invoke-static/range {v6 .. v11}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->SettingsSection(Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :pswitch_0
    check-cast v5, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;

    .line 44
    .line 45
    move-object v10, p1

    .line 46
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 47
    .line 48
    check-cast p2, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    and-int/lit8 p2, p1, 0x3

    .line 55
    .line 56
    const/4 v0, 0x2

    .line 57
    if-eq p2, v0, :cond_0

    .line 58
    .line 59
    move p2, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 p2, 0x0

    .line 62
    :goto_0
    and-int/2addr p1, v2

    .line 63
    invoke-virtual {v10, p1, p2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    sget-object p1, Landroidx/glance/GlanceModifier$Companion;->$$INSTANCE:Landroidx/glance/GlanceModifier$Companion;

    .line 70
    .line 71
    invoke-static {p1}, Landroidx/compose/ui/unit/DpKt;->fillMaxWidth(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    new-instance p2, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda2;

    .line 76
    .line 77
    invoke-direct {p2, v3, v5, v0}, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Enum;I)V

    .line 78
    .line 79
    .line 80
    const v3, 0x3c1060c6

    .line 81
    .line 82
    .line 83
    invoke-static {v3, p2, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    const/16 v11, 0xc00

    .line 88
    .line 89
    const/4 v12, 0x4

    .line 90
    const/4 v7, 0x2

    .line 91
    const/4 v8, 0x0

    .line 92
    invoke-static/range {v6 .. v12}, Lkotlin/uuid/UuidKt;->Row-lMAjyxE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Landroidx/compose/ui/unit/DpKt;->fillMaxSize(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget-object p2, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    aget p2, p2, v3

    .line 109
    .line 110
    if-eq p2, v2, :cond_3

    .line 111
    .line 112
    if-eq p2, v0, :cond_3

    .line 113
    .line 114
    const/4 v0, 0x3

    .line 115
    if-eq p2, v0, :cond_2

    .line 116
    .line 117
    const/4 v0, 0x4

    .line 118
    if-ne p2, v0, :cond_1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_1
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 122
    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    goto :goto_3

    .line 126
    :cond_2
    :goto_1
    const/high16 p2, 0x41800000    # 16.0f

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    const/4 p2, 0x0

    .line 130
    :goto_2
    const/16 v0, 0xd

    .line 131
    .line 132
    invoke-static {p1, p2, v0}, Lkotlin/text/UStringsKt;->padding-qDBjuR0$default(Landroidx/glance/GlanceModifier;FI)Landroidx/glance/GlanceModifier;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    new-instance p1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda1;

    .line 137
    .line 138
    iget p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$2:I

    .line 139
    .line 140
    iget-boolean p0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13;->f$3:Z

    .line 141
    .line 142
    invoke-direct {p1, p2, p0, v5, v4}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda1;-><init>(IZLorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;Lkotlin/jvm/functions/Function2;)V

    .line 143
    .line 144
    .line 145
    const p0, -0x121a02a8

    .line 146
    .line 147
    .line 148
    invoke-static {p0, p1, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    const/16 v11, 0xc00

    .line 153
    .line 154
    const/4 v12, 0x0

    .line 155
    const/4 v7, 0x1

    .line 156
    const/4 v8, 0x1

    .line 157
    invoke-static/range {v6 .. v12}, Landroidx/room/Room;->Column-K4GKKTE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_4
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 162
    .line 163
    .line 164
    :goto_3
    return-object v1

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
