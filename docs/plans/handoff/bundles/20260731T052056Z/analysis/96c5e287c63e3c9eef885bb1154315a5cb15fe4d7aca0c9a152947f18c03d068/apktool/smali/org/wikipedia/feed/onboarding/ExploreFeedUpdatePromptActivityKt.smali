.class public abstract Lorg/wikipedia/feed/onboarding/ExploreFeedUpdatePromptActivityKt;
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
    const v1, 0x7f080179

    .line 7
    .line 8
    .line 9
    const v2, 0x7f120207

    .line 10
    .line 11
    .line 12
    const v3, 0x7f120206

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
    const v2, 0x7f0801e9

    .line 24
    .line 25
    .line 26
    const v3, 0x7f12020c

    .line 27
    .line 28
    .line 29
    const v4, 0x7f12020b

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
    const v3, 0x7f080128

    .line 41
    .line 42
    .line 43
    const v4, 0x7f120203

    .line 44
    .line 45
    .line 46
    const v5, 0x7f120202

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
    const v4, 0x7f0801d4

    .line 58
    .line 59
    .line 60
    const v5, 0x7f120205

    .line 61
    .line 62
    .line 63
    const v6, 0x7f120204

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
    sput-object v0, Lorg/wikipedia/feed/onboarding/ExploreFeedUpdatePromptActivityKt;->onboardingItems:Ljava/util/List;

    .line 89
    .line 90
    return-void
.end method

.method public static final ExploreFeedUpdatePromptScreen(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 20

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    move/from16 v1, p4

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
    const v4, 0x1057c778

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    or-int/lit8 v4, v1, 0x6

    .line 22
    .line 23
    and-int/lit8 v5, v1, 0x30

    .line 24
    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    const/16 v5, 0x20

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 v5, 0x10

    .line 37
    .line 38
    :goto_0
    or-int/2addr v4, v5

    .line 39
    :cond_1
    and-int/lit16 v5, v1, 0x180

    .line 40
    .line 41
    if-nez v5, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    const/16 v5, 0x100

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/16 v5, 0x80

    .line 53
    .line 54
    :goto_1
    or-int/2addr v4, v5

    .line 55
    :cond_3
    and-int/lit16 v5, v4, 0x93

    .line 56
    .line 57
    const/16 v6, 0x92

    .line 58
    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x1

    .line 61
    if-eq v5, v6, :cond_4

    .line 62
    .line 63
    move v5, v8

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move v5, v7

    .line 66
    :goto_2
    and-int/2addr v4, v8

    .line 67
    invoke-virtual {v0, v4, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_5

    .line 72
    .line 73
    sget-object v19, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 74
    .line 75
    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->safeDrawingPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    sget-object v5, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 80
    .line 81
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 86
    .line 87
    iget-wide v10, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 88
    .line 89
    new-instance v5, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;

    .line 90
    .line 91
    const/4 v6, 0x2

    .line 92
    invoke-direct {v5, v3, v2, v6, v7}, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IB)V

    .line 93
    .line 94
    .line 95
    const v6, 0x453beabd

    .line 96
    .line 97
    .line 98
    invoke-static {v6, v5, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    const v17, 0x30000180

    .line 103
    .line 104
    .line 105
    const/16 v18, 0x1ba

    .line 106
    .line 107
    const/4 v5, 0x0

    .line 108
    const/4 v7, 0x0

    .line 109
    const/4 v8, 0x0

    .line 110
    const/4 v9, 0x0

    .line 111
    const-wide/16 v12, 0x0

    .line 112
    .line 113
    const/4 v14, 0x0

    .line 114
    sget-object v15, Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivityKt;->lambda$-2113332089:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 115
    .line 116
    move-object/from16 v16, v0

    .line 117
    .line 118
    invoke-static/range {v4 .. v18}, Landroidx/compose/material3/CardKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 123
    .line 124
    .line 125
    move-object/from16 v19, p0

    .line 126
    .line 127
    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    if-eqz v6, :cond_6

    .line 132
    .line 133
    new-instance v0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda10;

    .line 134
    .line 135
    const/4 v5, 0x1

    .line 136
    move v4, v1

    .line 137
    move-object/from16 v1, v19

    .line 138
    .line 139
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda10;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    .line 140
    .line 141
    .line 142
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 143
    .line 144
    :cond_6
    return-void
.end method
