.class public abstract Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldLabelKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$725874656:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 8
    .line 9
    const v2, 0x2b43f7e0

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldLabelKt;->lambda$725874656:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    return-void
.end method

.method public static final TextFieldLabel(Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v4, -0x38bd3cc3

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    const/4 v4, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v4, 0x2

    .line 26
    :goto_0
    or-int/2addr v4, v2

    .line 27
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    const/16 v5, 0x20

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v5, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr v4, v5

    .line 39
    and-int/lit8 v5, v4, 0x13

    .line 40
    .line 41
    const/16 v6, 0x12

    .line 42
    .line 43
    const/4 v7, 0x1

    .line 44
    if-eq v5, v6, :cond_2

    .line 45
    .line 46
    move v5, v7

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 v5, 0x0

    .line 49
    :goto_2
    and-int/2addr v4, v7

    .line 50
    invoke-virtual {v3, v4, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_4

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    const-string v4, "*"

    .line 59
    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move-object v4, v0

    .line 66
    :goto_3
    const/16 v22, 0x0

    .line 67
    .line 68
    const v23, 0x3fffe

    .line 69
    .line 70
    .line 71
    move-object/from16 v20, v3

    .line 72
    .line 73
    move-object v3, v4

    .line 74
    const/4 v4, 0x0

    .line 75
    const-wide/16 v5, 0x0

    .line 76
    .line 77
    const-wide/16 v7, 0x0

    .line 78
    .line 79
    const-wide/16 v9, 0x0

    .line 80
    .line 81
    const/4 v11, 0x0

    .line 82
    const-wide/16 v12, 0x0

    .line 83
    .line 84
    const/4 v14, 0x0

    .line 85
    const/4 v15, 0x0

    .line 86
    const/16 v16, 0x0

    .line 87
    .line 88
    const/16 v17, 0x0

    .line 89
    .line 90
    const/16 v18, 0x0

    .line 91
    .line 92
    const/16 v19, 0x0

    .line 93
    .line 94
    const/16 v21, 0x0

    .line 95
    .line 96
    invoke-static/range {v3 .. v23}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_4
    move-object/from16 v20, v3

    .line 101
    .line 102
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 103
    .line 104
    .line 105
    :goto_4
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-eqz v3, :cond_5

    .line 110
    .line 111
    new-instance v4, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldLabelKt$$ExternalSyntheticLambda0;

    .line 112
    .line 113
    invoke-direct {v4, v2, v0, v1}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldLabelKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 117
    .line 118
    :cond_5
    return-void
.end method

.method public static final TextFieldOutlined(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v2, p1

    move/from16 v13, p5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    move-object/from16 v0, p7

    check-cast v0, Landroidx/compose/runtime/GapComposer;

    const v1, -0x6679735d

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    or-int v3, p8, v3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v3, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x800

    goto :goto_2

    :cond_2
    const/16 v7, 0x400

    :goto_2
    or-int/2addr v3, v7

    or-int/lit16 v3, v3, 0x6000

    move/from16 v7, p3

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x20000

    goto :goto_3

    :cond_3
    const/high16 v8, 0x10000

    :goto_3
    or-int/2addr v3, v8

    const/high16 v8, 0x180000

    or-int/2addr v3, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_4

    const/high16 v9, 0x800000

    goto :goto_4

    :cond_4
    const/high16 v9, 0x400000

    :goto_4
    or-int/2addr v3, v9

    move/from16 v9, p4

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_5

    const/high16 v10, 0x4000000

    goto :goto_5

    :cond_5
    const/high16 v10, 0x2000000

    :goto_5
    or-int/2addr v3, v10

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_6

    const/high16 v10, 0x20000000

    goto :goto_6

    :cond_6
    const/high16 v10, 0x10000000

    :goto_6
    or-int/2addr v3, v10

    move-object/from16 v11, p6

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_7
    move v5, v4

    :goto_7
    const v10, 0x12492493

    and-int/2addr v10, v3

    const v12, 0x12492492

    if-ne v10, v12, :cond_9

    and-int/lit8 v10, v5, 0x3

    if-eq v10, v4, :cond_8

    goto :goto_8

    :cond_8
    move v4, v8

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v4, 0x1

    :goto_9
    and-int/lit8 v10, v3, 0x1

    invoke-virtual {v0, v10, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v13, :cond_a

    .line 384
    sget-object v4, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldCommonKt;->LINE_BREAK:Lkotlin/text/Regex;

    .line 385
    new-instance v4, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    const/4 v10, 0x3

    invoke-direct {v4, v10, v2}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    goto :goto_a

    :cond_a
    move-object v4, v2

    .line 386
    :goto_a
    invoke-static {v6, v8}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldCommonKt;->selectLabel(Ljava/lang/String;Z)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    and-int/lit16 v6, v3, 0x38e

    shr-int/lit8 v10, v3, 0x6

    and-int/lit16 v12, v10, 0x1c00

    or-int/2addr v6, v12

    const v12, 0x30006000

    or-int v19, v6, v12

    shr-int/lit8 v3, v3, 0xf

    and-int/lit16 v3, v3, 0x1c00

    const/high16 v6, 0x70000

    shl-int/lit8 v5, v5, 0xf

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    const/high16 v5, 0x1c00000

    and-int/2addr v5, v10

    or-int v20, v3, v5

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v18, v0

    move-object v3, v1

    .line 387
    invoke-static/range {v3 .. v20}, Landroidx/compose/material3/CardKt;->OutlinedTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)V

    goto :goto_b

    :cond_b
    move-object/from16 v18, v0

    .line 388
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 389
    :goto_b
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_c

    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedKt$$ExternalSyntheticLambda0;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZZLandroidx/compose/foundation/text/KeyboardOptions;I)V

    .line 390
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method

.method public static final TextFieldOutlined(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/runtime/Composer;II)V
    .locals 35

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move/from16 v11, p11

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-object/from16 v0, p9

    .line 14
    .line 15
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v1, -0x2483edf0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    move-object/from16 v12, p0

    .line 24
    .line 25
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x2

    .line 34
    :goto_0
    or-int v1, p10, v1

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    const/16 v6, 0x20

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v6, 0x10

    .line 46
    .line 47
    :goto_1
    or-int/2addr v1, v6

    .line 48
    move-object/from16 v14, p2

    .line 49
    .line 50
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    const/16 v6, 0x100

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v6, 0x80

    .line 60
    .line 61
    :goto_2
    or-int/2addr v1, v6

    .line 62
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    const/16 v6, 0x800

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/16 v6, 0x400

    .line 72
    .line 73
    :goto_3
    or-int/2addr v1, v6

    .line 74
    or-int/lit16 v6, v1, 0x6000

    .line 75
    .line 76
    and-int/lit8 v7, v11, 0x20

    .line 77
    .line 78
    if-eqz v7, :cond_4

    .line 79
    .line 80
    const v6, 0x36000

    .line 81
    .line 82
    .line 83
    or-int/2addr v1, v6

    .line 84
    move v6, v1

    .line 85
    move/from16 v1, p4

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_4
    move/from16 v1, p4

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_5

    .line 95
    .line 96
    const/high16 v8, 0x20000

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_5
    const/high16 v8, 0x10000

    .line 100
    .line 101
    :goto_4
    or-int/2addr v6, v8

    .line 102
    :goto_5
    const/high16 v8, 0x180000

    .line 103
    .line 104
    or-int/2addr v8, v6

    .line 105
    and-int/lit16 v9, v11, 0x80

    .line 106
    .line 107
    if-eqz v9, :cond_6

    .line 108
    .line 109
    const/high16 v8, 0xd80000

    .line 110
    .line 111
    or-int/2addr v6, v8

    .line 112
    move v8, v6

    .line 113
    move/from16 v6, p5

    .line 114
    .line 115
    goto :goto_7

    .line 116
    :cond_6
    move/from16 v6, p5

    .line 117
    .line 118
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-eqz v10, :cond_7

    .line 123
    .line 124
    const/high16 v10, 0x800000

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_7
    const/high16 v10, 0x400000

    .line 128
    .line 129
    :goto_6
    or-int/2addr v8, v10

    .line 130
    :goto_7
    and-int/lit16 v10, v11, 0x100

    .line 131
    .line 132
    if-eqz v10, :cond_8

    .line 133
    .line 134
    const/high16 v13, 0x6000000

    .line 135
    .line 136
    or-int/2addr v8, v13

    .line 137
    move/from16 v13, p6

    .line 138
    .line 139
    goto :goto_9

    .line 140
    :cond_8
    move/from16 v13, p6

    .line 141
    .line 142
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    if-eqz v15, :cond_9

    .line 147
    .line 148
    const/high16 v15, 0x4000000

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_9
    const/high16 v15, 0x2000000

    .line 152
    .line 153
    :goto_8
    or-int/2addr v8, v15

    .line 154
    :goto_9
    and-int/lit16 v15, v11, 0x200

    .line 155
    .line 156
    if-eqz v15, :cond_a

    .line 157
    .line 158
    const/high16 v16, 0x30000000

    .line 159
    .line 160
    or-int v8, v8, v16

    .line 161
    .line 162
    move/from16 v5, p7

    .line 163
    .line 164
    goto :goto_b

    .line 165
    :cond_a
    move/from16 v5, p7

    .line 166
    .line 167
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 168
    .line 169
    .line 170
    move-result v16

    .line 171
    if-eqz v16, :cond_b

    .line 172
    .line 173
    const/high16 v16, 0x20000000

    .line 174
    .line 175
    goto :goto_a

    .line 176
    :cond_b
    const/high16 v16, 0x10000000

    .line 177
    .line 178
    :goto_a
    or-int v8, v8, v16

    .line 179
    .line 180
    :goto_b
    and-int/lit16 v3, v11, 0x400

    .line 181
    .line 182
    if-eqz v3, :cond_c

    .line 183
    .line 184
    const/16 v17, 0x6

    .line 185
    .line 186
    move-object/from16 v1, p8

    .line 187
    .line 188
    goto :goto_c

    .line 189
    :cond_c
    move-object/from16 v1, p8

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v17

    .line 195
    if-eqz v17, :cond_d

    .line 196
    .line 197
    const/16 v17, 0x4

    .line 198
    .line 199
    goto :goto_c

    .line 200
    :cond_d
    const/16 v17, 0x2

    .line 201
    .line 202
    :goto_c
    const v18, 0x12492493

    .line 203
    .line 204
    .line 205
    and-int v1, v8, v18

    .line 206
    .line 207
    move/from16 v18, v3

    .line 208
    .line 209
    const v3, 0x12492492

    .line 210
    .line 211
    .line 212
    const/16 v19, 0x1

    .line 213
    .line 214
    const/16 v20, 0x0

    .line 215
    .line 216
    if-ne v1, v3, :cond_f

    .line 217
    .line 218
    and-int/lit8 v1, v17, 0x3

    .line 219
    .line 220
    const/4 v3, 0x2

    .line 221
    if-eq v1, v3, :cond_e

    .line 222
    .line 223
    goto :goto_d

    .line 224
    :cond_e
    move/from16 v1, v20

    .line 225
    .line 226
    goto :goto_e

    .line 227
    :cond_f
    :goto_d
    move/from16 v1, v19

    .line 228
    .line 229
    :goto_e
    and-int/lit8 v3, v8, 0x1

    .line 230
    .line 231
    invoke-virtual {v0, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_16

    .line 236
    .line 237
    move v1, v15

    .line 238
    if-eqz v7, :cond_10

    .line 239
    .line 240
    move/from16 v15, v19

    .line 241
    .line 242
    goto :goto_f

    .line 243
    :cond_10
    move/from16 v15, p4

    .line 244
    .line 245
    :goto_f
    if-eqz v9, :cond_11

    .line 246
    .line 247
    move/from16 v6, v20

    .line 248
    .line 249
    :cond_11
    if-eqz v10, :cond_12

    .line 250
    .line 251
    goto :goto_10

    .line 252
    :cond_12
    move/from16 v20, v13

    .line 253
    .line 254
    :goto_10
    if-eqz v1, :cond_13

    .line 255
    .line 256
    move/from16 v24, v19

    .line 257
    .line 258
    goto :goto_11

    .line 259
    :cond_13
    move/from16 v24, v5

    .line 260
    .line 261
    :goto_11
    if-eqz v18, :cond_14

    .line 262
    .line 263
    sget-object v1, Landroidx/compose/foundation/text/KeyboardOptions;->Default:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 264
    .line 265
    move-object/from16 v22, v1

    .line 266
    .line 267
    goto :goto_12

    .line 268
    :cond_14
    move-object/from16 v22, p8

    .line 269
    .line 270
    :goto_12
    if-eqz v24, :cond_15

    .line 271
    .line 272
    sget-object v1, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldCommonKt;->LINE_BREAK:Lkotlin/text/Regex;

    .line 273
    .line 274
    new-instance v1, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 275
    .line 276
    const/4 v3, 0x4

    .line 277
    invoke-direct {v1, v3, v2}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 278
    .line 279
    .line 280
    move-object v13, v1

    .line 281
    goto :goto_13

    .line 282
    :cond_15
    move-object v13, v2

    .line 283
    :goto_13
    invoke-static {v4, v6}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldCommonKt;->selectLabel(Ljava/lang/String;Z)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 284
    .line 285
    .line 286
    move-result-object v18

    .line 287
    and-int/lit16 v1, v8, 0x38e

    .line 288
    .line 289
    shr-int/lit8 v3, v8, 0x6

    .line 290
    .line 291
    and-int/lit16 v5, v3, 0x1c00

    .line 292
    .line 293
    or-int/2addr v1, v5

    .line 294
    const v5, 0x30006000

    .line 295
    .line 296
    .line 297
    or-int v31, v1, v5

    .line 298
    .line 299
    shr-int/lit8 v1, v8, 0xf

    .line 300
    .line 301
    and-int/lit16 v1, v1, 0x1c00

    .line 302
    .line 303
    const/high16 v5, 0x70000

    .line 304
    .line 305
    shl-int/lit8 v7, v17, 0xf

    .line 306
    .line 307
    and-int/2addr v5, v7

    .line 308
    or-int/2addr v1, v5

    .line 309
    const/high16 v5, 0x1c00000

    .line 310
    .line 311
    and-int/2addr v3, v5

    .line 312
    or-int v32, v1, v3

    .line 313
    .line 314
    const/16 v33, 0x0

    .line 315
    .line 316
    const v34, 0x7d5da0

    .line 317
    .line 318
    .line 319
    const/16 v16, 0x0

    .line 320
    .line 321
    const/16 v17, 0x0

    .line 322
    .line 323
    const/16 v19, 0x0

    .line 324
    .line 325
    const/16 v21, 0x0

    .line 326
    .line 327
    const/16 v23, 0x0

    .line 328
    .line 329
    const/16 v25, 0x0

    .line 330
    .line 331
    const/16 v26, 0x0

    .line 332
    .line 333
    const/16 v27, 0x0

    .line 334
    .line 335
    const/16 v28, 0x0

    .line 336
    .line 337
    const/16 v29, 0x0

    .line 338
    .line 339
    move-object/from16 v30, v0

    .line 340
    .line 341
    invoke-static/range {v12 .. v34}, Landroidx/compose/material3/CardKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 342
    .line 343
    .line 344
    move v5, v15

    .line 345
    move/from16 v7, v20

    .line 346
    .line 347
    move-object/from16 v9, v22

    .line 348
    .line 349
    move/from16 v8, v24

    .line 350
    .line 351
    goto :goto_14

    .line 352
    :cond_16
    move-object/from16 v30, v0

    .line 353
    .line 354
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 355
    .line 356
    .line 357
    move-object/from16 v9, p8

    .line 358
    .line 359
    move v8, v5

    .line 360
    move v7, v13

    .line 361
    move/from16 v5, p4

    .line 362
    .line 363
    :goto_14
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 364
    .line 365
    .line 366
    move-result-object v12

    .line 367
    if-eqz v12, :cond_17

    .line 368
    .line 369
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedKt$$ExternalSyntheticLambda1;

    .line 370
    .line 371
    move-object/from16 v1, p0

    .line 372
    .line 373
    move-object/from16 v3, p2

    .line 374
    .line 375
    move/from16 v10, p10

    .line 376
    .line 377
    invoke-direct/range {v0 .. v11}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZZZLandroidx/compose/foundation/text/KeyboardOptions;II)V

    .line 378
    .line 379
    .line 380
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 381
    .line 382
    :cond_17
    return-void
.end method

.method public static final TextFieldOutlinedEmailAddress(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLandroidx/compose/runtime/Composer;II)V
    .locals 32

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
    move/from16 v7, p7

    .line 8
    .line 9
    move/from16 v8, p8

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-object/from16 v0, p6

    .line 18
    .line 19
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    const v1, -0x4c083fe6

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    .line 27
    move-object/from16 v9, p0

    .line 28
    .line 29
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v5, 0x4

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    move v1, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x2

    .line 39
    :goto_0
    or-int/2addr v1, v7

    .line 40
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    const/16 v6, 0x20

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/16 v6, 0x10

    .line 50
    .line 51
    :goto_1
    or-int/2addr v1, v6

    .line 52
    and-int/lit16 v6, v7, 0x180

    .line 53
    .line 54
    if-nez v6, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    const/16 v6, 0x100

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/16 v6, 0x80

    .line 66
    .line 67
    :goto_2
    or-int/2addr v1, v6

    .line 68
    :cond_3
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_4

    .line 73
    .line 74
    const/16 v6, 0x800

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    const/16 v6, 0x400

    .line 78
    .line 79
    :goto_3
    or-int/2addr v1, v6

    .line 80
    and-int/lit8 v6, v8, 0x10

    .line 81
    .line 82
    if-eqz v6, :cond_5

    .line 83
    .line 84
    or-int/lit16 v1, v1, 0x6000

    .line 85
    .line 86
    move/from16 v10, p4

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_5
    move/from16 v10, p4

    .line 90
    .line 91
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-eqz v11, :cond_6

    .line 96
    .line 97
    const/16 v11, 0x4000

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_6
    const/16 v11, 0x2000

    .line 101
    .line 102
    :goto_4
    or-int/2addr v1, v11

    .line 103
    :goto_5
    const/high16 v11, 0x1b0000

    .line 104
    .line 105
    or-int/2addr v11, v1

    .line 106
    and-int/lit16 v12, v8, 0x80

    .line 107
    .line 108
    if-eqz v12, :cond_7

    .line 109
    .line 110
    const/high16 v11, 0xdb0000

    .line 111
    .line 112
    or-int/2addr v1, v11

    .line 113
    move v11, v1

    .line 114
    move/from16 v1, p5

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_7
    move/from16 v1, p5

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    if-eqz v13, :cond_8

    .line 124
    .line 125
    const/high16 v13, 0x800000

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_8
    const/high16 v13, 0x400000

    .line 129
    .line 130
    :goto_6
    or-int/2addr v11, v13

    .line 131
    :goto_7
    const v13, 0x492493

    .line 132
    .line 133
    .line 134
    and-int/2addr v13, v11

    .line 135
    const v14, 0x492492

    .line 136
    .line 137
    .line 138
    const/4 v15, 0x0

    .line 139
    if-eq v13, v14, :cond_9

    .line 140
    .line 141
    const/4 v13, 0x1

    .line 142
    goto :goto_8

    .line 143
    :cond_9
    move v13, v15

    .line 144
    :goto_8
    and-int/lit8 v14, v11, 0x1

    .line 145
    .line 146
    invoke-virtual {v0, v14, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 147
    .line 148
    .line 149
    move-result v13

    .line 150
    if-eqz v13, :cond_d

    .line 151
    .line 152
    if-eqz v6, :cond_a

    .line 153
    .line 154
    move v6, v12

    .line 155
    const/4 v12, 0x1

    .line 156
    goto :goto_9

    .line 157
    :cond_a
    move v6, v12

    .line 158
    move v12, v10

    .line 159
    :goto_9
    if-eqz v6, :cond_b

    .line 160
    .line 161
    move/from16 v17, v15

    .line 162
    .line 163
    goto :goto_a

    .line 164
    :cond_b
    move/from16 v17, v1

    .line 165
    .line 166
    :goto_a
    sget-object v1, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldCommonKt;->LINE_BREAK:Lkotlin/text/Regex;

    .line 167
    .line 168
    new-instance v10, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 169
    .line 170
    invoke-direct {v10, v5, v2}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 178
    .line 179
    if-ne v1, v5, :cond_c

    .line 180
    .line 181
    new-instance v1, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 182
    .line 183
    const/16 v5, 0x14

    .line 184
    .line 185
    invoke-direct {v1, v5}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :cond_c
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 192
    .line 193
    invoke-static {v3, v15, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v4, v15}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldCommonKt;->selectLabel(Ljava/lang/String;Z)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    new-instance v5, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 202
    .line 203
    const/4 v6, 0x6

    .line 204
    const/16 v13, 0x79

    .line 205
    .line 206
    invoke-direct {v5, v6, v13}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(II)V

    .line 207
    .line 208
    .line 209
    and-int/lit8 v6, v11, 0xe

    .line 210
    .line 211
    shr-int/lit8 v13, v11, 0x3

    .line 212
    .line 213
    and-int/lit16 v13, v13, 0x1c00

    .line 214
    .line 215
    or-int/2addr v6, v13

    .line 216
    or-int/lit16 v6, v6, 0x6000

    .line 217
    .line 218
    shr-int/lit8 v11, v11, 0xc

    .line 219
    .line 220
    and-int/lit16 v11, v11, 0x1c00

    .line 221
    .line 222
    const/high16 v13, 0xc30000

    .line 223
    .line 224
    or-int v29, v11, v13

    .line 225
    .line 226
    const/16 v30, 0x0

    .line 227
    .line 228
    const v31, 0x7d5fa0

    .line 229
    .line 230
    .line 231
    const/4 v13, 0x0

    .line 232
    const/4 v14, 0x0

    .line 233
    const/16 v16, 0x0

    .line 234
    .line 235
    const/16 v18, 0x0

    .line 236
    .line 237
    const/16 v20, 0x0

    .line 238
    .line 239
    const/16 v21, 0x1

    .line 240
    .line 241
    const/16 v22, 0x0

    .line 242
    .line 243
    const/16 v23, 0x0

    .line 244
    .line 245
    const/16 v24, 0x0

    .line 246
    .line 247
    const/16 v25, 0x0

    .line 248
    .line 249
    const/16 v26, 0x0

    .line 250
    .line 251
    move-object/from16 v27, v0

    .line 252
    .line 253
    move-object v11, v1

    .line 254
    move-object/from16 v19, v5

    .line 255
    .line 256
    move/from16 v28, v6

    .line 257
    .line 258
    invoke-static/range {v9 .. v31}, Landroidx/compose/material3/CardKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 259
    .line 260
    .line 261
    move v5, v12

    .line 262
    move/from16 v6, v17

    .line 263
    .line 264
    goto :goto_b

    .line 265
    :cond_d
    move-object/from16 v27, v0

    .line 266
    .line 267
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 268
    .line 269
    .line 270
    move v6, v1

    .line 271
    move v5, v10

    .line 272
    :goto_b
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    if-eqz v9, :cond_e

    .line 277
    .line 278
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;

    .line 279
    .line 280
    move-object/from16 v1, p0

    .line 281
    .line 282
    invoke-direct/range {v0 .. v8}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZII)V

    .line 283
    .line 284
    .line 285
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 286
    .line 287
    :cond_e
    return-void
.end method

.method public static final TextFieldOutlinedFakeSelect(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 29

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
    move/from16 v5, p5

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-object/from16 v0, p4

    .line 16
    .line 17
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    const v1, -0x1d57db49

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    and-int/lit8 v1, v5, 0x6

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    move-object/from16 v1, p0

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    const/4 v7, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v7, v6

    .line 41
    :goto_0
    or-int/2addr v7, v5

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-object/from16 v1, p0

    .line 44
    .line 45
    move v7, v5

    .line 46
    :goto_1
    and-int/lit8 v8, v5, 0x30

    .line 47
    .line 48
    const/16 v9, 0x20

    .line 49
    .line 50
    if-nez v8, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-eqz v8, :cond_2

    .line 57
    .line 58
    move v8, v9

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/16 v8, 0x10

    .line 61
    .line 62
    :goto_2
    or-int/2addr v7, v8

    .line 63
    :cond_3
    and-int/lit16 v8, v5, 0x180

    .line 64
    .line 65
    if-nez v8, :cond_5

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_4

    .line 72
    .line 73
    const/16 v8, 0x100

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    const/16 v8, 0x80

    .line 77
    .line 78
    :goto_3
    or-int/2addr v7, v8

    .line 79
    :cond_5
    and-int/lit16 v8, v5, 0xc00

    .line 80
    .line 81
    if-nez v8, :cond_7

    .line 82
    .line 83
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_6

    .line 88
    .line 89
    const/16 v8, 0x800

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_6
    const/16 v8, 0x400

    .line 93
    .line 94
    :goto_4
    or-int/2addr v7, v8

    .line 95
    :cond_7
    and-int/lit16 v8, v7, 0x493

    .line 96
    .line 97
    const/16 v10, 0x492

    .line 98
    .line 99
    const/4 v12, 0x1

    .line 100
    if-eq v8, v10, :cond_8

    .line 101
    .line 102
    move v8, v12

    .line 103
    goto :goto_5

    .line 104
    :cond_8
    const/4 v8, 0x0

    .line 105
    :goto_5
    and-int/lit8 v10, v7, 0x1

    .line 106
    .line 107
    invoke-virtual {v0, v10, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_f

    .line 112
    .line 113
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    const/16 v10, 0x15

    .line 118
    .line 119
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 120
    .line 121
    if-ne v8, v13, :cond_9

    .line 122
    .line 123
    new-instance v8, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    invoke-direct {v8, v10}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_9
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 132
    .line 133
    sget-object v14, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 134
    .line 135
    invoke-interface {v14, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 136
    .line 137
    .line 138
    move-result-object v14

    .line 139
    const/4 v15, 0x0

    .line 140
    if-eqz v4, :cond_a

    .line 141
    .line 142
    new-instance v11, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    invoke-direct {v11, v4, v6}, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    new-instance v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 148
    .line 149
    const v10, 0x140c0c5a

    .line 150
    .line 151
    .line 152
    invoke-direct {v6, v10, v11, v12}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 153
    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_a
    move-object v6, v15

    .line 157
    :goto_6
    const v10, -0x26cde829

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    if-ne v10, v13, :cond_b

    .line 168
    .line 169
    new-instance v10, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 170
    .line 171
    invoke-direct {v10}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_b
    check-cast v10, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 178
    .line 179
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    and-int/lit8 v12, v7, 0x70

    .line 184
    .line 185
    if-ne v12, v9, :cond_c

    .line 186
    .line 187
    const/4 v12, 0x1

    .line 188
    goto :goto_7

    .line 189
    :cond_c
    const/4 v12, 0x0

    .line 190
    :goto_7
    or-int v9, v11, v12

    .line 191
    .line 192
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    if-nez v9, :cond_d

    .line 197
    .line 198
    if-ne v11, v13, :cond_e

    .line 199
    .line 200
    :cond_d
    new-instance v11, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 201
    .line 202
    const/16 v9, 0x15

    .line 203
    .line 204
    invoke-direct {v11, v10, v2, v15, v9}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_e
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 211
    .line 212
    invoke-static {v0, v10, v11}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 213
    .line 214
    .line 215
    const/4 v9, 0x0

    .line 216
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 217
    .line 218
    .line 219
    and-int/lit8 v7, v7, 0xe

    .line 220
    .line 221
    const v9, 0x30006030

    .line 222
    .line 223
    .line 224
    or-int v25, v7, v9

    .line 225
    .line 226
    const/16 v27, 0x0

    .line 227
    .line 228
    const v28, 0x6dfda8

    .line 229
    .line 230
    .line 231
    const/4 v9, 0x0

    .line 232
    move-object/from16 v21, v10

    .line 233
    .line 234
    const/4 v10, 0x1

    .line 235
    const/4 v11, 0x0

    .line 236
    sget-object v13, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldLabelKt;->lambda$725874656:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 237
    .line 238
    move-object v7, v8

    .line 239
    move-object v8, v14

    .line 240
    const/4 v14, 0x0

    .line 241
    const/4 v15, 0x0

    .line 242
    const/16 v16, 0x0

    .line 243
    .line 244
    const/16 v17, 0x0

    .line 245
    .line 246
    const/16 v18, 0x1

    .line 247
    .line 248
    const/16 v19, 0x0

    .line 249
    .line 250
    const/16 v20, 0x0

    .line 251
    .line 252
    const/16 v22, 0x0

    .line 253
    .line 254
    const/16 v23, 0x0

    .line 255
    .line 256
    const/high16 v26, 0xc00000

    .line 257
    .line 258
    move-object/from16 v24, v0

    .line 259
    .line 260
    move-object v12, v6

    .line 261
    move-object v6, v1

    .line 262
    invoke-static/range {v6 .. v28}, Landroidx/compose/material3/CardKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 263
    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_f
    move-object/from16 v24, v0

    .line 267
    .line 268
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 269
    .line 270
    .line 271
    :goto_8
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    if-eqz v7, :cond_10

    .line 276
    .line 277
    new-instance v0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;

    .line 278
    .line 279
    const/4 v6, 0x3

    .line 280
    move-object/from16 v1, p0

    .line 281
    .line 282
    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 283
    .line 284
    .line 285
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 286
    .line 287
    :cond_10
    return-void
.end method

.method public static final TextFieldOutlinedNumber(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZZLandroidx/compose/runtime/Composer;I)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move/from16 v6, p5

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-object/from16 v0, p7

    .line 13
    .line 14
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    const v3, 0x507b4523

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x2

    .line 31
    :goto_0
    or-int v3, p8, v3

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/16 v7, 0x20

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    move v5, v7

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v5, 0x10

    .line 44
    .line 45
    :goto_1
    or-int/2addr v3, v5

    .line 46
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    const/16 v5, 0x800

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v5, 0x400

    .line 56
    .line 57
    :goto_2
    or-int/2addr v3, v5

    .line 58
    const v5, 0x36000

    .line 59
    .line 60
    .line 61
    or-int/2addr v3, v5

    .line 62
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    const/high16 v5, 0x100000

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/high16 v5, 0x80000

    .line 72
    .line 73
    :goto_3
    or-int/2addr v3, v5

    .line 74
    move/from16 v15, p6

    .line 75
    .line 76
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_4

    .line 81
    .line 82
    const/high16 v5, 0x800000

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_4
    const/high16 v5, 0x400000

    .line 86
    .line 87
    :goto_4
    or-int/2addr v3, v5

    .line 88
    const v5, 0x492493

    .line 89
    .line 90
    .line 91
    and-int/2addr v5, v3

    .line 92
    const v8, 0x492492

    .line 93
    .line 94
    .line 95
    const/4 v9, 0x1

    .line 96
    const/4 v10, 0x0

    .line 97
    if-eq v5, v8, :cond_5

    .line 98
    .line 99
    move v5, v9

    .line 100
    goto :goto_5

    .line 101
    :cond_5
    move v5, v10

    .line 102
    :goto_5
    and-int/lit8 v8, v3, 0x1

    .line 103
    .line 104
    invoke-virtual {v0, v8, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_b

    .line 109
    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 113
    .line 114
    .line 115
    move-result-wide v11

    .line 116
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    if-nez v5, :cond_7

    .line 121
    .line 122
    :cond_6
    const-string v5, ""

    .line 123
    .line 124
    :cond_7
    invoke-static {v4, v6}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldCommonKt;->selectLabel(Ljava/lang/String;Z)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    new-instance v8, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 129
    .line 130
    const/16 v11, 0x8

    .line 131
    .line 132
    const/16 v12, 0x7b

    .line 133
    .line 134
    invoke-direct {v8, v11, v12}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(II)V

    .line 135
    .line 136
    .line 137
    and-int/lit8 v11, v3, 0x70

    .line 138
    .line 139
    if-ne v11, v7, :cond_8

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_8
    move v9, v10

    .line 143
    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    if-nez v9, :cond_9

    .line 148
    .line 149
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 150
    .line 151
    if-ne v7, v9, :cond_a

    .line 152
    .line 153
    :cond_9
    new-instance v7, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 154
    .line 155
    const/4 v9, 0x5

    .line 156
    invoke-direct {v7, v9, v2}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_a
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 163
    .line 164
    shr-int/lit8 v3, v3, 0xc

    .line 165
    .line 166
    and-int/lit16 v3, v3, 0x1c00

    .line 167
    .line 168
    const/high16 v9, 0xc30000

    .line 169
    .line 170
    or-int v27, v3, v9

    .line 171
    .line 172
    const/16 v28, 0x0

    .line 173
    .line 174
    const v29, 0x7d5fa0

    .line 175
    .line 176
    .line 177
    const/4 v10, 0x1

    .line 178
    const/4 v11, 0x0

    .line 179
    const/4 v12, 0x0

    .line 180
    const/4 v14, 0x0

    .line 181
    const/16 v16, 0x0

    .line 182
    .line 183
    const/16 v18, 0x0

    .line 184
    .line 185
    const/16 v19, 0x1

    .line 186
    .line 187
    const/16 v20, 0x0

    .line 188
    .line 189
    const/16 v21, 0x0

    .line 190
    .line 191
    const/16 v22, 0x0

    .line 192
    .line 193
    const/16 v23, 0x0

    .line 194
    .line 195
    const/16 v24, 0x0

    .line 196
    .line 197
    const/16 v26, 0x6d80

    .line 198
    .line 199
    move-object/from16 v9, p2

    .line 200
    .line 201
    move-object/from16 v25, v0

    .line 202
    .line 203
    move-object/from16 v17, v8

    .line 204
    .line 205
    move-object v8, v7

    .line 206
    move-object v7, v5

    .line 207
    invoke-static/range {v7 .. v29}, Landroidx/compose/material3/CardKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 208
    .line 209
    .line 210
    move v5, v10

    .line 211
    goto :goto_7

    .line 212
    :cond_b
    move-object/from16 v25, v0

    .line 213
    .line 214
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 215
    .line 216
    .line 217
    move/from16 v5, p4

    .line 218
    .line 219
    :goto_7
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    if-eqz v10, :cond_c

    .line 224
    .line 225
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedKt$$ExternalSyntheticLambda0;

    .line 226
    .line 227
    const/4 v9, 0x1

    .line 228
    move-object/from16 v3, p2

    .line 229
    .line 230
    move/from16 v7, p6

    .line 231
    .line 232
    move/from16 v8, p8

    .line 233
    .line 234
    invoke-direct/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZZII)V

    .line 235
    .line 236
    .line 237
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 238
    .line 239
    :cond_c
    return-void
.end method

.method public static final TextFieldOutlinedPassword(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZZLandroidx/compose/runtime/Composer;I)V
    .locals 30

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    move-object/from16 v0, p7

    check-cast v0, Landroidx/compose/runtime/GapComposer;

    const v1, 0x42d4c794

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    move-object/from16 v7, p0

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p8, v1

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v1, v5

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x800

    goto :goto_2

    :cond_2
    const/16 v5, 0x400

    :goto_2
    or-int/2addr v1, v5

    const v5, 0x36000

    or-int/2addr v1, v5

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v5, 0x100000

    goto :goto_3

    :cond_3
    const/high16 v5, 0x80000

    :goto_3
    or-int/2addr v1, v5

    move/from16 v15, p6

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    const/high16 v5, 0x800000

    goto :goto_4

    :cond_4
    const/high16 v5, 0x400000

    :goto_4
    or-int/2addr v1, v5

    const v5, 0x492493

    and-int/2addr v5, v1

    const v8, 0x492492

    const/4 v10, 0x0

    if-eq v5, v8, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    move v5, v10

    :goto_5
    and-int/lit8 v8, v1, 0x1

    invoke-virtual {v0, v8, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 388
    new-array v5, v10, [Ljava/lang/Object;

    .line 389
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .line 390
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v8, v11, :cond_6

    .line 391
    new-instance v8, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    const/16 v12, 0x8

    invoke-direct {v8, v12}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 392
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 393
    :cond_6
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/16 v12, 0x30

    invoke-static {v5, v8, v0, v12}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 394
    sget-object v8, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldCommonKt;->LINE_BREAK:Lkotlin/text/Regex;

    .line 395
    new-instance v8, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    invoke-direct {v8, v3, v2}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 396
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    new-instance v3, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    const/16 v12, 0x18

    invoke-direct {v3, v12}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    move-object/from16 v12, p2

    .line 398
    invoke-static {v12, v10, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 399
    new-instance v13, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    const/16 v14, 0x17

    invoke-direct {v13, v14}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 400
    invoke-static {v3, v10, v13}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 401
    invoke-static {v4, v6}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldCommonKt;->selectLabel(Ljava/lang/String;Z)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    .line 402
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 403
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v14

    .line 404
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v14, :cond_7

    if-ne v9, v11, :cond_8

    .line 405
    :cond_7
    new-instance v9, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    const/16 v11, 0xa

    invoke-direct {v9, v5, v11}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 406
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 407
    :cond_8
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 408
    new-instance v11, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;

    invoke-direct {v11, v10, v9}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;-><init>(ZLkotlin/jvm/functions/Function0;)V

    .line 409
    new-instance v14, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v9, -0x5385c63a

    const/4 v10, 0x1

    invoke-direct {v14, v9, v11, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 410
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 411
    sget-object v5, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->None:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    :goto_6
    move-object/from16 v16, v5

    goto :goto_7

    .line 412
    :cond_9
    new-instance v5, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    .line 413
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    goto :goto_6

    .line 414
    :goto_7
    new-instance v5, Landroidx/compose/foundation/text/KeyboardOptions;

    const/4 v9, 0x7

    const/16 v10, 0x7b

    invoke-direct {v5, v9, v10}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(II)V

    and-int/lit8 v9, v1, 0xe

    or-int/lit16 v9, v9, 0x6c00

    shr-int/lit8 v1, v1, 0xc

    and-int/lit16 v1, v1, 0x1c00

    const/high16 v10, 0xc30000

    or-int v27, v1, v10

    const/16 v28, 0x0

    const v29, 0x7d1da0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v0

    move-object/from16 v17, v5

    move/from16 v26, v9

    move-object v9, v3

    .line 415
    invoke-static/range {v7 .. v29}, Landroidx/compose/material3/CardKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    move v5, v10

    goto :goto_8

    :cond_a
    move-object/from16 v25, v0

    .line 416
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move/from16 v5, p4

    .line 417
    :goto_8
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_b

    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedKt$$ExternalSyntheticLambda0;

    const/4 v9, 0x2

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZZII)V

    .line 418
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final TextFieldOutlinedPassword(Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLandroidx/compose/runtime/Composer;I)V
    .locals 33

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move/from16 v9, p9

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-object/from16 v0, p8

    .line 21
    .line 22
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    const v1, 0x9bbdefc

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 28
    .line 29
    .line 30
    and-int/lit8 v1, v9, 0x6

    .line 31
    .line 32
    const/4 v6, 0x4

    .line 33
    move-object/from16 v10, p0

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    move v1, v6

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x2

    .line 46
    :goto_0
    or-int/2addr v1, v9

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v1, v9

    .line 49
    :goto_1
    and-int/lit8 v7, v9, 0x30

    .line 50
    .line 51
    if-nez v7, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_2

    .line 58
    .line 59
    const/16 v7, 0x20

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/16 v7, 0x10

    .line 63
    .line 64
    :goto_2
    or-int/2addr v1, v7

    .line 65
    :cond_3
    and-int/lit16 v7, v9, 0x180

    .line 66
    .line 67
    if-nez v7, :cond_5

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_4

    .line 74
    .line 75
    const/16 v7, 0x100

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    const/16 v7, 0x80

    .line 79
    .line 80
    :goto_3
    or-int/2addr v1, v7

    .line 81
    :cond_5
    and-int/lit16 v7, v9, 0xc00

    .line 82
    .line 83
    if-nez v7, :cond_7

    .line 84
    .line 85
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_6

    .line 90
    .line 91
    const/16 v7, 0x800

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_6
    const/16 v7, 0x400

    .line 95
    .line 96
    :goto_4
    or-int/2addr v1, v7

    .line 97
    :cond_7
    and-int/lit16 v7, v9, 0x6000

    .line 98
    .line 99
    if-nez v7, :cond_9

    .line 100
    .line 101
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_8

    .line 106
    .line 107
    const/16 v7, 0x4000

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_8
    const/16 v7, 0x2000

    .line 111
    .line 112
    :goto_5
    or-int/2addr v1, v7

    .line 113
    :cond_9
    const/high16 v7, 0x30000

    .line 114
    .line 115
    and-int/2addr v7, v9

    .line 116
    if-nez v7, :cond_b

    .line 117
    .line 118
    move-object/from16 v7, p5

    .line 119
    .line 120
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-eqz v8, :cond_a

    .line 125
    .line 126
    const/high16 v8, 0x20000

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_a
    const/high16 v8, 0x10000

    .line 130
    .line 131
    :goto_6
    or-int/2addr v1, v8

    .line 132
    goto :goto_7

    .line 133
    :cond_b
    move-object/from16 v7, p5

    .line 134
    .line 135
    :goto_7
    const/high16 v8, 0x180000

    .line 136
    .line 137
    and-int/2addr v8, v9

    .line 138
    const/4 v11, 0x1

    .line 139
    if-nez v8, :cond_d

    .line 140
    .line 141
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-eqz v8, :cond_c

    .line 146
    .line 147
    const/high16 v8, 0x100000

    .line 148
    .line 149
    goto :goto_8

    .line 150
    :cond_c
    const/high16 v8, 0x80000

    .line 151
    .line 152
    :goto_8
    or-int/2addr v1, v8

    .line 153
    :cond_d
    const/high16 v8, 0xc00000

    .line 154
    .line 155
    and-int/2addr v8, v9

    .line 156
    const/4 v12, 0x0

    .line 157
    if-nez v8, :cond_f

    .line 158
    .line 159
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-eqz v8, :cond_e

    .line 164
    .line 165
    const/high16 v8, 0x800000

    .line 166
    .line 167
    goto :goto_9

    .line 168
    :cond_e
    const/high16 v8, 0x400000

    .line 169
    .line 170
    :goto_9
    or-int/2addr v1, v8

    .line 171
    :cond_f
    const/high16 v8, 0x6000000

    .line 172
    .line 173
    and-int/2addr v8, v9

    .line 174
    if-nez v8, :cond_11

    .line 175
    .line 176
    move/from16 v8, p6

    .line 177
    .line 178
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    if-eqz v13, :cond_10

    .line 183
    .line 184
    const/high16 v13, 0x4000000

    .line 185
    .line 186
    goto :goto_a

    .line 187
    :cond_10
    const/high16 v13, 0x2000000

    .line 188
    .line 189
    :goto_a
    or-int/2addr v1, v13

    .line 190
    goto :goto_b

    .line 191
    :cond_11
    move/from16 v8, p6

    .line 192
    .line 193
    :goto_b
    const/high16 v13, 0x30000000

    .line 194
    .line 195
    and-int/2addr v13, v9

    .line 196
    if-nez v13, :cond_13

    .line 197
    .line 198
    move/from16 v13, p7

    .line 199
    .line 200
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 201
    .line 202
    .line 203
    move-result v14

    .line 204
    if-eqz v14, :cond_12

    .line 205
    .line 206
    const/high16 v14, 0x20000000

    .line 207
    .line 208
    goto :goto_c

    .line 209
    :cond_12
    const/high16 v14, 0x10000000

    .line 210
    .line 211
    :goto_c
    or-int/2addr v1, v14

    .line 212
    goto :goto_d

    .line 213
    :cond_13
    move/from16 v13, p7

    .line 214
    .line 215
    :goto_d
    const v14, 0x12492493

    .line 216
    .line 217
    .line 218
    and-int/2addr v14, v1

    .line 219
    const v15, 0x12492492

    .line 220
    .line 221
    .line 222
    if-eq v14, v15, :cond_14

    .line 223
    .line 224
    move v14, v11

    .line 225
    goto :goto_e

    .line 226
    :cond_14
    move v14, v12

    .line 227
    :goto_e
    and-int/lit8 v15, v1, 0x1

    .line 228
    .line 229
    invoke-virtual {v0, v15, v14}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 230
    .line 231
    .line 232
    move-result v14

    .line 233
    if-eqz v14, :cond_16

    .line 234
    .line 235
    sget-object v14, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldCommonKt;->LINE_BREAK:Lkotlin/text/Regex;

    .line 236
    .line 237
    new-instance v14, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 238
    .line 239
    invoke-direct {v14, v6, v2}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    new-instance v6, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 246
    .line 247
    const/16 v15, 0x18

    .line 248
    .line 249
    invoke-direct {v6, v15}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 250
    .line 251
    .line 252
    invoke-static {v5, v12, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    new-instance v15, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 257
    .line 258
    const/16 v11, 0x17

    .line 259
    .line 260
    invoke-direct {v15, v11}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 261
    .line 262
    .line 263
    invoke-static {v6, v12, v15}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 264
    .line 265
    .line 266
    move-result-object v12

    .line 267
    invoke-static/range {p5 .. p6}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldCommonKt;->selectLabel(Ljava/lang/String;Z)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 268
    .line 269
    .line 270
    move-result-object v16

    .line 271
    new-instance v6, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;

    .line 272
    .line 273
    invoke-direct {v6, v3, v4}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;-><init>(ZLkotlin/jvm/functions/Function0;)V

    .line 274
    .line 275
    .line 276
    new-instance v11, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 277
    .line 278
    const v15, -0x5385c63a

    .line 279
    .line 280
    .line 281
    move-object/from16 v28, v0

    .line 282
    .line 283
    const/4 v0, 0x1

    .line 284
    invoke-direct {v11, v15, v6, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 285
    .line 286
    .line 287
    if-eqz v3, :cond_15

    .line 288
    .line 289
    sget-object v0, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->None:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    .line 290
    .line 291
    :goto_f
    move-object/from16 v19, v0

    .line 292
    .line 293
    goto :goto_10

    .line 294
    :cond_15
    new-instance v0, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    .line 295
    .line 296
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 297
    .line 298
    .line 299
    goto :goto_f

    .line 300
    :goto_10
    new-instance v0, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 301
    .line 302
    const/4 v6, 0x7

    .line 303
    const/16 v15, 0x7b

    .line 304
    .line 305
    invoke-direct {v0, v6, v15}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(II)V

    .line 306
    .line 307
    .line 308
    and-int/lit8 v6, v1, 0xe

    .line 309
    .line 310
    shr-int/lit8 v15, v1, 0x9

    .line 311
    .line 312
    move-object/from16 v20, v0

    .line 313
    .line 314
    and-int/lit16 v0, v15, 0x1c00

    .line 315
    .line 316
    or-int/2addr v0, v6

    .line 317
    const v6, 0xe000

    .line 318
    .line 319
    .line 320
    and-int/2addr v6, v15

    .line 321
    or-int v29, v0, v6

    .line 322
    .line 323
    shr-int/lit8 v0, v1, 0x12

    .line 324
    .line 325
    and-int/lit16 v0, v0, 0x1c00

    .line 326
    .line 327
    const/high16 v1, 0xc30000

    .line 328
    .line 329
    or-int v30, v0, v1

    .line 330
    .line 331
    const/16 v31, 0x0

    .line 332
    .line 333
    const v32, 0x7d1da0

    .line 334
    .line 335
    .line 336
    const/4 v13, 0x1

    .line 337
    move-object/from16 v17, v11

    .line 338
    .line 339
    move-object v11, v14

    .line 340
    const/4 v14, 0x0

    .line 341
    const/4 v15, 0x0

    .line 342
    const/16 v21, 0x0

    .line 343
    .line 344
    const/16 v22, 0x1

    .line 345
    .line 346
    const/16 v23, 0x0

    .line 347
    .line 348
    const/16 v24, 0x0

    .line 349
    .line 350
    const/16 v25, 0x0

    .line 351
    .line 352
    const/16 v26, 0x0

    .line 353
    .line 354
    const/16 v27, 0x0

    .line 355
    .line 356
    move/from16 v18, p7

    .line 357
    .line 358
    invoke-static/range {v10 .. v32}, Landroidx/compose/material3/CardKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 359
    .line 360
    .line 361
    goto :goto_11

    .line 362
    :cond_16
    move-object/from16 v28, v0

    .line 363
    .line 364
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 365
    .line 366
    .line 367
    :goto_11
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 368
    .line 369
    .line 370
    move-result-object v10

    .line 371
    if-eqz v10, :cond_17

    .line 372
    .line 373
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedPasswordKt$$ExternalSyntheticLambda5;

    .line 374
    .line 375
    move-object/from16 v1, p0

    .line 376
    .line 377
    move-object v6, v7

    .line 378
    move v7, v8

    .line 379
    move/from16 v8, p7

    .line 380
    .line 381
    invoke-direct/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedPasswordKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZI)V

    .line 382
    .line 383
    .line 384
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 385
    .line 386
    :cond_17
    return-void
.end method

.method public static final TextFieldOutlinedSelect(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)V
    .locals 14

    .line 1
    move/from16 v9, p8

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-object/from16 v10, p7

    .line 10
    .line 11
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, 0x527b8146

    .line 14
    .line 15
    .line 16
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, v9, 0x6

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    and-int/lit8 v0, v9, 0x8

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :goto_0
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x2

    .line 41
    :goto_1
    or-int/2addr v0, v9

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v0, v9

    .line 44
    :goto_2
    and-int/lit8 v1, v9, 0x30

    .line 45
    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    and-int/lit8 v1, v9, 0x40

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :goto_3
    if-eqz v1, :cond_4

    .line 62
    .line 63
    const/16 v1, 0x20

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_4
    const/16 v1, 0x10

    .line 67
    .line 68
    :goto_4
    or-int/2addr v0, v1

    .line 69
    :cond_5
    and-int/lit16 v1, v9, 0x180

    .line 70
    .line 71
    move-object/from16 v8, p2

    .line 72
    .line 73
    if-nez v1, :cond_7

    .line 74
    .line 75
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_6

    .line 80
    .line 81
    const/16 v1, 0x100

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_6
    const/16 v1, 0x80

    .line 85
    .line 86
    :goto_5
    or-int/2addr v0, v1

    .line 87
    :cond_7
    and-int/lit16 v1, v9, 0xc00

    .line 88
    .line 89
    move-object/from16 v3, p3

    .line 90
    .line 91
    if-nez v1, :cond_9

    .line 92
    .line 93
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    const/16 v1, 0x800

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_8
    const/16 v1, 0x400

    .line 103
    .line 104
    :goto_6
    or-int/2addr v0, v1

    .line 105
    :cond_9
    and-int/lit16 v1, v9, 0x6000

    .line 106
    .line 107
    if-nez v1, :cond_b

    .line 108
    .line 109
    move-object/from16 v1, p4

    .line 110
    .line 111
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_a

    .line 116
    .line 117
    const/16 v4, 0x4000

    .line 118
    .line 119
    goto :goto_7

    .line 120
    :cond_a
    const/16 v4, 0x2000

    .line 121
    .line 122
    :goto_7
    or-int/2addr v0, v4

    .line 123
    goto :goto_8

    .line 124
    :cond_b
    move-object/from16 v1, p4

    .line 125
    .line 126
    :goto_8
    const/high16 v4, 0x30000

    .line 127
    .line 128
    and-int/2addr v4, v9

    .line 129
    if-nez v4, :cond_d

    .line 130
    .line 131
    move-object/from16 v4, p5

    .line 132
    .line 133
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_c

    .line 138
    .line 139
    const/high16 v5, 0x20000

    .line 140
    .line 141
    goto :goto_9

    .line 142
    :cond_c
    const/high16 v5, 0x10000

    .line 143
    .line 144
    :goto_9
    or-int/2addr v0, v5

    .line 145
    goto :goto_a

    .line 146
    :cond_d
    move-object/from16 v4, p5

    .line 147
    .line 148
    :goto_a
    const/high16 v5, 0x36d80000

    .line 149
    .line 150
    or-int/2addr v0, v5

    .line 151
    const v5, 0x12492493

    .line 152
    .line 153
    .line 154
    and-int/2addr v5, v0

    .line 155
    const v6, 0x12492492

    .line 156
    .line 157
    .line 158
    const/4 v11, 0x1

    .line 159
    if-eq v5, v6, :cond_e

    .line 160
    .line 161
    move v5, v11

    .line 162
    goto :goto_b

    .line 163
    :cond_e
    const/4 v5, 0x0

    .line 164
    :goto_b
    and-int/2addr v0, v11

    .line 165
    invoke-virtual {v10, v0, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_12

    .line 170
    .line 171
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 176
    .line 177
    if-ne v0, v5, :cond_f

    .line 178
    .line 179
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 180
    .line 181
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_f
    move-object v6, v0

    .line 189
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 190
    .line 191
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Ljava/lang/Boolean;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 198
    .line 199
    .line 200
    move-result v12

    .line 201
    const/4 v0, 0x0

    .line 202
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    if-nez v7, :cond_10

    .line 211
    .line 212
    if-ne v13, v5, :cond_11

    .line 213
    .line 214
    :cond_10
    new-instance v13, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda30;

    .line 215
    .line 216
    invoke-direct {v13, v0, v6, v11}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda30;-><init>(ZLandroidx/compose/runtime/MutableState;I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    :cond_11
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 223
    .line 224
    move v5, v0

    .line 225
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionKt$$ExternalSyntheticLambda1;

    .line 226
    .line 227
    move-object v7, p0

    .line 228
    move-object v2, p1

    .line 229
    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLandroidx/compose/runtime/MutableState;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;)V

    .line 230
    .line 231
    .line 232
    const v1, 0x6856b7dc

    .line 233
    .line 234
    .line 235
    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    const/16 v5, 0xc00

    .line 240
    .line 241
    const/4 v6, 0x4

    .line 242
    const/4 v2, 0x0

    .line 243
    move-object v4, v10

    .line 244
    move v0, v12

    .line 245
    move-object v1, v13

    .line 246
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/CardKt;->ExposedDropdownMenuBox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 247
    .line 248
    .line 249
    move v7, v11

    .line 250
    goto :goto_c

    .line 251
    :cond_12
    move-object v4, v10

    .line 252
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 253
    .line 254
    .line 255
    move/from16 v7, p6

    .line 256
    .line 257
    :goto_c
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    if-eqz v10, :cond_13

    .line 262
    .line 263
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda4;

    .line 264
    .line 265
    move-object v1, p0

    .line 266
    move-object v2, p1

    .line 267
    move-object/from16 v3, p2

    .line 268
    .line 269
    move-object/from16 v4, p3

    .line 270
    .line 271
    move-object/from16 v5, p4

    .line 272
    .line 273
    move-object/from16 v6, p5

    .line 274
    .line 275
    move v8, v9

    .line 276
    invoke-direct/range {v0 .. v8}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda4;-><init>(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ZI)V

    .line 277
    .line 278
    .line 279
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 280
    .line 281
    :cond_13
    return-void
.end method
