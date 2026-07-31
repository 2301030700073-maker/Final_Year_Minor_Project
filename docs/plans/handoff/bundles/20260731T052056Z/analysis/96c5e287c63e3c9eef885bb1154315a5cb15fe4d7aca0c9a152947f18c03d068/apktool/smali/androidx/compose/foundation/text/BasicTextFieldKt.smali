.class public abstract Landroidx/compose/foundation/text/BasicTextFieldKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/high16 v0, 0x42200000    # 40.0f

    .line 2
    .line 3
    invoke-static {v0, v0}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v0, p15

    const v3, 0x78d0d0fc

    .line 1
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p16, v3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x20

    goto :goto_1

    :cond_1
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v3, v7

    move-object/from16 v15, p2

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x100

    goto :goto_2

    :cond_2
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v3, v7

    move/from16 v7, p3

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v10

    const/16 v12, 0x800

    if-eqz v10, :cond_3

    move v10, v12

    goto :goto_3

    :cond_3
    const/16 v10, 0x400

    :goto_3
    or-int/2addr v3, v10

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v10

    const/16 v13, 0x2000

    const/16 v16, 0x4000

    if-eqz v10, :cond_4

    move/from16 v10, v16

    goto :goto_4

    :cond_4
    move v10, v13

    :goto_4
    or-int/2addr v3, v10

    move-object/from16 v10, p4

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/high16 v17, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v17, 0x10000

    :goto_5
    or-int v3, v3, v17

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/high16 v17, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v17, 0x80000

    :goto_6
    or-int v3, v3, v17

    move-object/from16 v5, p6

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/high16 v18, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v18, 0x400000

    :goto_7
    or-int v3, v3, v18

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_8

    const/high16 v18, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v18, 0x2000000

    :goto_8
    or-int v3, v3, v18

    move/from16 v14, p8

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_9

    const/high16 v19, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v19, 0x10000000

    :goto_9
    or-int v3, v3, v19

    move/from16 v9, p9

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v17, 0x4

    goto :goto_a

    :cond_a
    const/16 v17, 0x2

    :goto_a
    const/high16 v20, 0x30000

    or-int v17, v20, v17

    move-object/from16 v9, p10

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const/16 v19, 0x20

    goto :goto_b

    :cond_b
    const/16 v19, 0x10

    :goto_b
    or-int v11, v17, v19

    or-int/lit16 v11, v11, 0x180

    move-object/from16 v9, p12

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    move/from16 v21, v12

    goto :goto_c

    :cond_c
    const/16 v21, 0x400

    :goto_c
    or-int v11, v11, v21

    move-object/from16 v12, p13

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v13, v16

    :cond_d
    or-int v16, v11, v13

    const v11, 0x12492493

    and-int/2addr v11, v3

    const v13, 0x12492492

    if-ne v11, v13, :cond_f

    const v11, 0x12493

    and-int v11, v16, v11

    const v13, 0x12492

    if-eq v11, v13, :cond_e

    goto :goto_d

    :cond_e
    const/4 v11, 0x0

    goto :goto_e

    :cond_f
    :goto_d
    const/4 v11, 0x1

    :goto_e
    and-int/lit8 v13, v3, 0x1

    invoke-virtual {v0, v13, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v11, p16, 0x1

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v11, :cond_11

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v11

    if-eqz v11, :cond_10

    goto :goto_f

    .line 2
    :cond_10
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v19, p11

    goto :goto_10

    .line 3
    :cond_11
    :goto_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v13, :cond_12

    .line 4
    new-instance v11, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    const/16 v9, 0x18

    invoke-direct {v11, v9}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 5
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 6
    :cond_12
    move-object v9, v11

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object/from16 v19, v9

    .line 7
    :goto_10
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v13, :cond_13

    .line 9
    new-instance v9, Landroidx/compose/ui/text/input/TextFieldValue;

    const-wide/16 v10, 0x0

    const/4 v4, 0x6

    invoke-direct {v9, v4, v10, v11, v1}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(IJLjava/lang/String;)V

    .line 10
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v9

    .line 11
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 12
    :cond_13
    move-object v4, v9

    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 13
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 14
    iget-wide v10, v9, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 15
    iget-object v9, v9, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    .line 16
    new-instance v5, Landroidx/compose/ui/text/input/TextFieldValue;

    new-instance v7, Landroidx/compose/ui/text/AnnotatedString;

    invoke-direct {v7, v1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-direct {v5, v7, v10, v11, v9}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;)V

    .line 18
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v7

    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_14

    if-ne v9, v13, :cond_15

    .line 20
    :cond_14
    new-instance v9, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    const/16 v7, 0xa

    invoke-direct {v9, v7, v5, v4}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 22
    :cond_15
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v9, v0}, Landroidx/compose/runtime/Updater;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;)V

    and-int/lit8 v7, v3, 0xe

    const/4 v9, 0x4

    if-ne v7, v9, :cond_16

    const/4 v7, 0x1

    goto :goto_11

    :cond_16
    const/4 v7, 0x0

    .line 23
    :goto_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_17

    if-ne v9, v13, :cond_18

    .line 24
    :cond_17
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v9

    .line 25
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 26
    :cond_18
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 27
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance v7, Landroidx/compose/ui/text/input/ImeOptions;

    .line 29
    iget v10, v6, Landroidx/compose/foundation/text/KeyboardOptions;->keyboardType:I

    .line 30
    new-instance v11, Landroidx/compose/ui/text/input/KeyboardType;

    invoke-direct {v11, v10}, Landroidx/compose/ui/text/input/KeyboardType;-><init>(I)V

    const/16 v22, 0x0

    if-nez v10, :cond_19

    move-object/from16 v11, v22

    :cond_19
    if-eqz v11, :cond_1a

    .line 31
    iget v10, v11, Landroidx/compose/ui/text/input/KeyboardType;->value:I

    move v11, v10

    goto :goto_12

    :cond_1a
    const/4 v11, 0x1

    .line 32
    :goto_12
    iget v10, v6, Landroidx/compose/foundation/text/KeyboardOptions;->imeAction:I

    .line 33
    new-instance v1, Landroidx/compose/ui/text/input/ImeAction;

    invoke-direct {v1, v10}, Landroidx/compose/ui/text/input/ImeAction;-><init>(I)V

    move-object/from16 p11, v1

    const/4 v1, -0x1

    if-ne v10, v1, :cond_1b

    move-object/from16 v1, v22

    goto :goto_13

    :cond_1b
    move-object/from16 v1, p11

    :goto_13
    if-eqz v1, :cond_1c

    .line 34
    iget v1, v1, Landroidx/compose/ui/text/input/ImeAction;->value:I

    :goto_14
    move-object v10, v13

    goto :goto_15

    :cond_1c
    const/4 v1, 0x1

    goto :goto_14

    .line 35
    :goto_15
    sget-object v13, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    move v12, v1

    move-object/from16 p11, v5

    move-object v1, v9

    move-object v5, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 36
    invoke-direct/range {v7 .. v13}, Landroidx/compose/ui/text/input/ImeOptions;-><init>(ZIZIILandroidx/compose/ui/text/intl/LocaleList;)V

    move/from16 v17, v9

    move/from16 v21, v10

    xor-int/lit8 v15, p7, 0x1

    if-eqz p7, :cond_1d

    move/from16 v9, v21

    goto :goto_16

    :cond_1d
    move/from16 v9, p9

    :goto_16
    if-eqz p7, :cond_1e

    move/from16 v10, v21

    goto :goto_17

    :cond_1e
    move v10, v14

    .line 37
    :goto_17
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    and-int/lit8 v11, v3, 0x70

    const/16 v12, 0x20

    if-ne v11, v12, :cond_1f

    move/from16 v17, v21

    :cond_1f
    or-int v8, v8, v17

    .line 38
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v8, :cond_20

    if-ne v11, v5, :cond_21

    .line 39
    :cond_20
    new-instance v11, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    const/4 v5, 0x3

    invoke-direct {v11, v2, v4, v1, v5}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 40
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 41
    :cond_21
    move-object v8, v11

    check-cast v8, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v1, v3, 0x380

    shr-int/lit8 v4, v3, 0x6

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v1, v4

    shl-int/lit8 v4, v16, 0x9

    const v5, 0xe000

    and-int v11, v4, v5

    or-int/2addr v1, v11

    or-int v1, v1, v20

    const/high16 v11, 0x380000

    and-int/2addr v11, v4

    or-int/2addr v1, v11

    const/high16 v11, 0x1c00000

    and-int/2addr v4, v11

    or-int v23, v1, v4

    shr-int/lit8 v1, v3, 0xf

    and-int/lit16 v1, v1, 0x380

    and-int/lit16 v4, v3, 0x1c00

    or-int/2addr v1, v4

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    or-int v24, v1, v20

    move/from16 v20, p3

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v21, p14

    move-object/from16 v22, v0

    move-object/from16 v18, v7

    move/from16 v17, v9

    move/from16 v16, v10

    move-object/from16 v12, v19

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v19, p6

    move-object/from16 v7, p11

    .line 42
    invoke-static/range {v7 .. v24}, Landroidx/compose/foundation/text/BasicTextKt;->CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    goto :goto_18

    .line 43
    :cond_22
    invoke-virtual/range {p15 .. p15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v12, p11

    .line 44
    :goto_18
    invoke-virtual/range {p15 .. p15}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_23

    move-object v1, v0

    new-instance v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move-object/from16 v25, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    move-object/from16 v1, v25

    .line 45
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_23
    return-void
.end method
