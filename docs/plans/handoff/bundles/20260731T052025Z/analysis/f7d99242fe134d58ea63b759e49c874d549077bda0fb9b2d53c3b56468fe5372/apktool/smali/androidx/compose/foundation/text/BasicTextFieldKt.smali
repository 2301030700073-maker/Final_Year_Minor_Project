.class public abstract Landroidx/compose/foundation/text/BasicTextFieldKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/high16 v0, 0x42200000    # 40.0f

    .line 2
    .line 3
    invoke-static {v0, v0}, Landroidx/work/OperationKt;->DpSize-YgX7TsA(FF)J

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final BasicTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v3, p7

    .line 33
    move-object/from16 v4, p15

    check-cast v4, Landroidx/compose/runtime/GapComposer;

    const v5, -0x39e1fa71

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int v5, p16, v5

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x20

    goto :goto_1

    :cond_1
    const/16 v8, 0x10

    :goto_1
    or-int/2addr v5, v8

    move-object/from16 v8, p2

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x100

    goto :goto_2

    :cond_2
    const/16 v11, 0x80

    :goto_2
    or-int/2addr v5, v11

    move/from16 v13, p3

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x800

    goto :goto_3

    :cond_3
    const/16 v11, 0x400

    :goto_3
    or-int/2addr v5, v11

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v15

    const/16 v16, 0x2000

    const/16 v17, 0x4000

    if-eqz v15, :cond_4

    move/from16 v15, v17

    goto :goto_4

    :cond_4
    move/from16 v15, v16

    :goto_4
    or-int/2addr v5, v15

    move-object/from16 v15, p4

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/high16 v18, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v18, 0x10000

    :goto_5
    or-int v5, v5, v18

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/high16 v18, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v18, 0x80000

    :goto_6
    or-int v5, v5, v18

    move-object/from16 v6, p6

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/high16 v18, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v18, 0x400000

    :goto_7
    or-int v5, v5, v18

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_8

    const/high16 v18, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v18, 0x2000000

    :goto_8
    or-int v5, v5, v18

    move/from16 v14, p8

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_9

    const/high16 v19, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v19, 0x10000000

    :goto_9
    or-int v5, v5, v19

    move/from16 v14, p9

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0x4

    goto :goto_a

    :cond_a
    const/16 v19, 0x2

    :goto_a
    const/high16 v20, 0x30000

    or-int v19, v20, v19

    move-object/from16 v9, p10

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const/16 v21, 0x20

    goto :goto_b

    :cond_b
    const/16 v21, 0x10

    :goto_b
    or-int v11, v19, v21

    or-int/lit16 v11, v11, 0x180

    move-object/from16 v12, p12

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    const/16 v18, 0x800

    goto :goto_c

    :cond_c
    const/16 v18, 0x400

    :goto_c
    or-int v11, v11, v18

    move-object/from16 v10, p13

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    move/from16 v16, v17

    :cond_d
    or-int v11, v11, v16

    const v16, 0x12492493

    and-int v7, v5, v16

    const v6, 0x12492492

    const/16 v16, 0x1

    if-ne v7, v6, :cond_f

    const v6, 0x12493

    and-int/2addr v6, v11

    const v7, 0x12492

    if-eq v6, v7, :cond_e

    goto :goto_d

    :cond_e
    const/4 v6, 0x0

    goto :goto_e

    :cond_f
    :goto_d
    move/from16 v6, v16

    :goto_e
    and-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v6, p16, 0x1

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v6, :cond_11

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_f

    .line 34
    :cond_10
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v6, p11

    goto :goto_10

    .line 35
    :cond_11
    :goto_f
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v7, :cond_12

    .line 36
    new-instance v6, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    const/16 v8, 0x11

    invoke-direct {v6, v8}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 37
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 38
    :cond_12
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 39
    :goto_10
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    move v8, v11

    .line 40
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/text/KeyboardOptions;->toImeOptions$foundation(Z)Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v11

    move/from16 v19, v8

    xor-int/lit8 v8, v3, 0x1

    if-eqz v3, :cond_13

    move/from16 v10, v16

    goto :goto_11

    :cond_13
    move v10, v14

    :goto_11
    if-eqz v3, :cond_14

    move/from16 v9, v16

    goto :goto_12

    :cond_14
    move/from16 v9, p8

    :goto_12
    and-int/lit8 v2, v5, 0xe

    const/4 v3, 0x4

    if-ne v2, v3, :cond_15

    move/from16 v2, v16

    goto :goto_13

    :cond_15
    const/4 v2, 0x0

    :goto_13
    and-int/lit8 v3, v5, 0x70

    move/from16 p11, v2

    const/16 v2, 0x20

    if-ne v3, v2, :cond_16

    goto :goto_14

    :cond_16
    const/16 v16, 0x0

    :goto_14
    or-int v2, p11, v16

    .line 41
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_17

    if-ne v3, v7, :cond_18

    .line 42
    :cond_17
    new-instance v3, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    const/4 v2, 0x4

    invoke-direct {v3, v2, v0, v1}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 44
    :cond_18
    check-cast v3, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v2, v5, 0x38e

    shr-int/lit8 v7, v5, 0x6

    and-int/lit16 v7, v7, 0x1c00

    or-int/2addr v2, v7

    shl-int/lit8 v7, v19, 0x9

    const v16, 0xe000

    and-int v17, v7, v16

    or-int v2, v2, v17

    or-int v2, v2, v20

    const/high16 v17, 0x380000

    and-int v17, v7, v17

    or-int v2, v2, v17

    const/high16 v17, 0x1c00000

    and-int v7, v7, v17

    or-int v17, v2, v7

    shr-int/lit8 v2, v5, 0xf

    and-int/lit16 v2, v2, 0x380

    and-int/lit16 v7, v5, 0x1c00

    or-int/2addr v2, v7

    and-int v5, v5, v16

    or-int/2addr v2, v5

    or-int v18, v2, v20

    const/4 v14, 0x0

    move-object/from16 v2, p2

    move-object/from16 v7, p13

    move-object v1, v3

    move-object/from16 v16, v4

    move-object v5, v6

    move-object v6, v12

    move-object v3, v15

    move-object/from16 v12, p6

    move-object/from16 v4, p10

    move-object/from16 v15, p14

    .line 45
    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/text/BasicTextKt;->CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object v12, v5

    goto :goto_15

    :cond_19
    move-object/from16 v16, v4

    .line 46
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v12, p11

    .line 47
    :goto_15
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_1a

    move-object v1, v0

    new-instance v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda5;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move-object/from16 v22, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    move-object/from16 v1, v22

    .line 48
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1a
    return-void
