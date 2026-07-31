.class public abstract Lorg/wikipedia/activitytab/ActivityTabOnboardingActivityKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final onboardingItems:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/16 v4, 0x8

    .line 5
    .line 6
    const v1, 0x7f0801ab

    .line 7
    .line 8
    .line 9
    const v2, 0x7f120067

    .line 10
    .line 11
    .line 12
    const v3, 0x7f120066

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/compose/components/OnboardingItem;-><init>(IIIILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const/16 v5, 0x8

    .line 22
    .line 23
    const v2, 0x7f0801a4

    .line 24
    .line 25
    .line 26
    const v3, 0x7f120065

    .line 27
    .line 28
    .line 29
    const v4, 0x7f120064

    .line 30
    .line 31
    .line 32
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/compose/components/OnboardingItem;-><init>(IIIILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/16 v6, 0x8

    .line 39
    .line 40
    const v3, 0x7f0801c9

    .line 41
    .line 42
    .line 43
    const v4, 0x7f120063

    .line 44
    .line 45
    .line 46
    const v5, 0x7f120062

    .line 47
    .line 48
    .line 49
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/compose/components/OnboardingItem;-><init>(IIIILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    const/16 v7, 0x8

    .line 56
    .line 57
    const v4, 0x7f0801c7

    .line 58
    .line 59
    .line 60
    const v5, 0x7f12006a

    .line 61
    .line 62
    .line 63
    const v6, 0x7f120069

    .line 64
    .line 65
    .line 66
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/compose/components/OnboardingItem;-><init>(IIIILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x4

    .line 70
    new-array v4, v4, [Lorg/wikipedia/compose/components/OnboardingItem;

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    aput-object v0, v4, v5

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    aput-object v1, v4, v0

    .line 77
    .line 78
    const/4 v0, 0x2

    .line 79
    aput-object v2, v4, v0

    .line 80
    .line 81
    const/4 v0, 0x3

    .line 82
    aput-object v3, v4, v0

    .line 83
    .line 84
    invoke-static {v4}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sput-object v0, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivityKt;->onboardingItems:Ljava/util/List;

    .line 89
    .line 90
    return-void
.end method

.method public static final OnboardingScreen(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 20

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v0, p4

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const v1, -0x2d21358d

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    .line 24
    or-int/lit8 v1, p5, 0x6

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    const/16 v5, 0x20

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 v5, 0x10

    .line 36
    .line 37
    :goto_0
    or-int/2addr v1, v5

    .line 38
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    const/16 v5, 0x100

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v5, 0x80

    .line 48
    .line 49
    :goto_1
    or-int/2addr v1, v5

    .line 50
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    const/16 v5, 0x800

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v5, 0x400

    .line 60
    .line 61
    :goto_2
    or-int/2addr v1, v5

    .line 62
    and-int/lit16 v5, v1, 0x493

    .line 63
    .line 64
    const/16 v6, 0x492

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v8, 0x1

    .line 68
    if-eq v5, v6, :cond_3

    .line 69
    .line 70
    move v5, v8

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move v5, v7

    .line 73
    :goto_3
    and-int/2addr v1, v8

    .line 74
    invoke-virtual {v0, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 81
    .line 82
    invoke-static {v1}, Landroidx/compose/foundation/layout/OffsetKt;->safeDrawingPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    sget-object v6, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 87
    .line 88
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 93
    .line 94
    iget-wide v11, v6, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 95
    .line 96
    new-instance v6, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    invoke-direct {v6, v4, v3, v8, v7}, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IB)V

    .line 99
    .line 100
    .line 101
    const v8, 0x7c15da78

    .line 102
    .line 103
    .line 104
    invoke-static {v8, v6, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    new-instance v8, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivityKt$$ExternalSyntheticLambda1;

    .line 109
    .line 110
    invoke-direct {v8, v2, v7}, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivityKt$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;I)V

    .line 111
    .line 112
    .line 113
    const v7, -0x45e66a3e

    .line 114
    .line 115
    .line 116
    invoke-static {v7, v8, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 117
    .line 118
    .line 119
    move-result-object v16

    .line 120
    const v18, 0x30000180

    .line 121
    .line 122
    .line 123
    const/16 v19, 0x1ba

    .line 124
    .line 125
    move-object v7, v6

    .line 126
    const/4 v6, 0x0

    .line 127
    const/4 v8, 0x0

    .line 128
    const/4 v9, 0x0

    .line 129
    const/4 v10, 0x0

    .line 130
    const-wide/16 v13, 0x0

    .line 131
    .line 132
    const/4 v15, 0x0

    .line 133
    move-object/from16 v17, v0

    .line 134
    .line 135
    invoke-static/range {v5 .. v19}, Landroidx/compose/material3/CardKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_4
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 140
    .line 141
    .line 142
    move-object/from16 v1, p0

    .line 143
    .line 144
    :goto_4
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    if-eqz v7, :cond_5

    .line 149
    .line 150
    new-instance v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;

    .line 151
    .line 152
    const/4 v6, 0x2

    .line 153
    move/from16 v5, p5

    .line 154
    .line 155
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 156
    .line 157
    .line 158
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 159
    .line 160
    :cond_5
    return-void
.end method
