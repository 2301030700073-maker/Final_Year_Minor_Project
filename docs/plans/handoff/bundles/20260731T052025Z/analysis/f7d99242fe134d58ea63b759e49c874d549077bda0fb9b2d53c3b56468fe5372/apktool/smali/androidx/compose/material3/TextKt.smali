.class public abstract Landroidx/compose/material3/TextKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 13
    .line 14
    return-void
.end method

.method public static final ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
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
    and-int/lit8 v1, p3, 0x30

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x20

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/16 v1, 0x10

    .line 33
    .line 34
    :goto_1
    or-int/2addr v0, v1

    .line 35
    :cond_2
    and-int/lit8 v1, v0, 0x13

    .line 36
    .line 37
    const/16 v2, 0x12

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-eq v1, v2, :cond_3

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    move v1, v3

    .line 45
    :goto_2
    and-int/lit8 v2, v0, 0x1

    .line 46
    .line 47
    invoke-virtual {p2, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    sget-object v1, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroidx/compose/ui/text/TextStyle;

    .line 60
    .line 61
    invoke-virtual {v2, p0}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    and-int/lit8 v0, v0, 0x70

    .line 70
    .line 71
    const/16 v2, 0x8

    .line 72
    .line 73
    or-int/2addr v0, v2

    .line 74
    invoke-static {v1, p1, p2, v0}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 79
    .line 80
    .line 81
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    if-eqz p2, :cond_5

    .line 86
    .line 87
    new-instance v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    invoke-direct {v0, p3, v3, p0, p1}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 93
    .line 94
    :cond_5
    return-void
.end method

.method public static final Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V
    .locals 28

    move/from16 v0, p18

    move/from16 v1, p19

    move/from16 v2, p20

    .line 1
    move-object/from16 v3, p17

    check-cast v3, Landroidx/compose/runtime/GapComposer;

    const v4, 0x6bda414b

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v4, v0, 0x6

    const/4 v6, 0x4

    if-nez v4, :cond_1

    move-object/from16 v4, p0

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v0

    goto :goto_1

    :cond_1
    move-object/from16 v4, p0

    move v7, v0

    :goto_1
    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_3

    or-int/lit8 v7, v7, 0x30

    :cond_2
    move-object/from16 v9, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v0, 0x30

    if-nez v9, :cond_2

    move-object/from16 v9, p1

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x20

    goto :goto_2

    :cond_4
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v7, v10

    :goto_3
    and-int/lit8 v10, v2, 0x4

    const/16 v12, 0x100

    if-eqz v10, :cond_6

    or-int/lit16 v7, v7, 0x180

    :cond_5
    move-wide/from16 v13, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v13, v0, 0x180

    if-nez v13, :cond_5

    move-wide/from16 v13, p2

    invoke-virtual {v3, v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v15

    if-eqz v15, :cond_7

    move v15, v12

    goto :goto_4

    :cond_7
    const/16 v15, 0x80

    :goto_4
    or-int/2addr v7, v15

    :goto_5
    const v15, 0x36db6c00

    or-int/2addr v7, v15

    and-int/lit16 v15, v2, 0x400

    if-eqz v15, :cond_8

    or-int/lit8 v5, v1, 0x6

    move v6, v5

    move-object/from16 v5, p8

    goto :goto_7

    :cond_8
    and-int/lit8 v16, v1, 0x6

    move-object/from16 v5, p8

    if-nez v16, :cond_a

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    goto :goto_6

    :cond_9
    const/4 v6, 0x2

    :goto_6
    or-int/2addr v6, v1

    goto :goto_7

    :cond_a
    move v6, v1

    :goto_7
    or-int/lit8 v16, v6, 0x30

    and-int/lit16 v11, v2, 0x1000

    if-eqz v11, :cond_b

    or-int/lit16 v6, v6, 0x1b0

    move v12, v6

    move/from16 v6, p11

    goto :goto_a

    :cond_b
    and-int/lit16 v6, v1, 0x180

    if-nez v6, :cond_d

    move/from16 v6, p11

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v17

    if-eqz v17, :cond_c

    goto :goto_8

    :cond_c
    const/16 v12, 0x80

    :goto_8
    or-int v16, v16, v12

    :goto_9
    move/from16 v12, v16

    goto :goto_a

    :cond_d
    move/from16 v6, p11

    goto :goto_9

    :goto_a
    and-int/lit16 v0, v2, 0x2000

    if-eqz v0, :cond_f

    or-int/lit16 v12, v12, 0xc00

    move/from16 v16, v0

    :cond_e
    move/from16 v0, p12

    goto :goto_c

    :cond_f
    move/from16 v16, v0

    and-int/lit16 v0, v1, 0xc00

    if-nez v0, :cond_e

    move/from16 v0, p12

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_10

    const/16 v17, 0x800

    goto :goto_b

    :cond_10
    const/16 v17, 0x400

    :goto_b
    or-int v12, v12, v17

    :goto_c
    and-int/lit16 v0, v2, 0x4000

    if-eqz v0, :cond_12

    or-int/lit16 v12, v12, 0x6000

    move/from16 v17, v0

    :cond_11
    move/from16 v0, p13

    goto :goto_e

    :cond_12
    move/from16 v17, v0

    and-int/lit16 v0, v1, 0x6000

    if-nez v0, :cond_11

    move/from16 v0, p13

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_13

    const/16 v18, 0x4000

    goto :goto_d

    :cond_13
    const/16 v18, 0x2000

    :goto_d
    or-int v12, v12, v18

    :goto_e
    const/high16 v18, 0x30000

    or-int v18, v12, v18

    const/high16 v19, 0x10000

    and-int v19, v2, v19

    if-eqz v19, :cond_15

    const/high16 v18, 0x1b0000

    or-int v18, v12, v18

    :cond_14
    move-object/from16 v12, p15

    goto :goto_10

    :cond_15
    const/high16 v12, 0x180000

    and-int/2addr v12, v1

    if-nez v12, :cond_14

    move-object/from16 v12, p15

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    const/high16 v20, 0x100000

    goto :goto_f

    :cond_16
    const/high16 v20, 0x80000

    :goto_f
    or-int v18, v18, v20

    :goto_10
    const/high16 v20, 0xc00000

    and-int v20, v1, v20

    const/high16 v21, 0x20000

    if-nez v20, :cond_18

    and-int v20, v2, v21

    move-object/from16 v0, p16

    if-nez v20, :cond_17

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    const/high16 v20, 0x800000

    goto :goto_11

    :cond_17
    const/high16 v20, 0x400000

    :goto_11
    or-int v18, v18, v20

    goto :goto_12

    :cond_18
    move-object/from16 v0, p16

    :goto_12
    const v20, 0x12492493

    and-int v0, v7, v20

    const v1, 0x12492492

    const/16 v20, 0x1

    if-ne v0, v1, :cond_1a

    const v0, 0x492493

    and-int v0, v18, v0

    const v1, 0x492492

    if-eq v0, v1, :cond_19

    goto :goto_13

    :cond_19
    const/4 v0, 0x0

    goto :goto_14

    :cond_1a
    :goto_13
    move/from16 v0, v20

    :goto_14
    and-int/lit8 v1, v7, 0x1

    invoke-virtual {v3, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v0, p18, 0x1

    const v1, -0x1c00001

    if-eqz v0, :cond_1d

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_15

    .line 2
    :cond_1b
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    and-int v0, p20, v21

    if-eqz v0, :cond_1c

    and-int v18, v18, v1

    :cond_1c
    move-wide/from16 v10, p9

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v20, p14

    move-object v1, v5

    move-object v0, v9

    move-object/from16 v17, v12

    move/from16 v19, v18

    move-wide/from16 v8, p4

    move-object/from16 v18, p16

    move v12, v6

    move-wide/from16 v5, p6

    goto/16 :goto_1a

    :cond_1d
    :goto_15
    if-eqz v8, :cond_1e

    .line 3
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_16

    :cond_1e
    move-object v0, v9

    :goto_16
    if-eqz v10, :cond_1f

    .line 4
    sget-wide v8, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    move-wide v13, v8

    .line 5
    :cond_1f
    sget-wide v8, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    const/4 v10, 0x0

    if-eqz v15, :cond_20

    move-object v5, v10

    :cond_20
    if-eqz v11, :cond_21

    move/from16 v6, v20

    :cond_21
    if-eqz v16, :cond_22

    move/from16 v11, v20

    goto :goto_17

    :cond_22
    move/from16 v11, p12

    :goto_17
    if-eqz v17, :cond_23

    const v15, 0x7fffffff

    goto :goto_18

    :cond_23
    move/from16 v15, p13

    :goto_18
    if-eqz v19, :cond_24

    move-object v12, v10

    :cond_24
    and-int v10, p20, v21

    if-eqz v10, :cond_25

    .line 6
    sget-object v10, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 7
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/text/TextStyle;

    and-int v18, v18, v1

    move-object v1, v5

    move-object/from16 v17, v12

    move/from16 v16, v15

    move/from16 v19, v18

    move v12, v6

    move-wide v5, v8

    move-object/from16 v18, v10

    :goto_19
    move v15, v11

    move-wide v10, v5

    goto :goto_1a

    :cond_25
    move-object v1, v5

    move-object/from16 v17, v12

    move/from16 v16, v15

    move/from16 v19, v18

    move-object/from16 v18, p16

    move v12, v6

    move-wide v5, v8

    goto :goto_19

    .line 8
    :goto_1a
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    const v2, -0x21b08752

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const-wide/16 v21, 0x10

    cmp-long v2, v13, v21

    if-eqz v2, :cond_26

    move-wide/from16 p6, v5

    move-wide/from16 v23, v13

    const/4 v2, 0x0

    goto :goto_1d

    :cond_26
    const v2, -0x21b0844d

    .line 9
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 10
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v23

    cmp-long v2, v23, v21

    if-eqz v2, :cond_27

    move-wide/from16 p6, v5

    :goto_1b
    const/4 v2, 0x0

    goto :goto_1c

    .line 11
    :cond_27
    sget-object v2, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 12
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    .line 13
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 p6, v5

    .line 14
    iget-wide v4, v2, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v23, v4

    goto :goto_1b

    .line 15
    :goto_1c
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    :goto_1d
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    if-eqz v1, :cond_28

    .line 16
    iget v2, v1, Landroidx/compose/ui/text/style/TextAlign;->value:I

    :cond_28
    const v4, 0xfd6f50

    move/from16 p8, v2

    move/from16 p11, v4

    move-wide/from16 p4, v8

    move-wide/from16 p9, v10

    move-object/from16 p1, v18

    move-wide/from16 p2, v23

    .line 17
    invoke-static/range {p1 .. p11}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJJIJI)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    move-object/from16 v10, p1

    move-wide/from16 v4, p6

    move-wide/from16 v21, p9

    and-int/lit8 v6, v7, 0x7e

    shr-int/lit8 v11, v19, 0x9

    and-int/lit16 v11, v11, 0x1c00

    or-int/2addr v6, v11

    shl-int/lit8 v11, v19, 0x6

    const v18, 0xe000

    and-int v18, v11, v18

    or-int v6, v6, v18

    const/high16 v18, 0x70000

    and-int v18, v11, v18

    or-int v6, v6, v18

    const/high16 v18, 0x380000

    and-int v18, v11, v18

    or-int v6, v6, v18

    const/high16 v18, 0x1c00000

    and-int v11, v11, v18

    or-int/2addr v6, v11

    shl-int/lit8 v7, v7, 0x12

    const/high16 v11, 0x70000000

    and-int/2addr v7, v11

    or-int/2addr v6, v7

    const/16 v7, 0x100

    move-object/from16 p1, p0

    move-object/from16 p2, v0

    move-object/from16 p3, v2

    move-object/from16 p9, v3

    move/from16 p10, v6

    move/from16 p11, v7

    move/from16 p5, v12

    move/from16 p6, v15

    move/from16 p7, v16

    move-object/from16 p4, v17

    move/from16 p8, v20

    .line 18
    invoke-static/range {p1 .. p11}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/runtime/Composer;II)V

    move-object/from16 v2, p2

    move-object/from16 v12, p4

    move/from16 v6, p5

    move/from16 v11, p6

    move/from16 v15, p7

    move-object/from16 v0, p9

    move-object/from16 v17, v10

    move-object/from16 v16, v12

    move v12, v6

    move-wide/from16 v26, v8

    move-object v9, v1

    move-wide v7, v4

    move-wide/from16 v5, v26

    move-wide v3, v13

    move v14, v15

    move/from16 v15, v20

    move v13, v11

    move-wide/from16 v10, v21

    goto :goto_1e

    :cond_29
    move-object v0, v3

    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-wide/from16 v7, p6

    move-wide/from16 v10, p9

    move/from16 v15, p14

    move-object/from16 v17, p16

    move-object v2, v9

    move-object/from16 v16, v12

    move-wide v3, v13

    move/from16 v13, p12

    move/from16 v14, p13

    move-object v9, v5

    move v12, v6

    move-wide/from16 v5, p4

    .line 20
    :goto_1e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2a

    move-object v1, v0

    new-instance v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda5;

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v25, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v20}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;III)V

    move-object/from16 v1, v25

    .line 21
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2a
    return-void
