.class public abstract Landroidx/compose/material3/TextKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 14
    .line 15
    return-void
.end method

.method public static final ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0xe9e0ce

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p3

    .line 19
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v1, 0x10

    .line 29
    .line 30
    :goto_1
    or-int/2addr v0, v1

    .line 31
    and-int/lit8 v1, v0, 0x13

    .line 32
    .line 33
    const/16 v2, 0x12

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eq v1, v2, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move v1, v3

    .line 41
    :goto_2
    and-int/lit8 v2, v0, 0x1

    .line 42
    .line 43
    invoke-virtual {p2, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    sget-object v1, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 50
    .line 51
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroidx/compose/ui/text/TextStyle;

    .line 56
    .line 57
    invoke-virtual {v2, p0}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    and-int/lit8 v0, v0, 0x70

    .line 66
    .line 67
    const/16 v2, 0x8

    .line 68
    .line 69
    or-int/2addr v0, v2

    .line 70
    invoke-static {v1, p1, p2, v0}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 75
    .line 76
    .line 77
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    if-eqz p2, :cond_4

    .line 82
    .line 83
    new-instance v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;

    .line 84
    .line 85
    invoke-direct {v0, p3, p0, p1, v3}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 89
    .line 90
    :cond_4
    return-void
.end method

.method public static final Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V
    .locals 30

    move/from16 v0, p18

    .line 1
    move-object/from16 v1, p16

    check-cast v1, Landroidx/compose/runtime/GapComposer;

    const v2, 0x6bda414b

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v2, p17, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-nez v2, :cond_1

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    or-int v5, p17, v5

    goto :goto_1

    :cond_1
    move-object/from16 v2, p0

    move/from16 v5, p17

    :goto_1
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v5, v5, 0x30

    :cond_2
    move-object/from16 v7, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v7, p17, 0x30

    if-nez v7, :cond_2

    move-object/from16 v7, p1

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_2

    :cond_4
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v5, v8

    :goto_3
    and-int/lit8 v8, v0, 0x4

    if-eqz v8, :cond_5

    or-int/lit16 v5, v5, 0x180

    move-wide/from16 v9, p2

    goto :goto_5

    :cond_5
    move-wide/from16 v9, p2

    invoke-virtual {v1, v9, v10}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x100

    goto :goto_4

    :cond_6
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v5, v11

    :goto_5
    const v11, 0x36db6c00

    or-int/2addr v5, v11

    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_7

    const/4 v3, 0x6

    move-object/from16 v12, p8

    goto :goto_6

    :cond_7
    move-object/from16 v12, p8

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    move v3, v4

    :cond_8
    :goto_6
    const v4, 0x1b6db0

    or-int/2addr v3, v4

    const/high16 v4, 0x20000

    and-int v13, v0, v4

    if-nez v13, :cond_9

    move-object/from16 v13, p15

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/high16 v14, 0x800000

    goto :goto_7

    :cond_9
    move-object/from16 v13, p15

    :cond_a
    const/high16 v14, 0x400000

    :goto_7
    or-int/2addr v3, v14

    const v14, 0x12492493

    and-int/2addr v14, v5

    const v15, 0x12492492

    move/from16 p16, v4

    const/16 v16, 0x1

    if-ne v14, v15, :cond_c

    const v14, 0x492493

    and-int/2addr v3, v14

    const v14, 0x492492

    if-eq v3, v14, :cond_b

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    move/from16 v3, v16

    :goto_9
    and-int/lit8 v14, v5, 0x1

    invoke-virtual {v1, v14, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v3, p17, 0x1

    if-eqz v3, :cond_e

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_a

    .line 2
    :cond_d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move/from16 v16, p11

    move/from16 v15, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move-object v3, v7

    move-wide v6, v9

    move-object/from16 v19, v13

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v13, p9

    goto :goto_f

    :cond_e
    :goto_a
    if-eqz v6, :cond_f

    .line 3
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_b

    :cond_f
    move-object v3, v7

    :goto_b
    if-eqz v8, :cond_10

    .line 4
    sget-wide v6, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    goto :goto_c

    :cond_10
    move-wide v6, v9

    .line 5
    :goto_c
    sget-wide v8, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    if-eqz v11, :cond_11

    const/4 v10, 0x0

    goto :goto_d

    :cond_11
    move-object v10, v12

    :goto_d
    and-int v11, v0, p16

    const v12, 0x7fffffff

    if-eqz v11, :cond_12

    .line 6
    sget-object v11, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 7
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/text/TextStyle;

    move-wide v13, v8

    move-object/from16 v19, v11

    move/from16 v17, v12

    move/from16 v15, v16

    move/from16 v18, v15

    :goto_e
    move-object v12, v10

    move-wide v10, v13

    goto :goto_f

    :cond_12
    move/from16 v17, v12

    move-object/from16 v19, v13

    move/from16 v15, v16

    move/from16 v18, v15

    move-wide v13, v8

    goto :goto_e

    .line 8
    :goto_f
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    const v4, -0x21b088d2

    .line 9
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const-wide/16 v20, 0x10

    cmp-long v4, v6, v20

    if-eqz v4, :cond_13

    move-object/from16 p12, v3

    move-wide/from16 v22, v6

    const/4 v2, 0x0

    goto :goto_12

    :cond_13
    const v4, -0x21b085cd

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v22

    cmp-long v4, v22, v20

    if-eqz v4, :cond_14

    move-object/from16 p12, v3

    :goto_10
    const/4 v2, 0x0

    goto :goto_11

    .line 10
    :cond_14
    sget-object v4, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 11
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    .line 12
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    move-object/from16 p12, v3

    .line 13
    iget-wide v2, v4, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v22, v2

    goto :goto_10

    .line 14
    :goto_11
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    :goto_12
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    if-eqz v12, :cond_15

    .line 15
    iget v4, v12, Landroidx/compose/ui/text/style/TextAlign;->value:I

    goto :goto_13

    :cond_15
    move v4, v2

    :goto_13
    const v2, 0xfd6f50

    move/from16 p11, v2

    move/from16 p8, v4

    move-wide/from16 p4, v8

    move-wide/from16 p6, v10

    move-wide/from16 p9, v13

    move-object/from16 p1, v19

    move-wide/from16 p2, v22

    .line 16
    invoke-static/range {p1 .. p11}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJJIJI)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    move-object/from16 v13, p1

    move-wide/from16 v3, p6

    move-wide/from16 v10, p9

    and-int/lit8 v5, v5, 0x7e

    const v14, 0x30db6c00

    or-int/2addr v5, v14

    move-object/from16 p1, p0

    move-object/from16 p2, p12

    move-object/from16 p8, v1

    move-object/from16 p3, v2

    move/from16 p9, v5

    move/from16 p5, v15

    move/from16 p4, v16

    move/from16 p6, v17

    move/from16 p7, v18

    .line 17
    invoke-static/range {p1 .. p9}, Lkotlin/io/CloseableKt;->BasicText-RWo7tUw(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/runtime/Composer;I)V

    move-object/from16 v2, p2

    move/from16 v5, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v25, v13

    move v13, v5

    move-wide/from16 v26, v8

    move-object v9, v12

    move/from16 v12, v16

    move-object/from16 v16, v25

    move-wide/from16 v28, v6

    move-wide v7, v3

    move-wide/from16 v3, v28

    move-wide/from16 v5, v26

    goto :goto_14

    .line 18
    :cond_16
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-wide/from16 v5, p4

    move/from16 v14, p13

    move/from16 v15, p14

    move-object v2, v7

    move-wide v3, v9

    move-object v9, v12

    move-object/from16 v16, v13

    move-wide/from16 v7, p6

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move/from16 v13, p12

    .line 19
    :goto_14
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_17

    new-instance v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v24, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v18}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;II)V

    move-object v1, v0

    move-object/from16 v0, v24

    .line 20
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method