.end method

.method public static final BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    move/from16 v9, p8

    .line 1
    move-object/from16 v0, p16

    check-cast v0, Landroidx/compose/runtime/GapComposer;

    const v3, 0x78d0d0fc

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p17, v3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v3, v6

    move-object/from16 v12, p2

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v3, v6

    move/from16 v6, p3

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x800

    goto :goto_3

    :cond_3
    const/16 v11, 0x400

    :goto_3
    or-int/2addr v3, v11

    move/from16 v11, p4

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v15

    const/16 v16, 0x2000

    const/16 v17, 0x4000

    if-eqz v15, :cond_4

    move/from16 v15, v17

    goto :goto_4

    :cond_4
    move/from16 v15, v16

    :goto_4
    or-int/2addr v3, v15

    move-object/from16 v15, p5

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/high16 v18, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v18, 0x10000

    :goto_5
    or-int v3, v3, v18

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/high16 v18, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v18, 0x80000

    :goto_6
    or-int v3, v3, v18

    move-object/from16 v4, p7

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/high16 v18, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v18, 0x400000

    :goto_7
    or-int v3, v3, v18

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_8

    const/high16 v18, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v18, 0x2000000

    :goto_8
    or-int v3, v3, v18

    move/from16 v8, p9

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_9

    const/high16 v19, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v19, 0x10000000

    :goto_9
    or-int v3, v3, v19

    move/from16 v10, p10

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v20, 0x4

    goto :goto_a

    :cond_a
    const/16 v20, 0x2

    :goto_a
    const/high16 v21, 0x30000

    or-int v20, v21, v20

    move-object/from16 v13, p11

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v18, 0x20

    goto :goto_b

    :cond_b
    const/16 v18, 0x10

    :goto_b
    or-int v14, v20, v18

    or-int/lit16 v14, v14, 0x180

    move-object/from16 v5, p13

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v22, 0x800

    goto :goto_c

    :cond_c
    const/16 v22, 0x400

    :goto_c
    or-int v14, v14, v22

    move-object/from16 v4, p14

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    move/from16 v16, v17

    :cond_d
    or-int v14, v14, v16

    const v16, 0x12492493

    and-int v4, v3, v16

    const v5, 0x12492492

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-ne v4, v5, :cond_f

    const v4, 0x12493

    and-int/2addr v4, v14

    const v5, 0x12492

    if-eq v4, v5, :cond_e

    goto :goto_d

    :cond_e
    move/from16 v4, v16

    goto :goto_e

    :cond_f
    :goto_d
    move/from16 v4, v17

    :goto_e
    and-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v4, p17, 0x1

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v4, :cond_11

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_f

    .line 2
    :cond_10
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v4, p12

    goto :goto_10

    .line 3
    :cond_11
    :goto_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_12

    .line 4
    new-instance v4, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    const/16 v6, 0x11

    invoke-direct {v4, v6}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 5
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 6
    :cond_12
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 7
    :goto_10
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_13

    .line 9
    new-instance v6, Landroidx/compose/ui/text/input/TextFieldValue;

    const-wide/16 v10, 0x0

    move-object/from16 p12, v4

    const/4 v4, 0x6

    invoke-direct {v6, v4, v10, v11, v1}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(IJLjava/lang/String;)V

    invoke-static {v6}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v6

    .line 10
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_11

    :cond_13
    move-object/from16 p12, v4

    .line 11
    :goto_11
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 12
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 13
    invoke-static {v4, v1}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v10

    .line 14
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v4, :cond_14

    if-ne v11, v5, :cond_15

    .line 16
    :cond_14
    new-instance v11, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    const/16 v4, 0xd

    invoke-direct {v11, v4, v10, v6}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 18
    :cond_15
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-static {v11, v0}, Landroidx/compose/runtime/Updater;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v4, v3, 0xe

    const/4 v11, 0x4

    if-ne v4, v11, :cond_16

    move/from16 v4, v17

    goto :goto_12

    :cond_16
    move/from16 v4, v16

    .line 19
    :goto_12
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v4, :cond_17

    if-ne v11, v5, :cond_18

    .line 20
    :cond_17
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v11

    .line 21
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 22
    :cond_18
    check-cast v11, Landroidx/compose/runtime/MutableState;

    move/from16 v4, v21

    .line 23
    invoke-virtual {v7, v9}, Landroidx/compose/foundation/text/KeyboardOptions;->toImeOptions$foundation(Z)Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v21

    xor-int/lit8 v18, v9, 0x1

    if-eqz v9, :cond_19

    move/from16 v20, v17

    goto :goto_13

    :cond_19
    move/from16 v20, p10

    :goto_13
    if-eqz v9, :cond_1a

    move/from16 v19, v17

    :goto_14
    const/16 v22, 0x20

    goto :goto_15

    :cond_1a
    move/from16 v19, v8

    goto :goto_14

    .line 24
    :goto_15
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v23

    move/from16 p16, v4

    and-int/lit8 v4, v3, 0x70

    move/from16 v1, v22

    if-ne v4, v1, :cond_1b

    move/from16 v16, v17

    :cond_1b
    or-int v1, v23, v16

    .line 25
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_1c

    if-ne v4, v5, :cond_1d

    .line 26
    :cond_1c
    new-instance v4, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v4, v2, v6, v11, v1}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 27
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 28
    :cond_1d
    move-object v11, v4

    check-cast v11, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v1, v3, 0x380

    shr-int/lit8 v4, v3, 0x6

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v1, v4

    shl-int/lit8 v4, v14, 0x9

    const v5, 0xe000

    and-int v6, v4, v5

    or-int/2addr v1, v6

    or-int v1, v1, p16

    const/high16 v6, 0x380000

    and-int/2addr v6, v4

    or-int/2addr v1, v6

    const/high16 v6, 0x1c00000

    and-int/2addr v4, v6

    or-int v27, v1, v4

    shr-int/lit8 v1, v3, 0xf

    and-int/lit16 v1, v1, 0x380

    and-int/lit16 v4, v3, 0x1c00

    or-int/2addr v1, v4

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    or-int v28, v1, p16

    move/from16 v23, p3

    move/from16 v24, p4

    move-object/from16 v22, p7

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v25, p15

    move-object/from16 v26, v0

    move-object v14, v13

    move-object v13, v15

    move-object/from16 v15, p12

    .line 29
    invoke-static/range {v10 .. v28}, Landroidx/compose/foundation/text/BasicTextKt;->CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object v13, v15

    goto :goto_16

    :cond_1e
    move-object/from16 v26, v0

    .line 30
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v13, p12

    .line 31
    :goto_16
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_1f

    move-object v1, v0

    new-instance v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p17

    move-object/from16 v29, v1

    move v10, v8

    move-object/from16 v1, p0

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v17}, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    move-object/from16 v1, v29

    .line 32
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void
.end method
