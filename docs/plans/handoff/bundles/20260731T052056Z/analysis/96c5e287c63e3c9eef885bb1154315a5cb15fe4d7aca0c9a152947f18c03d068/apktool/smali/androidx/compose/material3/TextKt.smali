.class public abstract Landroidx/compose/material3/TextKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final LocalTextStyle:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/work/Worker$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Landroidx/work/Worker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 14
    .line 15
    return-void
.end method

.method public static final ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 4

    .line 1
    const v0, 0xe9e0ce

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p3

    .line 17
    and-int/lit8 v1, v0, 0x13

    .line 18
    .line 19
    const/16 v2, 0x12

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    move v1, v3

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_1
    and-int/2addr v0, v3

    .line 28
    invoke-virtual {p2, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    sget-object v0, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroidx/compose/ui/text/TextStyle;

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/16 v1, 0x38

    .line 51
    .line 52
    invoke-static {v0, p1, p2, v1}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 57
    .line 58
    .line 59
    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    new-instance v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;

    .line 66
    .line 67
    const/16 v1, 0xf

    .line 68
    .line 69
    invoke-direct {v0, p0, p1, p3, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method public static final Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V
    .locals 39

    move-object/from16 v0, p20

    move/from16 v1, p21

    move/from16 v2, p22

    move/from16 v3, p23

    const v4, 0x6bda414b

    .line 1
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v4, v1, 0x6

    if-nez v4, :cond_1

    move-object/from16 v4, p0

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p0

    move v7, v1

    :goto_1
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_3

    or-int/lit8 v7, v7, 0x30

    :cond_2
    move-object/from16 v11, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v11, v1, 0x30

    if-nez v11, :cond_2

    move-object/from16 v11, p1

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x20

    goto :goto_2

    :cond_4
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v7, v12

    :goto_3
    and-int/lit8 v12, v3, 0x4

    if-eqz v12, :cond_5

    or-int/lit16 v7, v7, 0x180

    move-wide/from16 v5, p2

    goto :goto_5

    :cond_5
    and-int/lit16 v15, v1, 0x180

    move-wide/from16 v5, p2

    if-nez v15, :cond_7

    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x100

    goto :goto_4

    :cond_6
    const/16 v17, 0x80

    :goto_4
    or-int v7, v7, v17

    :cond_7
    :goto_5
    and-int/lit8 v17, v3, 0x8

    if-eqz v17, :cond_9

    or-int/lit16 v7, v7, 0xc00

    :cond_8
    move-object/from16 v9, p4

    goto :goto_7

    :cond_9
    and-int/lit16 v9, v1, 0xc00

    if-nez v9, :cond_8

    move-object/from16 v9, p4

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0x800

    goto :goto_6

    :cond_a
    const/16 v19, 0x400

    :goto_6
    or-int v7, v7, v19

    :goto_7
    and-int/lit8 v19, v3, 0x10

    const/16 v20, 0x2000

    const/16 v21, 0x4000

    if-eqz v19, :cond_b

    or-int/lit16 v7, v7, 0x6000

    move-wide/from16 v13, p5

    goto :goto_9

    :cond_b
    and-int/lit16 v10, v1, 0x6000

    move-wide/from16 v13, p5

    if-nez v10, :cond_d

    invoke-virtual {v0, v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v24

    if-eqz v24, :cond_c

    move/from16 v24, v21

    goto :goto_8

    :cond_c
    move/from16 v24, v20

    :goto_8
    or-int v7, v7, v24

    :cond_d
    :goto_9
    const/high16 v24, 0x30000

    or-int v25, v7, v24

    and-int/lit8 v26, v3, 0x40

    const/high16 v27, 0x80000

    const/high16 v28, 0x100000

    const/high16 v29, 0x1b0000

    const/high16 v30, 0x180000

    if-eqz v26, :cond_f

    or-int v25, v7, v29

    :cond_e
    move-object/from16 v7, p7

    goto :goto_b

    :cond_f
    and-int v7, v1, v30

    if-nez v7, :cond_e

    move-object/from16 v7, p7

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    move/from16 v31, v28

    goto :goto_a

    :cond_10
    move/from16 v31, v27

    :goto_a
    or-int v25, v25, v31

    :goto_b
    and-int/lit16 v10, v3, 0x80

    const/high16 v32, 0x400000

    const/high16 v33, 0x800000

    const/high16 v34, 0xc00000

    if-eqz v10, :cond_11

    or-int v25, v25, v34

    move-object/from16 v15, p8

    goto :goto_d

    :cond_11
    and-int v35, v1, v34

    move-object/from16 v15, p8

    if-nez v35, :cond_13

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_12

    move/from16 v36, v33

    goto :goto_c

    :cond_12
    move/from16 v36, v32

    :goto_c
    or-int v25, v25, v36

    :cond_13
    :goto_d
    and-int/lit16 v1, v3, 0x100

    const/high16 v36, 0x6000000

    if-eqz v1, :cond_14

    or-int v25, v25, v36

    move-wide/from16 v4, p9

    goto :goto_f

    :cond_14
    and-int v36, p21, v36

    move-wide/from16 v4, p9

    if-nez v36, :cond_16

    invoke-virtual {v0, v4, v5}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_15

    const/high16 v6, 0x4000000

    goto :goto_e

    :cond_15
    const/high16 v6, 0x2000000

    :goto_e
    or-int v25, v25, v6

    :cond_16
    :goto_f
    const/high16 v6, 0x30000000

    or-int v6, v25, v6

    move/from16 v25, v1

    and-int/lit16 v1, v3, 0x400

    if-eqz v1, :cond_17

    or-int/lit8 v16, v2, 0x6

    move/from16 v36, v1

    move-object/from16 v1, p11

    goto :goto_11

    :cond_17
    and-int/lit8 v36, v2, 0x6

    if-nez v36, :cond_19

    move/from16 v36, v1

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_18

    const/16 v16, 0x4

    goto :goto_10

    :cond_18
    const/16 v16, 0x2

    :goto_10
    or-int v16, v2, v16

    goto :goto_11

    :cond_19
    move/from16 v36, v1

    move-object/from16 v1, p11

    move/from16 v16, v2

    :goto_11
    and-int/lit16 v1, v3, 0x800

    if-eqz v1, :cond_1b

    or-int/lit8 v16, v16, 0x30

    move-wide/from16 v4, p12

    :cond_1a
    :goto_12
    move/from16 v18, v1

    move/from16 v1, v16

    goto :goto_14

    :cond_1b
    and-int/lit8 v35, v2, 0x30

    move-wide/from16 v4, p12

    if-nez v35, :cond_1a

    invoke-virtual {v0, v4, v5}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v35

    if-eqz v35, :cond_1c

    const/16 v18, 0x20

    goto :goto_13

    :cond_1c
    const/16 v18, 0x10

    :goto_13
    or-int v16, v16, v18

    goto :goto_12

    :goto_14
    and-int/lit16 v4, v3, 0x1000

    if-eqz v4, :cond_1e

    or-int/lit16 v1, v1, 0x180

    :cond_1d
    move/from16 v5, p14

    goto :goto_16

    :cond_1e
    and-int/lit16 v5, v2, 0x180

    if-nez v5, :cond_1d

    move/from16 v5, p14

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v16

    if-eqz v16, :cond_1f

    const/16 v31, 0x100

    goto :goto_15

    :cond_1f
    const/16 v31, 0x80

    :goto_15
    or-int v1, v1, v31

    :goto_16
    move/from16 v16, v4

    or-int/lit16 v4, v1, 0xc00

    move/from16 v22, v4

    and-int/lit16 v4, v3, 0x4000

    if-eqz v4, :cond_20

    or-int/lit16 v1, v1, 0x6c00

    move/from16 v20, v1

    move/from16 v1, p16

    goto :goto_17

    :cond_20
    and-int/lit16 v1, v2, 0x6000

    if-nez v1, :cond_22

    move/from16 v1, p16

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v23

    if-eqz v23, :cond_21

    move/from16 v20, v21

    :cond_21
    or-int v20, v22, v20

    goto :goto_17

    :cond_22
    move/from16 v1, p16

    move/from16 v20, v22

    :goto_17
    or-int v21, v20, v24

    const/high16 v22, 0x10000

    and-int v22, v3, v22

    if-eqz v22, :cond_23

    or-int v21, v20, v29

    move-object/from16 v1, p18

    goto :goto_18

    :cond_23
    and-int v20, v2, v30

    move-object/from16 v1, p18

    if-nez v20, :cond_25

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_24

    move/from16 v27, v28

    :cond_24
    or-int v21, v21, v27

    :cond_25
    :goto_18
    and-int v20, v2, v34

    const/high16 v23, 0x20000

    if-nez v20, :cond_27

    and-int v20, v3, v23

    move-object/from16 v1, p19

    if-nez v20, :cond_26

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_26

    move/from16 v32, v33

    :cond_26
    or-int v21, v21, v32

    goto :goto_19

    :cond_27
    move-object/from16 v1, p19

    :goto_19
    const v20, 0x12492493

    and-int v1, v6, v20

    const v2, 0x12492492

    const/4 v3, 0x0

    const/16 v20, 0x1

    if-ne v1, v2, :cond_29

    const v1, 0x492493

    and-int v1, v21, v1

    const v2, 0x492492

    if-eq v1, v2, :cond_28

    goto :goto_1a

    :cond_28
    move v1, v3

    goto :goto_1b

    :cond_29
    :goto_1a
    move/from16 v1, v20

    :goto_1b
    and-int/lit8 v2, v6, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v1, p21, 0x1

    const v2, -0x1c00001

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_1c

    .line 2
    :cond_2a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    and-int v1, p23, v23

    if-eqz v1, :cond_2b

    and-int v21, v21, v2

    :cond_2b
    move-wide/from16 v27, p2

    move-wide/from16 v24, p9

    move-object/from16 v8, p11

    move-wide/from16 v17, p12

    move/from16 v20, p15

    move/from16 v4, p16

    move/from16 v1, p17

    move-object/from16 v2, p18

    move-object/from16 v10, p19

    move-wide v12, v13

    goto/16 :goto_25

    :cond_2c
    :goto_1c
    if-eqz v8, :cond_2d

    .line 3
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object v11, v1

    :cond_2d
    if-eqz v12, :cond_2e

    .line 4
    sget-wide v27, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    goto :goto_1d

    :cond_2e
    move-wide/from16 v27, p2

    :goto_1d
    const/4 v1, 0x0

    if-eqz v17, :cond_2f

    move-object v9, v1

    :cond_2f
    if-eqz v19, :cond_30

    .line 5
    sget-wide v12, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    goto :goto_1e

    :cond_30
    move-wide v12, v13

    :goto_1e
    if-eqz v26, :cond_31

    move-object v7, v1

    :cond_31
    if-eqz v10, :cond_32

    move-object v15, v1

    :cond_32
    if-eqz v25, :cond_33

    .line 6
    sget-wide v24, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    goto :goto_1f

    :cond_33
    move-wide/from16 v24, p9

    :goto_1f
    if-eqz v36, :cond_34

    move-object v8, v1

    goto :goto_20

    :cond_34
    move-object/from16 v8, p11

    :goto_20
    if-eqz v18, :cond_35

    .line 7
    sget-wide v17, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    goto :goto_21

    :cond_35
    move-wide/from16 v17, p12

    :goto_21
    if-eqz v16, :cond_36

    move/from16 v5, v20

    :cond_36
    if-eqz v4, :cond_37

    const v4, 0x7fffffff

    goto :goto_22

    :cond_37
    move/from16 v4, p16

    :goto_22
    if-eqz v22, :cond_38

    goto :goto_23

    :cond_38
    move-object/from16 v1, p18

    :goto_23
    and-int v10, p23, v23

    if-eqz v10, :cond_39

    .line 8
    sget-object v10, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 9
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/text/TextStyle;

    and-int v21, v21, v2

    :goto_24
    move-object v2, v1

    move/from16 v1, v20

    goto :goto_25

    :cond_39
    move-object/from16 v10, p19

    goto :goto_24

    .line 10
    :goto_25
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    const v14, -0x21b08752

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const-wide/16 v22, 0x10

    cmp-long v14, v27, v22

    if-eqz v14, :cond_3a

    move/from16 p14, v1

    move-object/from16 p15, v2

    move-wide/from16 v29, v27

    goto :goto_27

    :cond_3a
    const v14, -0x21b0844d

    .line 11
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 12
    invoke-virtual {v10}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v29

    cmp-long v14, v29, v22

    if-eqz v14, :cond_3b

    move/from16 p14, v1

    move-object/from16 p15, v2

    goto :goto_26

    .line 13
    :cond_3b
    sget-object v14, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 14
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    .line 15
    check-cast v14, Landroidx/compose/ui/graphics/Color;

    move/from16 p14, v1

    move-object/from16 p15, v2

    .line 16
    iget-wide v1, v14, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v29, v1

    .line 17
    :goto_26
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    :goto_27
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    if-eqz v8, :cond_3c

    .line 18
    iget v3, v8, Landroidx/compose/ui/text/style/TextAlign;->value:I

    :cond_3c
    const v1, 0xfd6f50

    move/from16 p13, v1

    move/from16 p10, v3

    move-object/from16 p6, v7

    move-object/from16 p1, v10

    move-wide/from16 p4, v12

    move-object/from16 p7, v15

    move-wide/from16 p11, v17

    move-wide/from16 p8, v24

    move-wide/from16 p2, v29

    .line 19
    invoke-static/range {p1 .. p13}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJI)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    and-int/lit8 v2, v6, 0x7e

    shr-int/lit8 v3, v21, 0x9

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    shl-int/lit8 v3, v21, 0x6

    const v14, 0xe000

    and-int/2addr v14, v3

    or-int/2addr v2, v14

    const/high16 v14, 0x70000

    and-int/2addr v14, v3

    or-int/2addr v2, v14

    const/high16 v14, 0x380000

    and-int/2addr v14, v3

    or-int/2addr v2, v14

    const/high16 v14, 0x1c00000

    and-int/2addr v3, v14

    or-int/2addr v2, v3

    shl-int/lit8 v3, v6, 0x12

    const/high16 v6, 0x70000000

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x100

    move-object/from16 p1, p0

    move/from16 p8, p14

    move-object/from16 p4, p15

    move-object/from16 p10, v0

    move-object/from16 p3, v1

    move/from16 p11, v2

    move/from16 p12, v3

    move/from16 p7, v4

    move/from16 p5, v5

    move-object/from16 p9, v9

    move-object/from16 p2, v11

    move/from16 p6, v20

    .line 20
    invoke-static/range {p1 .. p12}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/foundation/text/AutoSizeStepBased;Landroidx/compose/runtime/GapComposer;II)V

    move-object/from16 v1, p4

    move/from16 v0, p8

    move-object v2, v8

    move-object v8, v7

    move-wide v6, v12

    move-object v12, v2

    move-object v2, v15

    move v15, v5

    move-object v5, v9

    move-object v9, v2

    move-object/from16 v19, v1

    move-object v2, v11

    move-wide/from16 v13, v17

    move/from16 v16, v20

    move/from16 v18, v0

    move/from16 v17, v4

    move-object/from16 v20, v10

    move-wide/from16 v10, v24

    move-wide/from16 v3, v27

    goto :goto_28

    .line 21
    :cond_3d
    invoke-virtual/range {p20 .. p20}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object v2, v15

    move v15, v5

    move-object v5, v9

    move-object v9, v2

    move-wide/from16 v3, p2

    move-object/from16 v12, p11

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object v8, v7

    move-object v2, v11

    move-wide v6, v13

    move-wide/from16 v10, p9

    move-wide/from16 v13, p12

    .line 22
    :goto_28
    invoke-virtual/range {p20 .. p20}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_3e

    move-object v1, v0

    new-instance v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v38, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v23}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;III)V

    move-object/from16 v1, v38

    .line 23
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3e
    return-void