.end method

.method public static final Text-Z58ophY(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V
    .locals 52

    move-object/from16 v1, p0

    move/from16 v0, p19

    move/from16 v2, p20

    move/from16 v3, p21

    .line 1
    move-object/from16 v4, p18

    check-cast v4, Landroidx/compose/runtime/GapComposer;

    const v5, 0x116b5779

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v5, v0, 0x6

    if-nez v5, :cond_1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v0

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_3

    or-int/lit8 v5, v5, 0x30

    :cond_2
    move-object/from16 v9, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v0, 0x30

    if-nez v9, :cond_2

    move-object/from16 v9, p1

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x20

    goto :goto_2

    :cond_4
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v5, v10

    :goto_3
    and-int/lit8 v10, v3, 0x4

    if-eqz v10, :cond_6

    or-int/lit16 v5, v5, 0x180

    :cond_5
    move-wide/from16 v13, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v13, v0, 0x180

    if-nez v13, :cond_5

    move-wide/from16 v13, p2

    invoke-virtual {v4, v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v15

    if-eqz v15, :cond_7

    const/16 v15, 0x100

    goto :goto_4

    :cond_7
    const/16 v15, 0x80

    :goto_4
    or-int/2addr v5, v15

    :goto_5
    const v15, 0x36db6c00

    or-int/2addr v5, v15

    and-int/lit16 v15, v3, 0x400

    if-eqz v15, :cond_8

    or-int/lit8 v6, v2, 0x6

    move v11, v6

    move-object/from16 v6, p8

    goto :goto_7

    :cond_8
    and-int/lit8 v16, v2, 0x6

    move-object/from16 v6, p8

    if-nez v16, :cond_a

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/16 v16, 0x4

    goto :goto_6

    :cond_9
    const/16 v16, 0x2

    :goto_6
    or-int v16, v2, v16

    move/from16 v11, v16

    goto :goto_7

    :cond_a
    move v11, v2

    :goto_7
    or-int/lit8 v16, v11, 0x30

    and-int/lit16 v12, v3, 0x1000

    if-eqz v12, :cond_b

    or-int/lit16 v11, v11, 0x1b0

    move v7, v11

    move/from16 v11, p11

    goto :goto_a

    :cond_b
    and-int/lit16 v11, v2, 0x180

    if-nez v11, :cond_d

    move/from16 v11, p11

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v17, 0x100

    goto :goto_8

    :cond_c
    const/16 v17, 0x80

    :goto_8
    or-int v16, v16, v17

    :goto_9
    move/from16 v7, v16

    goto :goto_a

    :cond_d
    move/from16 v11, p11

    goto :goto_9

    :goto_a
    or-int/lit16 v0, v7, 0xc00

    move/from16 v16, v0

    and-int/lit16 v0, v3, 0x4000

    if-eqz v0, :cond_f

    or-int/lit16 v7, v7, 0x6c00

    move/from16 v16, v7

    :cond_e
    move/from16 v7, p13

    goto :goto_c

    :cond_f
    and-int/lit16 v7, v2, 0x6000

    if-nez v7, :cond_e

    move/from16 v7, p13

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v17

    if-eqz v17, :cond_10

    const/16 v17, 0x4000

    goto :goto_b

    :cond_10
    const/16 v17, 0x2000

    :goto_b
    or-int v16, v16, v17

    :goto_c
    const/high16 v17, 0x30000

    or-int v17, v16, v17

    const/high16 v18, 0x10000

    and-int v18, v3, v18

    if-eqz v18, :cond_12

    const/high16 v17, 0x1b0000

    or-int v17, v16, v17

    :cond_11
    move/from16 v16, v0

    move-object/from16 v0, p15

    goto :goto_e

    :cond_12
    const/high16 v16, 0x180000

    and-int v16, v2, v16

    if-nez v16, :cond_11

    move/from16 v16, v0

    move-object/from16 v0, p15

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v19, 0x80000

    :goto_d
    or-int v17, v17, v19

    :goto_e
    const/high16 v19, 0x20000

    and-int v19, v3, v19

    const/high16 v20, 0xc00000

    if-eqz v19, :cond_14

    or-int v17, v17, v20

    move-object/from16 v0, p16

    goto :goto_10

    :cond_14
    and-int v20, v2, v20

    move-object/from16 v0, p16

    if-nez v20, :cond_16

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    const/high16 v20, 0x800000

    goto :goto_f

    :cond_15
    const/high16 v20, 0x400000

    :goto_f
    or-int v17, v17, v20

    :cond_16
    :goto_10
    const/high16 v20, 0x6000000

    and-int v20, v2, v20

    const/high16 v21, 0x40000

    if-nez v20, :cond_18

    and-int v20, v3, v21

    move-object/from16 v0, p17

    if-nez v20, :cond_17

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    const/high16 v20, 0x4000000

    goto :goto_11

    :cond_17
    const/high16 v20, 0x2000000

    :goto_11
    or-int v17, v17, v20

    goto :goto_12

    :cond_18
    move-object/from16 v0, p17

    :goto_12
    const v20, 0x12492493

    and-int v0, v5, v20

    const v2, 0x12492492

    const/16 v20, 0x1

    if-ne v0, v2, :cond_1a

    const v0, 0x2492493

    and-int v0, v17, v0

    const v2, 0x2492492

    if-eq v0, v2, :cond_19

    goto :goto_13

    :cond_19
    const/4 v0, 0x0

    goto :goto_14

    :cond_1a
    :goto_13
    move/from16 v0, v20

    :goto_14
    and-int/lit8 v2, v5, 0x1

    invoke-virtual {v4, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v0, p19, 0x1

    const v22, -0xe000001

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v0, :cond_1d

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_15

    .line 2
    :cond_1b
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    and-int v0, p21, v21

    if-eqz v0, :cond_1c

    and-int v17, v17, v22

    :cond_1c
    move/from16 v16, p12

    move/from16 v18, p14

    move-object/from16 v19, p15

    move-object/from16 v21, p16

    move-object/from16 v22, p17

    move-object v10, v6

    move-object v0, v9

    move v15, v11

    move/from16 v24, v17

    move-wide/from16 v8, p4

    move-wide/from16 v11, p9

    move/from16 v17, v7

    move-wide/from16 v6, p6

    goto/16 :goto_1a

    :cond_1d
    :goto_15
    if-eqz v8, :cond_1e

    .line 3
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_16

    :cond_1e
    move-object v0, v9

    :goto_16
    if-eqz v10, :cond_1f

    .line 4
    sget-wide v8, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    move-wide v13, v8

    .line 5
    :cond_1f
    sget-wide v8, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    if-eqz v15, :cond_20

    const/4 v6, 0x0

    :cond_20
    if-eqz v12, :cond_21

    move/from16 v11, v20

    :cond_21
    if-eqz v16, :cond_22

    const v7, 0x7fffffff

    :cond_22
    if-eqz v18, :cond_23

    .line 6
    sget-object v10, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    goto :goto_17

    :cond_23
    move-object/from16 v10, p15

    :goto_17
    if-eqz v19, :cond_25

    .line 7
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_24

    .line 8
    new-instance v12, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;

    const/4 v15, 0x0

    invoke-direct {v12, v15}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 9
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 10
    :cond_24
    check-cast v12, Lkotlin/jvm/functions/Function1;

    goto :goto_18

    :cond_25
    move-object/from16 v12, p16

    :goto_18
    and-int v15, p21, v21

    if-eqz v15, :cond_26

    .line 11
    sget-object v15, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 12
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/text/TextStyle;

    and-int v17, v17, v22

    move-object/from16 v19, v10

    move-object/from16 v21, v12

    move-object/from16 v22, v15

    move/from16 v24, v17

    move/from16 v16, v20

    move/from16 v18, v16

    move-object v10, v6

    move/from16 v17, v7

    move-wide v6, v8

    move v15, v11

    :goto_19
    move-wide v11, v6

    goto :goto_1a

    :cond_26
    move-object/from16 v22, p17

    move-object/from16 v19, v10

    move v15, v11

    move-object/from16 v21, v12

    move/from16 v24, v17

    move/from16 v16, v20

    move/from16 v18, v16

    move-object v10, v6

    move/from16 v17, v7

    move-wide v6, v8

    goto :goto_19

    .line 13
    :goto_1a
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    const v3, 0x63f3c35c

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const-wide/16 v25, 0x10

    cmp-long v3, v13, v25

    if-eqz v3, :cond_27

    move/from16 v25, v5

    move-wide/from16 p6, v6

    move-wide/from16 v27, v13

    const/4 v3, 0x0

    goto :goto_1d

    :cond_27
    const v3, 0x63f3c661

    .line 14
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 15
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v27

    cmp-long v3, v27, v25

    if-eqz v3, :cond_28

    move/from16 v25, v5

    move-wide/from16 p6, v6

    :goto_1b
    const/4 v3, 0x0

    goto :goto_1c

    .line 16
    :cond_28
    sget-object v3, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 17
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    move/from16 v25, v5

    move-wide/from16 p6, v6

    .line 19
    iget-wide v5, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v27, v5

    goto :goto_1b

    .line 20
    :goto_1c
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    :goto_1d
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 21
    sget-object v5, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 22
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    .line 23
    check-cast v5, Landroidx/compose/material3/ColorScheme;

    .line 24
    iget-wide v5, v5, Landroidx/compose/material3/ColorScheme;->primary:J

    .line 25
    invoke-virtual {v4, v5, v6}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v7

    .line 26
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v7, :cond_29

    if-ne v3, v2, :cond_2a

    .line 27
    :cond_29
    new-instance v3, Landroidx/compose/ui/text/TextLinkStyles;

    .line 28
    new-instance v29, Landroidx/compose/ui/text/SpanStyle;

    const/16 v47, 0x0

    const v48, 0xeffe

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    sget-object v46, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    move-wide/from16 v30, v5

    invoke-direct/range {v29 .. v48}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    move-object/from16 v5, v29

    const/4 v6, 0x0

    .line 29
    invoke-direct {v3, v5, v6, v6, v6}, Landroidx/compose/ui/text/TextLinkStyles;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)V

    .line 30
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 31
    :cond_2a
    check-cast v3, Landroidx/compose/ui/text/TextLinkStyles;

    and-int/lit8 v5, v25, 0xe

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2b

    goto :goto_1e

    :cond_2b
    const/16 v20, 0x0

    .line 32
    :goto_1e
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int v5, v20, v5

    .line 33
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_2c

    if-ne v6, v2, :cond_2d

    .line 34
    :cond_2c
    new-instance v2, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    const/4 v6, 0x4

    invoke-direct {v2, v6, v3}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/AnnotatedString;->mapAnnotations(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v6

    .line 35
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 36
    :cond_2d
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v10, :cond_2e

    .line 37
    iget v3, v10, Landroidx/compose/ui/text/style/TextAlign;->value:I

    goto :goto_1f

    :cond_2e
    const/4 v3, 0x0

    :goto_1f
    const v2, 0xfd6f50

    move/from16 p11, v2

    move/from16 p8, v3

    move-wide/from16 p4, v8

    move-wide/from16 p9, v11

    move-object/from16 p1, v22

    move-wide/from16 p2, v27

    .line 38
    invoke-static/range {p1 .. p11}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJJIJI)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    move-object/from16 v3, p1

    move-wide/from16 v11, p6

    move-wide/from16 v22, p9

    and-int/lit8 v5, v25, 0x70

    shr-int/lit8 v7, v24, 0xc

    and-int/lit16 v7, v7, 0x1c00

    or-int/2addr v5, v7

    shl-int/lit8 v7, v24, 0x6

    const v20, 0xe000

    and-int v20, v7, v20

    or-int v5, v5, v20

    const/high16 v20, 0x70000

    and-int v20, v7, v20

    or-int v5, v5, v20

    const/high16 v20, 0x380000

    and-int v20, v7, v20

    or-int v5, v5, v20

    const/high16 v20, 0x1c00000

    and-int v20, v7, v20

    or-int v5, v5, v20

    const/high16 v20, 0xe000000

    and-int v7, v7, v20

    or-int/2addr v5, v7

    shr-int/lit8 v7, v25, 0x9

    and-int/lit8 v7, v7, 0xe

    move-object/from16 p2, v0

    move-object/from16 p3, v2

    move-object/from16 p10, v4

    move/from16 p11, v5

    move-object/from16 p1, v6

    move/from16 p12, v7

    move/from16 p5, v15

    move/from16 p6, v16

    move/from16 p7, v17

    move/from16 p8, v18

    move-object/from16 p9, v19

    move-object/from16 p4, v21

    .line 39
    invoke-static/range {p1 .. p12}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-CL7eQgs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v20, p6

    move/from16 v7, p7

    move/from16 v6, p8

    move-object/from16 v15, p9

    move-object/from16 v0, p10

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    move-wide v3, v13

    move-object/from16 v16, v15

    move/from16 v13, v20

    move v15, v6

    move v14, v7

    move-wide/from16 v50, v11

    move v12, v5

    move-wide v5, v8

    move-object v9, v10

    move-wide/from16 v7, v50

    move-wide/from16 v10, v22

    goto :goto_20

    :cond_2f
    move-object v0, v4

    .line 40
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object v2, v9

    move v12, v11

    move-wide v3, v13

    move-wide/from16 v10, p9

    move/from16 v13, p12

    move-object v9, v6

    move v14, v7

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    .line 41
    :goto_20
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_30

    move-object/from16 v19, v0

    new-instance v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;

    move/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v49, v19

    move/from16 v19, p19

    invoke-direct/range {v0 .. v21}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;III)V

    move-object v1, v0

    move-object/from16 v0, v49

    .line 42
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_30
    return-void
.end method