.end method

.method public static final Text-Z58ophY(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V
    .locals 58

    move-object/from16 v1, p0

    move-object/from16 v0, p19

    move/from16 v2, p20

    move/from16 v3, p21

    move/from16 v4, p22

    const v5, 0x116b5779

    .line 1
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v5, v2, 0x6

    if-nez v5, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v2

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    and-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_3

    or-int/lit8 v5, v5, 0x30

    :cond_2
    move-object/from16 v11, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v11, v2, 0x30

    if-nez v11, :cond_2

    move-object/from16 v11, p1

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x20

    goto :goto_2

    :cond_4
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v5, v12

    :goto_3
    and-int/lit8 v12, v4, 0x4

    if-eqz v12, :cond_5

    or-int/lit16 v5, v5, 0x180

    move-wide/from16 v9, p2

    goto :goto_5

    :cond_5
    and-int/lit16 v15, v2, 0x180

    move-wide/from16 v9, p2

    if-nez v15, :cond_7

    invoke-virtual {v0, v9, v10}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x100

    goto :goto_4

    :cond_6
    const/16 v17, 0x80

    :goto_4
    or-int v5, v5, v17

    :cond_7
    :goto_5
    and-int/lit8 v17, v4, 0x8

    const/4 v13, 0x0

    if-eqz v17, :cond_8

    or-int/lit16 v5, v5, 0xc00

    goto :goto_7

    :cond_8
    and-int/lit16 v14, v2, 0xc00

    if-nez v14, :cond_a

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/16 v14, 0x800

    goto :goto_6

    :cond_9
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v5, v14

    :cond_a
    :goto_7
    const v14, 0x36000

    or-int/2addr v14, v5

    and-int/lit8 v19, v4, 0x40

    const/high16 v20, 0x80000

    const/high16 v21, 0x100000

    const/high16 v22, 0x180000

    if-eqz v19, :cond_c

    const v14, 0x1b6000

    or-int/2addr v14, v5

    :cond_b
    move-object/from16 v5, p6

    goto :goto_9

    :cond_c
    and-int v5, v2, v22

    if-nez v5, :cond_b

    move-object/from16 v5, p6

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    move/from16 v23, v21

    goto :goto_8

    :cond_d
    move/from16 v23, v20

    :goto_8
    or-int v14, v14, v23

    :goto_9
    const/high16 v23, 0x36c00000

    or-int v14, v14, v23

    and-int/lit16 v15, v4, 0x400

    if-eqz v15, :cond_e

    or-int/lit8 v24, v3, 0x6

    move-object/from16 v6, p9

    move/from16 v25, v24

    goto :goto_b

    :cond_e
    and-int/lit8 v24, v3, 0x6

    move-object/from16 v6, p9

    if-nez v24, :cond_10

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    const/16 v25, 0x4

    goto :goto_a

    :cond_f
    const/16 v25, 0x2

    :goto_a
    or-int v25, v3, v25

    goto :goto_b

    :cond_10
    move/from16 v25, v3

    :goto_b
    and-int/lit16 v7, v4, 0x800

    if-eqz v7, :cond_11

    or-int/lit8 v25, v25, 0x30

    move/from16 v27, v14

    move/from16 v2, v25

    move-wide/from16 v13, p10

    goto :goto_d

    :cond_11
    and-int/lit8 v26, v3, 0x30

    move/from16 v27, v14

    move-wide/from16 v13, p10

    if-nez v26, :cond_13

    invoke-virtual {v0, v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v28

    if-eqz v28, :cond_12

    const/16 v16, 0x20

    goto :goto_c

    :cond_12
    const/16 v16, 0x10

    :goto_c
    or-int v25, v25, v16

    :cond_13
    move/from16 v2, v25

    :goto_d
    and-int/lit16 v5, v4, 0x1000

    if-eqz v5, :cond_14

    or-int/lit16 v2, v2, 0x180

    goto :goto_10

    :cond_14
    move/from16 v16, v2

    and-int/lit16 v2, v3, 0x180

    if-nez v2, :cond_16

    move/from16 v2, p12

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v23

    if-eqz v23, :cond_15

    const/16 v17, 0x100

    goto :goto_e

    :cond_15
    const/16 v17, 0x80

    :goto_e
    or-int v16, v16, v17

    :goto_f
    move/from16 v2, v16

    goto :goto_10

    :cond_16
    move/from16 v2, p12

    goto :goto_f

    :goto_10
    move/from16 v16, v5

    or-int/lit16 v5, v2, 0xc00

    move/from16 v17, v5

    and-int/lit16 v5, v4, 0x4000

    if-eqz v5, :cond_18

    or-int/lit16 v2, v2, 0x6c00

    move/from16 v17, v2

    :cond_17
    move/from16 v2, p14

    goto :goto_12

    :cond_18
    and-int/lit16 v2, v3, 0x6000

    if-nez v2, :cond_17

    move/from16 v2, p14

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_19

    const/16 v18, 0x4000

    goto :goto_11

    :cond_19
    const/16 v18, 0x2000

    :goto_11
    or-int v17, v17, v18

    :goto_12
    const/high16 v18, 0x30000

    or-int v18, v17, v18

    const/high16 v23, 0x10000

    and-int v23, v4, v23

    if-eqz v23, :cond_1a

    const/high16 v18, 0x1b0000

    or-int v18, v17, v18

    move-object/from16 v2, p16

    goto :goto_13

    :cond_1a
    and-int v17, v3, v22

    move-object/from16 v2, p16

    if-nez v17, :cond_1c

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    move/from16 v20, v21

    :cond_1b
    or-int v18, v18, v20

    :cond_1c
    :goto_13
    const/high16 v17, 0x20000

    and-int v17, v4, v17

    const/high16 v20, 0xc00000

    if-eqz v17, :cond_1d

    or-int v18, v18, v20

    move-object/from16 v2, p17

    goto :goto_15

    :cond_1d
    and-int v20, v3, v20

    move-object/from16 v2, p17

    if-nez v20, :cond_1f

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    const/high16 v20, 0x800000

    goto :goto_14

    :cond_1e
    const/high16 v20, 0x400000

    :goto_14
    or-int v18, v18, v20

    :cond_1f
    :goto_15
    const/high16 v20, 0x6000000

    and-int v20, v3, v20

    const/high16 v21, 0x40000

    if-nez v20, :cond_21

    and-int v20, v4, v21

    move-object/from16 v2, p18

    if-nez v20, :cond_20

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20

    const/high16 v20, 0x4000000

    goto :goto_16

    :cond_20
    const/high16 v20, 0x2000000

    :goto_16
    or-int v18, v18, v20

    goto :goto_17

    :cond_21
    move-object/from16 v2, p18

    :goto_17
    const v20, 0x12492493

    and-int v2, v27, v20

    const v3, 0x12492492

    const/16 v20, 0x1

    if-ne v2, v3, :cond_23

    const v2, 0x2492493

    and-int v2, v18, v2

    const v3, 0x2492492

    if-eq v2, v3, :cond_22

    goto :goto_18

    :cond_22
    const/4 v2, 0x0

    goto :goto_19

    :cond_23
    :goto_18
    move/from16 v2, v20

    :goto_19
    and-int/lit8 v3, v27, 0x1

    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v2, p20, 0x1

    const v22, -0xe000001

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_1a

    .line 2
    :cond_24
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    and-int v2, p22, v21

    if-eqz v2, :cond_25

    and-int v18, v18, v22

    :cond_25
    move-wide/from16 v28, p4

    move-object/from16 v2, p6

    move/from16 v8, p12

    move/from16 v12, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v19, p18

    move-object v7, v6

    move/from16 v21, v18

    move-wide/from16 v5, p7

    move-object/from16 v18, p17

    goto/16 :goto_21

    :cond_26
    :goto_1a
    if-eqz v8, :cond_27

    .line 3
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object v11, v2

    :cond_27
    if-eqz v12, :cond_28

    .line 4
    sget-wide v8, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    move-wide v9, v8

    .line 5
    :cond_28
    sget-wide v28, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    if-eqz v19, :cond_29

    const/4 v2, 0x0

    goto :goto_1b

    :cond_29
    move-object/from16 v2, p6

    :goto_1b
    if-eqz v15, :cond_2a

    const/4 v6, 0x0

    :cond_2a
    if-eqz v7, :cond_2b

    move-wide/from16 v13, v28

    :cond_2b
    if-eqz v16, :cond_2c

    move/from16 v7, v20

    goto :goto_1c

    :cond_2c
    move/from16 v7, p12

    :goto_1c
    if-eqz v5, :cond_2d

    const v5, 0x7fffffff

    goto :goto_1d

    :cond_2d
    move/from16 v5, p14

    :goto_1d
    if-eqz v23, :cond_2e

    .line 6
    sget-object v8, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    goto :goto_1e

    :cond_2e
    move-object/from16 v8, p16

    :goto_1e
    if-eqz v17, :cond_30

    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_2f

    .line 8
    new-instance v12, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    const/16 v15, 0x17

    invoke-direct {v12, v15}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 9
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 10
    :cond_2f
    check-cast v12, Lkotlin/jvm/functions/Function1;

    goto :goto_1f

    :cond_30
    move-object/from16 v12, p17

    :goto_1f
    and-int v15, p22, v21

    if-eqz v15, :cond_31

    .line 11
    sget-object v15, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 12
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/text/TextStyle;

    and-int v18, v18, v22

    move-object/from16 v17, v8

    move-object/from16 v19, v15

    move/from16 v21, v18

    move/from16 v16, v20

    move v15, v5

    :goto_20
    move v8, v7

    move-object/from16 v18, v12

    move/from16 v12, v16

    move-object v7, v6

    move-wide/from16 v5, v28

    goto :goto_21

    :cond_31
    move-object/from16 v19, p18

    move v15, v5

    move-object/from16 v17, v8

    move/from16 v21, v18

    move/from16 v16, v20

    goto :goto_20

    .line 13
    :goto_21
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    const v4, 0x63f3c35c

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const-wide/16 v30, 0x10

    cmp-long v4, v9, v30

    if-eqz v4, :cond_32

    move-wide/from16 p8, v5

    move-wide/from16 v32, v9

    const/4 v4, 0x0

    goto :goto_24

    :cond_32
    const v4, 0x63f3c661

    .line 14
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 15
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v32

    cmp-long v4, v32, v30

    if-eqz v4, :cond_33

    move-wide/from16 p8, v5

    :goto_22
    const/4 v4, 0x0

    goto :goto_23

    .line 16
    :cond_33
    sget-object v4, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 17
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    .line 18
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 p8, v5

    .line 19
    iget-wide v4, v4, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v32, v4

    goto :goto_22

    .line 20
    :goto_23
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    :goto_24
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 21
    sget-object v5, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 22
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    .line 23
    check-cast v5, Landroidx/compose/material3/ColorScheme;

    .line 24
    iget-wide v5, v5, Landroidx/compose/material3/ColorScheme;->primary:J

    .line 25
    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v22

    .line 26
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v22, :cond_34

    if-ne v4, v3, :cond_35

    .line 27
    :cond_34
    new-instance v4, Landroidx/compose/ui/text/TextLinkStyles;

    .line 28
    new-instance v34, Landroidx/compose/ui/text/SpanStyle;

    const/16 v52, 0x0

    const v53, 0xeffe

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    sget-object v51, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    move-wide/from16 v35, v5

    invoke-direct/range {v34 .. v53}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    move-object/from16 v5, v34

    const/4 v6, 0x0

    .line 29
    invoke-direct {v4, v5, v6, v6, v6}, Landroidx/compose/ui/text/TextLinkStyles;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)V

    .line 30
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 31
    :cond_35
    check-cast v4, Landroidx/compose/ui/text/TextLinkStyles;

    and-int/lit8 v5, v27, 0xe

    const/4 v6, 0x4

    if-ne v5, v6, :cond_36

    goto :goto_25

    :cond_36
    const/16 v20, 0x0

    .line 32
    :goto_25
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int v5, v20, v5

    .line 33
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_37

    if-ne v6, v3, :cond_38

    .line 34
    :cond_37
    new-instance v3, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v3, v5, v4}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/AnnotatedString;->mapAnnotations(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v6

    .line 35
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 36
    :cond_38
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v7, :cond_39

    .line 37
    iget v4, v7, Landroidx/compose/ui/text/style/TextAlign;->value:I

    goto :goto_26

    :cond_39
    const/4 v4, 0x0

    :goto_26
    const v3, 0xfd6f50

    const/4 v5, 0x0

    move-object/from16 p6, v2

    move/from16 p13, v3

    move/from16 p10, v4

    move-object/from16 p7, v5

    move-wide/from16 p11, v13

    move-object/from16 p1, v19

    move-wide/from16 p4, v28

    move-wide/from16 p2, v32

    .line 38
    invoke-static/range {p1 .. p13}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJI)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-wide/from16 v13, p8

    move-wide/from16 v19, p11

    and-int/lit8 v5, v27, 0x70

    shr-int/lit8 v0, v21, 0xc

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v0, v5

    shl-int/lit8 v5, v21, 0x6

    const v21, 0xe000

    and-int v21, v5, v21

    or-int v0, v0, v21

    const/high16 v21, 0x70000

    and-int v21, v5, v21

    or-int v0, v0, v21

    const/high16 v21, 0x380000

    and-int v21, v5, v21

    or-int v0, v0, v21

    const/high16 v21, 0x1c00000

    and-int v21, v5, v21

    or-int v0, v0, v21

    const/high16 v21, 0xe000000

    and-int v5, v5, v21

    or-int/2addr v0, v5

    shr-int/lit8 v5, v27, 0x9

    and-int/lit8 v5, v5, 0xe

    move-object/from16 p10, p19

    move/from16 p11, v0

    move-object/from16 p3, v2

    move/from16 p12, v5

    move-object/from16 p1, v6

    move/from16 p5, v8

    move-object/from16 p2, v11

    move/from16 p6, v12

    move/from16 p7, v15

    move/from16 p8, v16

    move-object/from16 p9, v17

    move-object/from16 p4, v18

    .line 39
    invoke-static/range {p1 .. p12}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-CL7eQgs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/GapComposer;II)V

    move-object/from16 v12, p4

    move/from16 v0, p5

    move/from16 v2, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v8, p9

    move v15, v5

    move/from16 v16, v6

    move-object/from16 v17, v8

    move-object/from16 v18, v12

    move-wide/from16 v5, v28

    move-wide/from16 v55, v13

    move v13, v0

    move v14, v2

    move-object v2, v11

    move-wide/from16 v11, v19

    move-object/from16 v19, v3

    move-object/from16 v57, v7

    move-object v7, v4

    move-wide v3, v9

    move-wide/from16 v8, v55

    move-object/from16 v10, v57

    goto :goto_27

    .line 40
    :cond_3a
    invoke-virtual/range {p19 .. p19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v7, p6

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-wide v3, v9

    move-object v2, v11

    move-wide v11, v13

    move-wide/from16 v8, p7

    move/from16 v13, p12

    move/from16 v14, p13

    move-object v10, v6

    move-wide/from16 v5, p4

    .line 41
    :goto_27
    invoke-virtual/range {p19 .. p19}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_3b

    move-object/from16 v20, v0

    new-instance v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda3;

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v54, v20

    move/from16 v20, p20

    invoke-direct/range {v0 .. v22}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;III)V

    move-object v1, v0

    move-object/from16 v0, v54

    .line 42
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3b
    return-void
.end method
