.class public abstract Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$-481747922:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 8
    .line 9
    const v2, -0x1cb6e3d2

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->lambda$-481747922:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    return-void
.end method

.method public static final AdvancedTextInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v5, p8

    .line 5
    .line 6
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    const v0, 0xef6c7a

    .line 9
    .line 10
    .line 11
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    move-object/from16 v7, p0

    .line 15
    .line 16
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x2

    .line 25
    :goto_0
    or-int v0, p9, v0

    .line 26
    .line 27
    move-object/from16 v1, p1

    .line 28
    .line 29
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const/16 v2, 0x20

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v2, 0x10

    .line 39
    .line 40
    :goto_1
    or-int/2addr v0, v2

    .line 41
    move-object/from16 v8, p2

    .line 42
    .line 43
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    const/16 v2, 0x100

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v2, 0x80

    .line 53
    .line 54
    :goto_2
    or-int/2addr v0, v2

    .line 55
    or-int/lit16 v0, v0, 0x6c00

    .line 56
    .line 57
    move-object/from16 v10, p3

    .line 58
    .line 59
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    const/high16 v2, 0x20000

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    const/high16 v2, 0x10000

    .line 69
    .line 70
    :goto_3
    or-int/2addr v0, v2

    .line 71
    const/high16 v2, 0x36c00000

    .line 72
    .line 73
    or-int/2addr v0, v2

    .line 74
    const v2, 0x12492493

    .line 75
    .line 76
    .line 77
    and-int/2addr v2, v0

    .line 78
    const v3, 0x12492492

    .line 79
    .line 80
    .line 81
    const/4 v4, 0x1

    .line 82
    if-eq v2, v3, :cond_4

    .line 83
    .line 84
    move v2, v4

    .line 85
    goto :goto_4

    .line 86
    :cond_4
    const/4 v2, 0x0

    .line 87
    :goto_4
    and-int/lit8 v3, v0, 0x1

    .line 88
    .line 89
    invoke-virtual {v5, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_7

    .line 94
    .line 95
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 96
    .line 97
    .line 98
    and-int/lit8 v2, p9, 0x1

    .line 99
    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_5

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_5
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 110
    .line 111
    .line 112
    move/from16 v11, p5

    .line 113
    .line 114
    move/from16 v10, p6

    .line 115
    .line 116
    move-object/from16 v12, p7

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_6
    :goto_5
    sget-object v2, Landroidx/compose/foundation/text/KeyboardOptions;->Default:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 120
    .line 121
    move-object v12, v2

    .line 122
    move v10, v4

    .line 123
    move v11, v10

    .line 124
    :goto_6
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 125
    .line 126
    .line 127
    new-instance v6, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$$ExternalSyntheticLambda1;

    .line 128
    .line 129
    move-object v9, v7

    .line 130
    move-object/from16 v7, p3

    .line 131
    .line 132
    invoke-direct/range {v6 .. v12}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/foundation/text/KeyboardOptions;)V

    .line 133
    .line 134
    .line 135
    const v2, -0x359f6261

    .line 136
    .line 137
    .line 138
    invoke-static {v2, v6, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    shr-int/lit8 v2, v0, 0x3

    .line 143
    .line 144
    and-int/lit8 v2, v2, 0xe

    .line 145
    .line 146
    or-int/lit16 v2, v2, 0x6030

    .line 147
    .line 148
    shr-int/lit8 v0, v0, 0x9

    .line 149
    .line 150
    and-int/lit16 v0, v0, 0x380

    .line 151
    .line 152
    or-int v6, v2, v0

    .line 153
    .line 154
    const/16 v7, 0x8

    .line 155
    .line 156
    const/4 v3, 0x0

    .line 157
    move-object/from16 v2, p3

    .line 158
    .line 159
    move-object v0, v1

    .line 160
    move-object/from16 v1, p4

    .line 161
    .line 162
    invoke-static/range {v0 .. v7}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->InputLayout(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 163
    .line 164
    .line 165
    move v13, v10

    .line 166
    move-object v14, v12

    .line 167
    move v12, v11

    .line 168
    goto :goto_7

    .line 169
    :cond_7
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 170
    .line 171
    .line 172
    move/from16 v12, p5

    .line 173
    .line 174
    move/from16 v13, p6

    .line 175
    .line 176
    move-object/from16 v14, p7

    .line 177
    .line 178
    :goto_7
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-eqz v0, :cond_8

    .line 183
    .line 184
    new-instance v6, Lapp/k9mail/core/ui/compose/designsystem/atom/DropdownMenuBoxKt$$ExternalSyntheticLambda3;

    .line 185
    .line 186
    move-object/from16 v7, p0

    .line 187
    .line 188
    move-object/from16 v8, p1

    .line 189
    .line 190
    move-object/from16 v9, p2

    .line 191
    .line 192
    move-object/from16 v10, p3

    .line 193
    .line 194
    move-object/from16 v11, p4

    .line 195
    .line 196
    move/from16 v15, p9

    .line 197
    .line 198
    invoke-direct/range {v6 .. v15}, Lapp/k9mail/core/ui/compose/designsystem/atom/DropdownMenuBoxKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZZLandroidx/compose/foundation/text/KeyboardOptions;I)V

    .line 199
    .line 200
    .line 201
    iput-object v6, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 202
    .line 203
    :cond_8
    return-void
.end method

.method public static final CheckboxInput(IILandroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Z)V
    .locals 16

    .line 1
    move/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    move-object/from16 v3, p7

    .line 6
    .line 7
    move/from16 v2, p8

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-object/from16 v13, p3

    .line 16
    .line 17
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    const v0, -0x14054ea1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    and-int/lit8 v0, v7, 0x6

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x2

    .line 38
    :goto_0
    or-int/2addr v0, v7

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v0, v7

    .line 41
    :goto_1
    and-int/lit8 v4, v7, 0x30

    .line 42
    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    const/16 v4, 0x20

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v4, 0x10

    .line 55
    .line 56
    :goto_2
    or-int/2addr v0, v4

    .line 57
    :cond_3
    and-int/lit16 v4, v7, 0x180

    .line 58
    .line 59
    if-nez v4, :cond_5

    .line 60
    .line 61
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    const/16 v4, 0x100

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/16 v4, 0x80

    .line 71
    .line 72
    :goto_3
    or-int/2addr v0, v4

    .line 73
    :cond_5
    or-int/lit16 v4, v0, 0xc00

    .line 74
    .line 75
    and-int/lit8 v5, p1, 0x10

    .line 76
    .line 77
    if-eqz v5, :cond_7

    .line 78
    .line 79
    or-int/lit16 v4, v0, 0x6c00

    .line 80
    .line 81
    :cond_6
    move-object/from16 v0, p6

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_7
    and-int/lit16 v0, v7, 0x6000

    .line 85
    .line 86
    if-nez v0, :cond_6

    .line 87
    .line 88
    move-object/from16 v0, p6

    .line 89
    .line 90
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_8

    .line 95
    .line 96
    const/16 v6, 0x4000

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_8
    const/16 v6, 0x2000

    .line 100
    .line 101
    :goto_4
    or-int/2addr v4, v6

    .line 102
    :goto_5
    const/high16 v6, 0x30000

    .line 103
    .line 104
    and-int/2addr v6, v7

    .line 105
    move-object/from16 v9, p2

    .line 106
    .line 107
    if-nez v6, :cond_a

    .line 108
    .line 109
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_9

    .line 114
    .line 115
    const/high16 v6, 0x20000

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_9
    const/high16 v6, 0x10000

    .line 119
    .line 120
    :goto_6
    or-int/2addr v4, v6

    .line 121
    :cond_a
    const v6, 0x12493

    .line 122
    .line 123
    .line 124
    and-int/2addr v6, v4

    .line 125
    const v8, 0x12492

    .line 126
    .line 127
    .line 128
    if-eq v6, v8, :cond_b

    .line 129
    .line 130
    const/4 v6, 0x1

    .line 131
    goto :goto_7

    .line 132
    :cond_b
    const/4 v6, 0x0

    .line 133
    :goto_7
    and-int/lit8 v8, v4, 0x1

    .line 134
    .line 135
    invoke-virtual {v13, v8, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_f

    .line 140
    .line 141
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 142
    .line 143
    .line 144
    and-int/lit8 v6, v7, 0x1

    .line 145
    .line 146
    if-eqz v6, :cond_d

    .line 147
    .line 148
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_c

    .line 153
    .line 154
    goto :goto_9

    .line 155
    :cond_c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 156
    .line 157
    .line 158
    move-object/from16 v8, p4

    .line 159
    .line 160
    :goto_8
    move-object v10, v0

    .line 161
    goto :goto_a

    .line 162
    :cond_d
    :goto_9
    if-eqz v5, :cond_e

    .line 163
    .line 164
    const/4 v0, 0x0

    .line 165
    :cond_e
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 166
    .line 167
    move-object v8, v5

    .line 168
    goto :goto_8

    .line 169
    :goto_a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 170
    .line 171
    .line 172
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/SwitchInputKt$$ExternalSyntheticLambda0;

    .line 173
    .line 174
    invoke-direct {v0, v2, v3, v1}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/SwitchInputKt$$ExternalSyntheticLambda0;-><init>(ZLkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const v5, 0x28ef51da

    .line 178
    .line 179
    .line 180
    invoke-static {v5, v0, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    shr-int/lit8 v0, v4, 0x9

    .line 185
    .line 186
    and-int/lit8 v0, v0, 0xe

    .line 187
    .line 188
    or-int/lit16 v0, v0, 0x6000

    .line 189
    .line 190
    shr-int/lit8 v5, v4, 0xc

    .line 191
    .line 192
    and-int/lit8 v5, v5, 0x70

    .line 193
    .line 194
    or-int/2addr v0, v5

    .line 195
    shr-int/lit8 v4, v4, 0x6

    .line 196
    .line 197
    and-int/lit16 v4, v4, 0x380

    .line 198
    .line 199
    or-int v14, v0, v4

    .line 200
    .line 201
    const/16 v15, 0x8

    .line 202
    .line 203
    const/4 v11, 0x0

    .line 204
    invoke-static/range {v8 .. v15}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->InputLayout(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 205
    .line 206
    .line 207
    move-object v4, v8

    .line 208
    move-object v5, v10

    .line 209
    goto :goto_b

    .line 210
    :cond_f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 211
    .line 212
    .line 213
    move-object/from16 v4, p4

    .line 214
    .line 215
    move-object v5, v0

    .line 216
    :goto_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    if-eqz v9, :cond_10

    .line 221
    .line 222
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/CheckboxInputKt$$ExternalSyntheticLambda1;

    .line 223
    .line 224
    move/from16 v8, p1

    .line 225
    .line 226
    move-object/from16 v6, p2

    .line 227
    .line 228
    invoke-direct/range {v0 .. v8}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/CheckboxInputKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;II)V

    .line 229
    .line 230
    .line 231
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 232
    .line 233
    :cond_10
    return-void
.end method

.method public static final EmailAddressInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v5, p6

    .line 5
    .line 6
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    const v0, 0x3a24f79b    # 6.2929996E-4f

    .line 9
    .line 10
    .line 11
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x2

    .line 23
    :goto_0
    or-int v0, p7, v0

    .line 24
    .line 25
    move-object/from16 v8, p2

    .line 26
    .line 27
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x100

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v1, 0x80

    .line 37
    .line 38
    :goto_1
    or-int/2addr v0, v1

    .line 39
    move-object/from16 v10, p3

    .line 40
    .line 41
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/16 v1, 0x800

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v1, 0x400

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v1

    .line 53
    or-int/lit16 v0, v0, 0x6000

    .line 54
    .line 55
    const v1, 0x12493

    .line 56
    .line 57
    .line 58
    and-int/2addr v1, v0

    .line 59
    const v2, 0x12492

    .line 60
    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    if-eq v1, v2, :cond_3

    .line 64
    .line 65
    move v1, v3

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const/4 v1, 0x0

    .line 68
    :goto_3
    and-int/lit8 v2, v0, 0x1

    .line 69
    .line 70
    invoke-virtual {v5, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_6

    .line 75
    .line 76
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 77
    .line 78
    .line 79
    and-int/lit8 v1, p7, 0x1

    .line 80
    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_4
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 91
    .line 92
    .line 93
    move/from16 v3, p4

    .line 94
    .line 95
    :cond_5
    :goto_4
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 96
    .line 97
    .line 98
    new-instance v6, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    const/4 v11, 0x1

    .line 101
    move-object v9, p0

    .line 102
    move-object v7, v10

    .line 103
    move v10, v3

    .line 104
    invoke-direct/range {v6 .. v11}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZI)V

    .line 105
    .line 106
    .line 107
    const v1, 0x455aed16

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v6, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    shr-int/lit8 v0, v0, 0x3

    .line 115
    .line 116
    and-int/lit16 v0, v0, 0x380

    .line 117
    .line 118
    const/16 v1, 0x6036

    .line 119
    .line 120
    or-int v6, v1, v0

    .line 121
    .line 122
    const/16 v7, 0x8

    .line 123
    .line 124
    const/4 v3, 0x0

    .line 125
    move-object v0, p1

    .line 126
    move-object/from16 v2, p3

    .line 127
    .line 128
    move-object/from16 v1, p5

    .line 129
    .line 130
    invoke-static/range {v0 .. v7}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->InputLayout(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 131
    .line 132
    .line 133
    move v11, v10

    .line 134
    goto :goto_5

    .line 135
    :cond_6
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 136
    .line 137
    .line 138
    move/from16 v11, p4

    .line 139
    .line 140
    :goto_5
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    new-instance v6, Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda2;

    .line 147
    .line 148
    move-object v7, p0

    .line 149
    move-object v8, p1

    .line 150
    move-object/from16 v9, p2

    .line 151
    .line 152
    move-object/from16 v10, p3

    .line 153
    .line 154
    move-object/from16 v12, p5

    .line 155
    .line 156
    move/from16 v13, p7

    .line 157
    .line 158
    invoke-direct/range {v6 .. v13}, Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/foundation/layout/PaddingValuesImpl;I)V

    .line 159
    .line 160
    .line 161
    iput-object v6, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 162
    .line 163
    :cond_7
    return-void
.end method

.method public static final InputLayout(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move/from16 v6, p6

    .line 10
    .line 11
    move-object/from16 v14, p5

    .line 12
    .line 13
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, -0x2a1b9dd9

    .line 16
    .line 17
    .line 18
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, v6, 0x6

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int/2addr v0, v6

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v6

    .line 37
    :goto_1
    and-int/lit8 v4, v6, 0x30

    .line 38
    .line 39
    if-nez v4, :cond_3

    .line 40
    .line 41
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    const/16 v4, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v4, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v4

    .line 53
    :cond_3
    and-int/lit16 v4, v6, 0x180

    .line 54
    .line 55
    const/16 v8, 0x100

    .line 56
    .line 57
    if-nez v4, :cond_5

    .line 58
    .line 59
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    move v4, v8

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    const/16 v4, 0x80

    .line 68
    .line 69
    :goto_3
    or-int/2addr v0, v4

    .line 70
    :cond_5
    and-int/lit8 v4, p7, 0x8

    .line 71
    .line 72
    const/16 v9, 0x800

    .line 73
    .line 74
    if-eqz v4, :cond_7

    .line 75
    .line 76
    or-int/lit16 v0, v0, 0xc00

    .line 77
    .line 78
    :cond_6
    move-object/from16 v10, p3

    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_7
    and-int/lit16 v10, v6, 0xc00

    .line 82
    .line 83
    if-nez v10, :cond_6

    .line 84
    .line 85
    move-object/from16 v10, p3

    .line 86
    .line 87
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    if-eqz v11, :cond_8

    .line 92
    .line 93
    move v11, v9

    .line 94
    goto :goto_4

    .line 95
    :cond_8
    const/16 v11, 0x400

    .line 96
    .line 97
    :goto_4
    or-int/2addr v0, v11

    .line 98
    :goto_5
    and-int/lit16 v11, v6, 0x6000

    .line 99
    .line 100
    if-nez v11, :cond_a

    .line 101
    .line 102
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    if-eqz v11, :cond_9

    .line 107
    .line 108
    const/16 v11, 0x4000

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_9
    const/16 v11, 0x2000

    .line 112
    .line 113
    :goto_6
    or-int/2addr v0, v11

    .line 114
    :cond_a
    and-int/lit16 v11, v0, 0x2493

    .line 115
    .line 116
    const/16 v12, 0x2492

    .line 117
    .line 118
    const/4 v13, 0x0

    .line 119
    if-eq v11, v12, :cond_b

    .line 120
    .line 121
    const/4 v11, 0x1

    .line 122
    goto :goto_7

    .line 123
    :cond_b
    move v11, v13

    .line 124
    :goto_7
    and-int/lit8 v12, v0, 0x1

    .line 125
    .line 126
    invoke-virtual {v14, v12, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    if-eqz v11, :cond_17

    .line 131
    .line 132
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 133
    .line 134
    .line 135
    and-int/lit8 v11, v6, 0x1

    .line 136
    .line 137
    if-eqz v11, :cond_e

    .line 138
    .line 139
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 140
    .line 141
    .line 142
    move-result v11

    .line 143
    if-eqz v11, :cond_c

    .line 144
    .line 145
    goto :goto_8

    .line 146
    :cond_c
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 147
    .line 148
    .line 149
    :cond_d
    move-object v4, v10

    .line 150
    goto :goto_9

    .line 151
    :cond_e
    :goto_8
    if-eqz v4, :cond_d

    .line 152
    .line 153
    const/4 v4, 0x0

    .line 154
    :goto_9
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 155
    .line 156
    .line 157
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 158
    .line 159
    invoke-static {v10, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    sget-object v11, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 164
    .line 165
    invoke-interface {v10, v11}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-interface {v10, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    sget-object v11, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 174
    .line 175
    const/16 p5, 0x20

    .line 176
    .line 177
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 178
    .line 179
    invoke-static {v11, v7, v14, v13}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    iget-wide v12, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 184
    .line 185
    ushr-long v17, v12, p5

    .line 186
    .line 187
    xor-long v12, v12, v17

    .line 188
    .line 189
    long-to-int v12, v12

    .line 190
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    invoke-static {v14, v10}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 199
    .line 200
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 204
    .line 205
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 206
    .line 207
    .line 208
    iget-boolean v15, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 209
    .line 210
    if-eqz v15, :cond_f

    .line 211
    .line 212
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 213
    .line 214
    .line 215
    goto :goto_a

    .line 216
    :cond_f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 217
    .line 218
    .line 219
    :goto_a
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 220
    .line 221
    invoke-static {v14, v7, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 222
    .line 223
    .line 224
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 225
    .line 226
    invoke-static {v14, v13, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 234
    .line 235
    invoke-static {v14, v7, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 236
    .line 237
    .line 238
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 239
    .line 240
    invoke-static {v14, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 241
    .line 242
    .line 243
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 244
    .line 245
    invoke-static {v14, v10, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 246
    .line 247
    .line 248
    shr-int/lit8 v7, v0, 0xc

    .line 249
    .line 250
    and-int/lit8 v7, v7, 0xe

    .line 251
    .line 252
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    invoke-virtual {v5, v14, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    and-int/lit16 v7, v0, 0x380

    .line 260
    .line 261
    if-ne v7, v8, :cond_10

    .line 262
    .line 263
    const/4 v7, 0x1

    .line 264
    goto :goto_b

    .line 265
    :cond_10
    const/4 v7, 0x0

    .line 266
    :goto_b
    and-int/lit16 v0, v0, 0x1c00

    .line 267
    .line 268
    if-ne v0, v9, :cond_11

    .line 269
    .line 270
    const/4 v13, 0x1

    .line 271
    goto :goto_c

    .line 272
    :cond_11
    const/4 v13, 0x0

    .line 273
    :goto_c
    or-int v0, v7, v13

    .line 274
    .line 275
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 280
    .line 281
    if-nez v0, :cond_12

    .line 282
    .line 283
    if-ne v7, v8, :cond_15

    .line 284
    .line 285
    :cond_12
    if-eqz v3, :cond_13

    .line 286
    .line 287
    new-instance v12, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/MessageState$Error;

    .line 288
    .line 289
    invoke-direct {v12, v3}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/MessageState$Error;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto :goto_d

    .line 293
    :cond_13
    if-eqz v4, :cond_14

    .line 294
    .line 295
    new-instance v12, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/MessageState$Warning;

    .line 296
    .line 297
    invoke-direct {v12, v4}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/MessageState$Warning;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto :goto_d

    .line 301
    :cond_14
    const/4 v12, 0x0

    .line 302
    :goto_d
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    move-object v7, v12

    .line 306
    :cond_15
    check-cast v7, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/MessageState;

    .line 307
    .line 308
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    if-ne v0, v8, :cond_16

    .line 313
    .line 314
    new-instance v0, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 315
    .line 316
    const/16 v8, 0x18

    .line 317
    .line 318
    invoke-direct {v0, v8}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    :cond_16
    move-object v9, v0

    .line 325
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 326
    .line 327
    const v15, 0x186180

    .line 328
    .line 329
    .line 330
    const/16 v16, 0x2a

    .line 331
    .line 332
    const/4 v8, 0x0

    .line 333
    const/4 v10, 0x0

    .line 334
    const-string v11, "ErrorMessageAnimation"

    .line 335
    .line 336
    const/4 v12, 0x0

    .line 337
    sget-object v13, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->lambda$-481747922:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 338
    .line 339
    const/4 v0, 0x1

    .line 340
    invoke-static/range {v7 .. v16}, Landroidx/compose/animation/CrossfadeKt;->AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 344
    .line 345
    .line 346
    goto :goto_e

    .line 347
    :cond_17
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 348
    .line 349
    .line 350
    move-object v4, v10

    .line 351
    :goto_e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 352
    .line 353
    .line 354
    move-result-object v8

    .line 355
    if-eqz v8, :cond_18

    .line 356
    .line 357
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda5;

    .line 358
    .line 359
    move/from16 v7, p7

    .line 360
    .line 361
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 362
    .line 363
    .line 364
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 365
    .line 366
    :cond_18
    return-void
.end method

.method public static final NumberInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 15

    .line 1
    move/from16 v8, p8

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v5, p7

    .line 7
    .line 8
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v0, 0x1cb7a82f

    .line 11
    .line 12
    .line 13
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x2

    .line 25
    :goto_0
    or-int/2addr v0, v8

    .line 26
    or-int/lit8 v0, v0, 0x30

    .line 27
    .line 28
    move-object/from16 v11, p2

    .line 29
    .line 30
    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/16 v1, 0x100

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/16 v1, 0x80

    .line 40
    .line 41
    :goto_1
    or-int/2addr v0, v1

    .line 42
    move-object/from16 v13, p3

    .line 43
    .line 44
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const/16 v1, 0x800

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v1, 0x400

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v1

    .line 56
    and-int/lit8 v1, p9, 0x10

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    or-int/lit16 v0, v0, 0x6000

    .line 61
    .line 62
    :cond_3
    move/from16 v2, p4

    .line 63
    .line 64
    :goto_3
    move-object/from16 v6, p5

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_4
    and-int/lit16 v2, v8, 0x6000

    .line 68
    .line 69
    if-nez v2, :cond_3

    .line 70
    .line 71
    move/from16 v2, p4

    .line 72
    .line 73
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_5

    .line 78
    .line 79
    const/16 v3, 0x4000

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_5
    const/16 v3, 0x2000

    .line 83
    .line 84
    :goto_4
    or-int/2addr v0, v3

    .line 85
    goto :goto_3

    .line 86
    :goto_5
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_6

    .line 91
    .line 92
    const/high16 v3, 0x20000

    .line 93
    .line 94
    goto :goto_6

    .line 95
    :cond_6
    const/high16 v3, 0x10000

    .line 96
    .line 97
    :goto_6
    or-int/2addr v0, v3

    .line 98
    move-object/from16 v7, p6

    .line 99
    .line 100
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_7

    .line 105
    .line 106
    const/high16 v3, 0x100000

    .line 107
    .line 108
    goto :goto_7

    .line 109
    :cond_7
    const/high16 v3, 0x80000

    .line 110
    .line 111
    :goto_7
    or-int/2addr v0, v3

    .line 112
    const v3, 0x92493

    .line 113
    .line 114
    .line 115
    and-int/2addr v3, v0

    .line 116
    const v4, 0x92492

    .line 117
    .line 118
    .line 119
    const/4 v9, 0x0

    .line 120
    if-eq v3, v4, :cond_8

    .line 121
    .line 122
    const/4 v3, 0x1

    .line 123
    goto :goto_8

    .line 124
    :cond_8
    move v3, v9

    .line 125
    :goto_8
    and-int/lit8 v4, v0, 0x1

    .line 126
    .line 127
    invoke-virtual {v5, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_c

    .line 132
    .line 133
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 134
    .line 135
    .line 136
    and-int/lit8 v3, v8, 0x1

    .line 137
    .line 138
    if-eqz v3, :cond_a

    .line 139
    .line 140
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_9

    .line 145
    .line 146
    goto :goto_9

    .line 147
    :cond_9
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 148
    .line 149
    .line 150
    move-object/from16 v1, p1

    .line 151
    .line 152
    move v14, v2

    .line 153
    goto :goto_b

    .line 154
    :cond_a
    :goto_9
    if-eqz v1, :cond_b

    .line 155
    .line 156
    goto :goto_a

    .line 157
    :cond_b
    move v9, v2

    .line 158
    :goto_a
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 159
    .line 160
    move v14, v9

    .line 161
    :goto_b
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 162
    .line 163
    .line 164
    new-instance v9, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;

    .line 165
    .line 166
    move-object v12, p0

    .line 167
    move-object v10, v6

    .line 168
    invoke-direct/range {v9 .. v14}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Z)V

    .line 169
    .line 170
    .line 171
    const v2, 0x7e571714

    .line 172
    .line 173
    .line 174
    invoke-static {v2, v9, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    shr-int/lit8 v2, v0, 0xf

    .line 179
    .line 180
    and-int/lit8 v2, v2, 0x70

    .line 181
    .line 182
    const/16 v3, 0x6006

    .line 183
    .line 184
    or-int/2addr v2, v3

    .line 185
    shr-int/lit8 v0, v0, 0x9

    .line 186
    .line 187
    and-int/lit16 v0, v0, 0x380

    .line 188
    .line 189
    or-int v6, v2, v0

    .line 190
    .line 191
    const/16 v7, 0x8

    .line 192
    .line 193
    const/4 v3, 0x0

    .line 194
    move-object/from16 v2, p5

    .line 195
    .line 196
    move-object v0, v1

    .line 197
    move-object/from16 v1, p6

    .line 198
    .line 199
    invoke-static/range {v0 .. v7}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->InputLayout(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 200
    .line 201
    .line 202
    move-object v2, v0

    .line 203
    move-object v0, v5

    .line 204
    move v5, v14

    .line 205
    goto :goto_c

    .line 206
    :cond_c
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 207
    .line 208
    .line 209
    move-object v0, v5

    .line 210
    move v5, v2

    .line 211
    move-object/from16 v2, p1

    .line 212
    .line 213
    :goto_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    if-eqz v10, :cond_d

    .line 218
    .line 219
    new-instance v0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda0;

    .line 220
    .line 221
    move-object v1, p0

    .line 222
    move-object/from16 v3, p2

    .line 223
    .line 224
    move-object/from16 v4, p3

    .line 225
    .line 226
    move-object/from16 v6, p5

    .line 227
    .line 228
    move-object/from16 v7, p6

    .line 229
    .line 230
    move/from16 v9, p9

    .line 231
    .line 232
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;II)V

    .line 233
    .line 234
    .line 235
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 236
    .line 237
    :cond_d
    return-void
.end method

.method public static final PasswordInput(IILandroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Z)V
    .locals 16

    .line 1
    move/from16 v7, p0

    .line 2
    .line 3
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v13, p3

    .line 7
    .line 8
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v0, 0x73877c69

    .line 11
    .line 12
    .line 13
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    and-int/lit8 v0, v7, 0x6

    .line 17
    .line 18
    move-object/from16 v1, p7

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x2

    .line 31
    :goto_0
    or-int/2addr v0, v7

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v7

    .line 34
    :goto_1
    and-int/lit8 v2, v7, 0x30

    .line 35
    .line 36
    move-object/from16 v8, p4

    .line 37
    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    const/16 v2, 0x20

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v2, 0x10

    .line 50
    .line 51
    :goto_2
    or-int/2addr v0, v2

    .line 52
    :cond_3
    and-int/lit16 v2, v7, 0x180

    .line 53
    .line 54
    move-object/from16 v3, p5

    .line 55
    .line 56
    if-nez v2, :cond_5

    .line 57
    .line 58
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    const/16 v2, 0x100

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    const/16 v2, 0x80

    .line 68
    .line 69
    :goto_3
    or-int/2addr v0, v2

    .line 70
    :cond_5
    and-int/lit8 v2, p1, 0x8

    .line 71
    .line 72
    if-eqz v2, :cond_7

    .line 73
    .line 74
    or-int/lit16 v0, v0, 0xc00

    .line 75
    .line 76
    :cond_6
    move/from16 v4, p8

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_7
    and-int/lit16 v4, v7, 0xc00

    .line 80
    .line 81
    if-nez v4, :cond_6

    .line 82
    .line 83
    move/from16 v4, p8

    .line 84
    .line 85
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_8

    .line 90
    .line 91
    const/16 v5, 0x800

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_8
    const/16 v5, 0x400

    .line 95
    .line 96
    :goto_4
    or-int/2addr v0, v5

    .line 97
    :goto_5
    and-int/lit16 v5, v7, 0x6000

    .line 98
    .line 99
    move-object/from16 v10, p6

    .line 100
    .line 101
    if-nez v5, :cond_a

    .line 102
    .line 103
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_9

    .line 108
    .line 109
    const/16 v5, 0x4000

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_9
    const/16 v5, 0x2000

    .line 113
    .line 114
    :goto_6
    or-int/2addr v0, v5

    .line 115
    :cond_a
    const/high16 v5, 0x30000

    .line 116
    .line 117
    and-int/2addr v5, v7

    .line 118
    move-object/from16 v9, p2

    .line 119
    .line 120
    if-nez v5, :cond_c

    .line 121
    .line 122
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_b

    .line 127
    .line 128
    const/high16 v5, 0x20000

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_b
    const/high16 v5, 0x10000

    .line 132
    .line 133
    :goto_7
    or-int/2addr v0, v5

    .line 134
    :cond_c
    const v5, 0x12493

    .line 135
    .line 136
    .line 137
    and-int/2addr v5, v0

    .line 138
    const v6, 0x12492

    .line 139
    .line 140
    .line 141
    const/4 v11, 0x0

    .line 142
    if-eq v5, v6, :cond_d

    .line 143
    .line 144
    const/4 v5, 0x1

    .line 145
    goto :goto_8

    .line 146
    :cond_d
    move v5, v11

    .line 147
    :goto_8
    and-int/lit8 v6, v0, 0x1

    .line 148
    .line 149
    invoke-virtual {v13, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_11

    .line 154
    .line 155
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 156
    .line 157
    .line 158
    and-int/lit8 v5, v7, 0x1

    .line 159
    .line 160
    if-eqz v5, :cond_f

    .line 161
    .line 162
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_e

    .line 167
    .line 168
    goto :goto_9

    .line 169
    :cond_e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 170
    .line 171
    .line 172
    move v5, v4

    .line 173
    goto :goto_b

    .line 174
    :cond_f
    :goto_9
    if-eqz v2, :cond_10

    .line 175
    .line 176
    goto :goto_a

    .line 177
    :cond_10
    move v11, v4

    .line 178
    :goto_a
    move v5, v11

    .line 179
    :goto_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 180
    .line 181
    .line 182
    new-instance v1, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;

    .line 183
    .line 184
    const/4 v6, 0x0

    .line 185
    move-object/from16 v4, p7

    .line 186
    .line 187
    move-object v2, v10

    .line 188
    invoke-direct/range {v1 .. v6}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZI)V

    .line 189
    .line 190
    .line 191
    const v2, -0x4f83e31c

    .line 192
    .line 193
    .line 194
    invoke-static {v2, v1, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 195
    .line 196
    .line 197
    move-result-object v12

    .line 198
    shr-int/lit8 v1, v0, 0x3

    .line 199
    .line 200
    and-int/lit8 v1, v1, 0xe

    .line 201
    .line 202
    or-int/lit16 v1, v1, 0x6000

    .line 203
    .line 204
    shr-int/lit8 v2, v0, 0xc

    .line 205
    .line 206
    and-int/lit8 v2, v2, 0x70

    .line 207
    .line 208
    or-int/2addr v1, v2

    .line 209
    shr-int/lit8 v0, v0, 0x6

    .line 210
    .line 211
    and-int/lit16 v0, v0, 0x380

    .line 212
    .line 213
    or-int v14, v1, v0

    .line 214
    .line 215
    const/16 v15, 0x8

    .line 216
    .line 217
    const/4 v11, 0x0

    .line 218
    move-object/from16 v10, p6

    .line 219
    .line 220
    invoke-static/range {v8 .. v15}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->InputLayout(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 221
    .line 222
    .line 223
    move v4, v5

    .line 224
    goto :goto_c

    .line 225
    :cond_11
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 226
    .line 227
    .line 228
    :goto_c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    if-eqz v9, :cond_12

    .line 233
    .line 234
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/CheckboxInputKt$$ExternalSyntheticLambda1;

    .line 235
    .line 236
    move/from16 v8, p1

    .line 237
    .line 238
    move-object/from16 v6, p2

    .line 239
    .line 240
    move-object/from16 v2, p4

    .line 241
    .line 242
    move-object/from16 v3, p5

    .line 243
    .line 244
    move-object/from16 v5, p6

    .line 245
    .line 246
    move-object/from16 v1, p7

    .line 247
    .line 248
    invoke-direct/range {v0 .. v8}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/CheckboxInputKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;II)V

    .line 249
    .line 250
    .line 251
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 252
    .line 253
    :cond_12
    return-void
.end method

.method public static final SelectInput(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    .line 1
    move-object/from16 v7, p6

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-object/from16 v15, p7

    .line 10
    .line 11
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, -0x10f11171

    .line 14
    .line 15
    .line 16
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    move-object/from16 v8, p0

    .line 20
    .line 21
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x2

    .line 30
    :goto_0
    or-int v0, p8, v0

    .line 31
    .line 32
    move-object/from16 v9, p1

    .line 33
    .line 34
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/16 v2, 0x20

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    move v1, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v1, 0x10

    .line 45
    .line 46
    :goto_1
    or-int/2addr v0, v1

    .line 47
    move-object/from16 v10, p2

    .line 48
    .line 49
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    const/16 v1, 0x100

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v1, 0x80

    .line 59
    .line 60
    :goto_2
    or-int/2addr v0, v1

    .line 61
    or-int/lit16 v1, v0, 0xc00

    .line 62
    .line 63
    and-int/lit8 v3, p9, 0x10

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    or-int/lit16 v0, v0, 0x6c00

    .line 68
    .line 69
    move v1, v0

    .line 70
    move-object/from16 v0, p4

    .line 71
    .line 72
    :goto_3
    move-object/from16 v6, p5

    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_3
    move-object/from16 v0, p4

    .line 76
    .line 77
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    const/16 v4, 0x4000

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_4
    const/16 v4, 0x2000

    .line 87
    .line 88
    :goto_4
    or-int/2addr v1, v4

    .line 89
    goto :goto_3

    .line 90
    :goto_5
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_5

    .line 95
    .line 96
    const/high16 v4, 0x20000

    .line 97
    .line 98
    goto :goto_6

    .line 99
    :cond_5
    const/high16 v4, 0x10000

    .line 100
    .line 101
    :goto_6
    or-int/2addr v1, v4

    .line 102
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_6

    .line 107
    .line 108
    const/high16 v4, 0x100000

    .line 109
    .line 110
    goto :goto_7

    .line 111
    :cond_6
    const/high16 v4, 0x80000

    .line 112
    .line 113
    :goto_7
    or-int/2addr v1, v4

    .line 114
    const v4, 0x92493

    .line 115
    .line 116
    .line 117
    and-int/2addr v4, v1

    .line 118
    const v5, 0x92492

    .line 119
    .line 120
    .line 121
    const/4 v11, 0x0

    .line 122
    const/4 v12, 0x1

    .line 123
    if-eq v4, v5, :cond_7

    .line 124
    .line 125
    move v4, v12

    .line 126
    goto :goto_8

    .line 127
    :cond_7
    move v4, v11

    .line 128
    :goto_8
    and-int/lit8 v5, v1, 0x1

    .line 129
    .line 130
    invoke-virtual {v15, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_d

    .line 135
    .line 136
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 137
    .line 138
    .line 139
    and-int/lit8 v4, p8, 0x1

    .line 140
    .line 141
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 142
    .line 143
    if-eqz v4, :cond_9

    .line 144
    .line 145
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_8

    .line 150
    .line 151
    goto :goto_9

    .line 152
    :cond_8
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 153
    .line 154
    .line 155
    move v3, v12

    .line 156
    move-object v12, v0

    .line 157
    move-object/from16 v0, p3

    .line 158
    .line 159
    goto :goto_a

    .line 160
    :cond_9
    :goto_9
    if-eqz v3, :cond_b

    .line 161
    .line 162
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 167
    .line 168
    if-ne v0, v3, :cond_a

    .line 169
    .line 170
    new-instance v0, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 171
    .line 172
    const/16 v3, 0x1b

    .line 173
    .line 174
    invoke-direct {v0, v3}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_a
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 181
    .line 182
    :cond_b
    move v3, v12

    .line 183
    move-object v12, v0

    .line 184
    move-object v0, v5

    .line 185
    :goto_a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 186
    .line 187
    .line 188
    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 193
    .line 194
    invoke-interface {v4, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-interface {v4, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    sget-object v13, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 203
    .line 204
    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 205
    .line 206
    invoke-static {v13, v14, v15, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    iget-wide v13, v15, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 211
    .line 212
    ushr-long v16, v13, v2

    .line 213
    .line 214
    xor-long v13, v13, v16

    .line 215
    .line 216
    long-to-int v2, v13

    .line 217
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    invoke-static {v15, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 226
    .line 227
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 231
    .line 232
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 233
    .line 234
    .line 235
    iget-boolean v3, v15, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 236
    .line 237
    if-eqz v3, :cond_c

    .line 238
    .line 239
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 240
    .line 241
    .line 242
    goto :goto_b

    .line 243
    :cond_c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 244
    .line 245
    .line 246
    :goto_b
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 247
    .line 248
    invoke-static {v15, v11, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 249
    .line 250
    .line 251
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 252
    .line 253
    invoke-static {v15, v13, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 261
    .line 262
    invoke-static {v15, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 263
    .line 264
    .line 265
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 266
    .line 267
    invoke-static {v15, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 268
    .line 269
    .line 270
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 271
    .line 272
    invoke-static {v15, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 273
    .line 274
    .line 275
    and-int/lit8 v2, v1, 0xe

    .line 276
    .line 277
    const/16 v3, 0xc00

    .line 278
    .line 279
    or-int/2addr v2, v3

    .line 280
    and-int/lit8 v3, v1, 0x70

    .line 281
    .line 282
    or-int/2addr v2, v3

    .line 283
    and-int/lit16 v3, v1, 0x380

    .line 284
    .line 285
    or-int/2addr v2, v3

    .line 286
    const v3, 0xe000

    .line 287
    .line 288
    .line 289
    and-int/2addr v3, v1

    .line 290
    or-int/2addr v2, v3

    .line 291
    const/high16 v3, 0x70000

    .line 292
    .line 293
    and-int/2addr v1, v3

    .line 294
    or-int v16, v2, v1

    .line 295
    .line 296
    const/4 v14, 0x0

    .line 297
    move-object v11, v5

    .line 298
    move-object v13, v6

    .line 299
    const/4 v3, 0x1

    .line 300
    invoke-static/range {v8 .. v16}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldLabelKt;->TextFieldOutlinedSelect(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 304
    .line 305
    .line 306
    move-object v4, v0

    .line 307
    move-object v5, v12

    .line 308
    goto :goto_c

    .line 309
    :cond_d
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 310
    .line 311
    .line 312
    move-object/from16 v4, p3

    .line 313
    .line 314
    move-object v5, v0

    .line 315
    :goto_c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    if-eqz v10, :cond_e

    .line 320
    .line 321
    new-instance v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;

    .line 322
    .line 323
    move-object/from16 v1, p0

    .line 324
    .line 325
    move-object/from16 v2, p1

    .line 326
    .line 327
    move-object/from16 v3, p2

    .line 328
    .line 329
    move-object/from16 v6, p5

    .line 330
    .line 331
    move/from16 v8, p8

    .line 332
    .line 333
    move/from16 v9, p9

    .line 334
    .line 335
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;-><init>(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;II)V

    .line 336
    .line 337
    .line 338
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 339
    .line 340
    :cond_e
    return-void
.end method

.method public static final SwitchInput(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v5, p5

    .line 8
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const p5, -0x573077f

    .line 11
    .line 12
    .line 13
    invoke-virtual {v5, p5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p5

    .line 20
    if-eqz p5, :cond_0

    .line 21
    .line 22
    const/4 p5, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p5, 0x2

    .line 25
    :goto_0
    or-int/2addr p5, p6

    .line 26
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const/16 v0, 0x20

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v0, 0x10

    .line 36
    .line 37
    :goto_1
    or-int/2addr p5, v0

    .line 38
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const/16 v0, 0x100

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 v0, 0x80

    .line 48
    .line 49
    :goto_2
    or-int/2addr p5, v0

    .line 50
    or-int/lit16 p5, p5, 0x6c00

    .line 51
    .line 52
    invoke-virtual {v5, p4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    const/high16 v0, 0x20000

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    const/high16 v0, 0x10000

    .line 62
    .line 63
    :goto_3
    or-int/2addr p5, v0

    .line 64
    const v0, 0x12493

    .line 65
    .line 66
    .line 67
    and-int/2addr v0, p5

    .line 68
    const v1, 0x12492

    .line 69
    .line 70
    .line 71
    if-eq v0, v1, :cond_4

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    goto :goto_4

    .line 75
    :cond_4
    const/4 v0, 0x0

    .line 76
    :goto_4
    and-int/lit8 v1, p5, 0x1

    .line 77
    .line 78
    invoke-virtual {v5, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 85
    .line 86
    .line 87
    and-int/lit8 v0, p6, 0x1

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    goto :goto_6

    .line 98
    :cond_5
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 99
    .line 100
    .line 101
    :goto_5
    move-object v0, p3

    .line 102
    goto :goto_7

    .line 103
    :cond_6
    :goto_6
    sget-object p3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :goto_7
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 107
    .line 108
    .line 109
    new-instance p3, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/SwitchInputKt$$ExternalSyntheticLambda0;

    .line 110
    .line 111
    invoke-direct {p3, p2, p1, p0}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/SwitchInputKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;ZLjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const v1, 0xcc30e7c

    .line 115
    .line 116
    .line 117
    invoke-static {v1, p3, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    shr-int/lit8 p3, p5, 0xc

    .line 122
    .line 123
    and-int/lit8 p3, p3, 0x70

    .line 124
    .line 125
    or-int/lit16 v6, p3, 0x6186

    .line 126
    .line 127
    const/16 v7, 0x8

    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    const/4 v3, 0x0

    .line 131
    move-object v1, p4

    .line 132
    invoke-static/range {v0 .. v7}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->InputLayout(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 133
    .line 134
    .line 135
    move-object p5, v1

    .line 136
    move-object p4, v0

    .line 137
    goto :goto_8

    .line 138
    :cond_7
    move-object p5, p4

    .line 139
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 140
    .line 141
    .line 142
    move-object p4, p3

    .line 143
    :goto_8
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    move-object p3, p2

    .line 150
    move p2, p1

    .line 151
    move-object p1, p0

    .line 152
    new-instance p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;

    .line 153
    .line 154
    invoke-direct/range {p0 .. p6}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValuesImpl;I)V

    .line 155
    .line 156
    .line 157
    iput-object p0, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 158
    .line 159
    :cond_8
    return-void
.end method

.method public static final TextInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/ui/autofill/ContentType;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    .line 1
    move/from16 v12, p12

    .line 2
    .line 3
    move/from16 v13, p13

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v0, p11

    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v1, -0x263b6952

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    and-int/lit8 v1, v12, 0x6

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    move-object/from16 v1, p0

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    const/4 v4, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v4, 0x2

    .line 33
    :goto_0
    or-int/2addr v4, v12

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object/from16 v1, p0

    .line 36
    .line 37
    move v4, v12

    .line 38
    :goto_1
    and-int/lit8 v5, v13, 0x2

    .line 39
    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    or-int/lit8 v4, v4, 0x30

    .line 43
    .line 44
    :cond_2
    move-object/from16 v6, p1

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    and-int/lit8 v6, v12, 0x30

    .line 48
    .line 49
    if-nez v6, :cond_2

    .line 50
    .line 51
    move-object/from16 v6, p1

    .line 52
    .line 53
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_4

    .line 58
    .line 59
    const/16 v7, 0x20

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    const/16 v7, 0x10

    .line 63
    .line 64
    :goto_2
    or-int/2addr v4, v7

    .line 65
    :goto_3
    and-int/lit8 v7, v13, 0x4

    .line 66
    .line 67
    if-eqz v7, :cond_6

    .line 68
    .line 69
    or-int/lit16 v4, v4, 0x180

    .line 70
    .line 71
    :cond_5
    move-object/from16 v8, p2

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_6
    and-int/lit16 v8, v12, 0x180

    .line 75
    .line 76
    if-nez v8, :cond_5

    .line 77
    .line 78
    move-object/from16 v8, p2

    .line 79
    .line 80
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-eqz v9, :cond_7

    .line 85
    .line 86
    const/16 v9, 0x100

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_7
    const/16 v9, 0x80

    .line 90
    .line 91
    :goto_4
    or-int/2addr v4, v9

    .line 92
    :goto_5
    and-int/lit16 v9, v12, 0xc00

    .line 93
    .line 94
    if-nez v9, :cond_9

    .line 95
    .line 96
    move-object/from16 v9, p3

    .line 97
    .line 98
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    if-eqz v10, :cond_8

    .line 103
    .line 104
    const/16 v10, 0x800

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_8
    const/16 v10, 0x400

    .line 108
    .line 109
    :goto_6
    or-int/2addr v4, v10

    .line 110
    goto :goto_7

    .line 111
    :cond_9
    move-object/from16 v9, p3

    .line 112
    .line 113
    :goto_7
    and-int/lit8 v10, v13, 0x10

    .line 114
    .line 115
    if-eqz v10, :cond_b

    .line 116
    .line 117
    or-int/lit16 v4, v4, 0x6000

    .line 118
    .line 119
    :cond_a
    move/from16 v11, p4

    .line 120
    .line 121
    goto :goto_9

    .line 122
    :cond_b
    and-int/lit16 v11, v12, 0x6000

    .line 123
    .line 124
    if-nez v11, :cond_a

    .line 125
    .line 126
    move/from16 v11, p4

    .line 127
    .line 128
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 129
    .line 130
    .line 131
    move-result v14

    .line 132
    if-eqz v14, :cond_c

    .line 133
    .line 134
    const/16 v14, 0x4000

    .line 135
    .line 136
    goto :goto_8

    .line 137
    :cond_c
    const/16 v14, 0x2000

    .line 138
    .line 139
    :goto_8
    or-int/2addr v4, v14

    .line 140
    :goto_9
    and-int/lit8 v14, v13, 0x20

    .line 141
    .line 142
    const/high16 v15, 0x30000

    .line 143
    .line 144
    if-eqz v14, :cond_e

    .line 145
    .line 146
    or-int/2addr v4, v15

    .line 147
    :cond_d
    move-object/from16 v15, p5

    .line 148
    .line 149
    goto :goto_b

    .line 150
    :cond_e
    and-int/2addr v15, v12

    .line 151
    if-nez v15, :cond_d

    .line 152
    .line 153
    move-object/from16 v15, p5

    .line 154
    .line 155
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v16

    .line 159
    if-eqz v16, :cond_f

    .line 160
    .line 161
    const/high16 v16, 0x20000

    .line 162
    .line 163
    goto :goto_a

    .line 164
    :cond_f
    const/high16 v16, 0x10000

    .line 165
    .line 166
    :goto_a
    or-int v4, v4, v16

    .line 167
    .line 168
    :goto_b
    const/high16 v16, 0x180000

    .line 169
    .line 170
    and-int v16, v12, v16

    .line 171
    .line 172
    if-nez v16, :cond_11

    .line 173
    .line 174
    and-int/lit8 v16, v13, 0x40

    .line 175
    .line 176
    move-object/from16 v2, p6

    .line 177
    .line 178
    if-nez v16, :cond_10

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v16

    .line 184
    if-eqz v16, :cond_10

    .line 185
    .line 186
    const/high16 v16, 0x100000

    .line 187
    .line 188
    goto :goto_c

    .line 189
    :cond_10
    const/high16 v16, 0x80000

    .line 190
    .line 191
    :goto_c
    or-int v4, v4, v16

    .line 192
    .line 193
    goto :goto_d

    .line 194
    :cond_11
    move-object/from16 v2, p6

    .line 195
    .line 196
    :goto_d
    and-int/lit16 v3, v13, 0x80

    .line 197
    .line 198
    const/high16 v17, 0xc00000

    .line 199
    .line 200
    if-eqz v3, :cond_12

    .line 201
    .line 202
    or-int v4, v4, v17

    .line 203
    .line 204
    move/from16 v1, p7

    .line 205
    .line 206
    goto :goto_f

    .line 207
    :cond_12
    and-int v17, v12, v17

    .line 208
    .line 209
    move/from16 v1, p7

    .line 210
    .line 211
    if-nez v17, :cond_14

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 214
    .line 215
    .line 216
    move-result v17

    .line 217
    if-eqz v17, :cond_13

    .line 218
    .line 219
    const/high16 v17, 0x800000

    .line 220
    .line 221
    goto :goto_e

    .line 222
    :cond_13
    const/high16 v17, 0x400000

    .line 223
    .line 224
    :goto_e
    or-int v4, v4, v17

    .line 225
    .line 226
    :cond_14
    :goto_f
    and-int/lit16 v1, v13, 0x100

    .line 227
    .line 228
    const/high16 v17, 0x6000000

    .line 229
    .line 230
    if-eqz v1, :cond_16

    .line 231
    .line 232
    or-int v4, v4, v17

    .line 233
    .line 234
    :cond_15
    move/from16 v17, v1

    .line 235
    .line 236
    move/from16 v1, p8

    .line 237
    .line 238
    goto :goto_11

    .line 239
    :cond_16
    and-int v17, v12, v17

    .line 240
    .line 241
    if-nez v17, :cond_15

    .line 242
    .line 243
    move/from16 v17, v1

    .line 244
    .line 245
    move/from16 v1, p8

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 248
    .line 249
    .line 250
    move-result v18

    .line 251
    if-eqz v18, :cond_17

    .line 252
    .line 253
    const/high16 v18, 0x4000000

    .line 254
    .line 255
    goto :goto_10

    .line 256
    :cond_17
    const/high16 v18, 0x2000000

    .line 257
    .line 258
    :goto_10
    or-int v4, v4, v18

    .line 259
    .line 260
    :goto_11
    and-int/lit16 v1, v13, 0x200

    .line 261
    .line 262
    const/high16 v18, 0x30000000

    .line 263
    .line 264
    if-eqz v1, :cond_19

    .line 265
    .line 266
    or-int v4, v4, v18

    .line 267
    .line 268
    :cond_18
    move/from16 v18, v1

    .line 269
    .line 270
    move-object/from16 v1, p9

    .line 271
    .line 272
    goto :goto_13

    .line 273
    :cond_19
    and-int v18, v12, v18

    .line 274
    .line 275
    if-nez v18, :cond_18

    .line 276
    .line 277
    move/from16 v18, v1

    .line 278
    .line 279
    move-object/from16 v1, p9

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v19

    .line 285
    if-eqz v19, :cond_1a

    .line 286
    .line 287
    const/high16 v19, 0x20000000

    .line 288
    .line 289
    goto :goto_12

    .line 290
    :cond_1a
    const/high16 v19, 0x10000000

    .line 291
    .line 292
    :goto_12
    or-int v4, v4, v19

    .line 293
    .line 294
    :goto_13
    and-int/lit16 v1, v13, 0x400

    .line 295
    .line 296
    if-eqz v1, :cond_1b

    .line 297
    .line 298
    const/16 v19, 0x6

    .line 299
    .line 300
    move/from16 v20, v1

    .line 301
    .line 302
    move-object/from16 v1, p10

    .line 303
    .line 304
    goto :goto_14

    .line 305
    :cond_1b
    move/from16 v20, v1

    .line 306
    .line 307
    move-object/from16 v1, p10

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v19

    .line 313
    if-eqz v19, :cond_1c

    .line 314
    .line 315
    const/16 v19, 0x4

    .line 316
    .line 317
    goto :goto_14

    .line 318
    :cond_1c
    const/16 v19, 0x2

    .line 319
    .line 320
    :goto_14
    const v21, 0x12492493

    .line 321
    .line 322
    .line 323
    and-int v1, v4, v21

    .line 324
    .line 325
    const v2, 0x12492492

    .line 326
    .line 327
    .line 328
    const/16 v21, 0x0

    .line 329
    .line 330
    const/16 v22, 0x1

    .line 331
    .line 332
    if-ne v1, v2, :cond_1e

    .line 333
    .line 334
    and-int/lit8 v1, v19, 0x3

    .line 335
    .line 336
    const/4 v2, 0x2

    .line 337
    if-eq v1, v2, :cond_1d

    .line 338
    .line 339
    goto :goto_15

    .line 340
    :cond_1d
    move/from16 v1, v21

    .line 341
    .line 342
    goto :goto_16

    .line 343
    :cond_1e
    :goto_15
    move/from16 v1, v22

    .line 344
    .line 345
    :goto_16
    and-int/lit8 v2, v4, 0x1

    .line 346
    .line 347
    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-eqz v1, :cond_2b

    .line 352
    .line 353
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 354
    .line 355
    .line 356
    and-int/lit8 v1, v12, 0x1

    .line 357
    .line 358
    const v2, -0x380001

    .line 359
    .line 360
    .line 361
    if-eqz v1, :cond_21

    .line 362
    .line 363
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-eqz v1, :cond_1f

    .line 368
    .line 369
    goto :goto_17

    .line 370
    :cond_1f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 371
    .line 372
    .line 373
    and-int/lit8 v1, v13, 0x40

    .line 374
    .line 375
    if-eqz v1, :cond_20

    .line 376
    .line 377
    and-int/2addr v4, v2

    .line 378
    :cond_20
    move-object/from16 v5, p6

    .line 379
    .line 380
    move/from16 v22, p7

    .line 381
    .line 382
    move/from16 v20, p8

    .line 383
    .line 384
    move-object/from16 v23, p9

    .line 385
    .line 386
    move-object/from16 v17, v8

    .line 387
    .line 388
    move/from16 v21, v11

    .line 389
    .line 390
    move-object/from16 v16, v15

    .line 391
    .line 392
    move-object/from16 v15, p10

    .line 393
    .line 394
    goto/16 :goto_1e

    .line 395
    .line 396
    :cond_21
    :goto_17
    if-eqz v5, :cond_22

    .line 397
    .line 398
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 399
    .line 400
    move-object v6, v1

    .line 401
    :cond_22
    if-eqz v7, :cond_23

    .line 402
    .line 403
    const-string v1, ""

    .line 404
    .line 405
    move-object v8, v1

    .line 406
    :cond_23
    if-eqz v10, :cond_24

    .line 407
    .line 408
    goto :goto_18

    .line 409
    :cond_24
    move/from16 v21, v11

    .line 410
    .line 411
    :goto_18
    const/4 v1, 0x0

    .line 412
    if-eqz v14, :cond_25

    .line 413
    .line 414
    move-object v15, v1

    .line 415
    :cond_25
    and-int/lit8 v5, v13, 0x40

    .line 416
    .line 417
    if-eqz v5, :cond_26

    .line 418
    .line 419
    sget-object v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 420
    .line 421
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 426
    .line 427
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 435
    .line 436
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    new-instance v5, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 440
    .line 441
    const/high16 v7, 0x41800000    # 16.0f

    .line 442
    .line 443
    const/high16 v10, 0x41000000    # 8.0f

    .line 444
    .line 445
    invoke-direct {v5, v7, v10, v7, v10}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 446
    .line 447
    .line 448
    and-int/2addr v4, v2

    .line 449
    goto :goto_19

    .line 450
    :cond_26
    move-object/from16 v5, p6

    .line 451
    .line 452
    :goto_19
    if-eqz v3, :cond_27

    .line 453
    .line 454
    move/from16 v2, v22

    .line 455
    .line 456
    goto :goto_1a

    .line 457
    :cond_27
    move/from16 v2, p7

    .line 458
    .line 459
    :goto_1a
    if-eqz v17, :cond_28

    .line 460
    .line 461
    goto :goto_1b

    .line 462
    :cond_28
    move/from16 v22, p8

    .line 463
    .line 464
    :goto_1b
    if-eqz v18, :cond_29

    .line 465
    .line 466
    sget-object v3, Landroidx/compose/foundation/text/KeyboardOptions;->Default:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 467
    .line 468
    goto :goto_1c

    .line 469
    :cond_29
    move-object/from16 v3, p9

    .line 470
    .line 471
    :goto_1c
    move-object/from16 v23, v3

    .line 472
    .line 473
    move-object/from16 v17, v8

    .line 474
    .line 475
    move-object/from16 v16, v15

    .line 476
    .line 477
    if-eqz v20, :cond_2a

    .line 478
    .line 479
    move/from16 v20, v22

    .line 480
    .line 481
    move-object v15, v1

    .line 482
    :goto_1d
    move/from16 v22, v2

    .line 483
    .line 484
    goto :goto_1e

    .line 485
    :cond_2a
    move/from16 v20, v22

    .line 486
    .line 487
    move-object/from16 v15, p10

    .line 488
    .line 489
    goto :goto_1d

    .line 490
    :goto_1e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 491
    .line 492
    .line 493
    new-instance v14, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda0;

    .line 494
    .line 495
    move-object/from16 v18, p0

    .line 496
    .line 497
    move-object/from16 v19, v9

    .line 498
    .line 499
    invoke-direct/range {v14 .. v23}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/autofill/ContentType;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ZZZLandroidx/compose/foundation/text/KeyboardOptions;)V

    .line 500
    .line 501
    .line 502
    const v1, -0xa3d68ad

    .line 503
    .line 504
    .line 505
    invoke-static {v1, v14, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    shr-int/lit8 v2, v4, 0x3

    .line 510
    .line 511
    and-int/lit8 v2, v2, 0xe

    .line 512
    .line 513
    or-int/lit16 v2, v2, 0x6000

    .line 514
    .line 515
    shr-int/lit8 v3, v4, 0xf

    .line 516
    .line 517
    and-int/lit8 v3, v3, 0x70

    .line 518
    .line 519
    or-int/2addr v2, v3

    .line 520
    shr-int/lit8 v3, v4, 0x9

    .line 521
    .line 522
    and-int/lit16 v3, v3, 0x380

    .line 523
    .line 524
    or-int/2addr v2, v3

    .line 525
    const/16 v3, 0x8

    .line 526
    .line 527
    const/4 v4, 0x0

    .line 528
    move-object/from16 p9, v0

    .line 529
    .line 530
    move-object/from16 p8, v1

    .line 531
    .line 532
    move/from16 p10, v2

    .line 533
    .line 534
    move/from16 p11, v3

    .line 535
    .line 536
    move-object/from16 p7, v4

    .line 537
    .line 538
    move-object/from16 p5, v5

    .line 539
    .line 540
    move-object/from16 p4, v6

    .line 541
    .line 542
    move-object/from16 p6, v16

    .line 543
    .line 544
    invoke-static/range {p4 .. p11}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->InputLayout(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 545
    .line 546
    .line 547
    move-object v7, v5

    .line 548
    move-object v2, v6

    .line 549
    move-object v11, v15

    .line 550
    move-object/from16 v6, v16

    .line 551
    .line 552
    move-object/from16 v3, v17

    .line 553
    .line 554
    move/from16 v9, v20

    .line 555
    .line 556
    move/from16 v5, v21

    .line 557
    .line 558
    move/from16 v8, v22

    .line 559
    .line 560
    move-object/from16 v10, v23

    .line 561
    .line 562
    goto :goto_1f

    .line 563
    :cond_2b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 564
    .line 565
    .line 566
    move-object/from16 v7, p6

    .line 567
    .line 568
    move/from16 v9, p8

    .line 569
    .line 570
    move-object/from16 v10, p9

    .line 571
    .line 572
    move-object v2, v6

    .line 573
    move-object v3, v8

    .line 574
    move v5, v11

    .line 575
    move-object v6, v15

    .line 576
    move/from16 v8, p7

    .line 577
    .line 578
    move-object/from16 v11, p10

    .line 579
    .line 580
    :goto_1f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 581
    .line 582
    .line 583
    move-result-object v14

    .line 584
    if-eqz v14, :cond_2c

    .line 585
    .line 586
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;

    .line 587
    .line 588
    move-object/from16 v1, p0

    .line 589
    .line 590
    move-object/from16 v4, p3

    .line 591
    .line 592
    invoke-direct/range {v0 .. v13}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/ui/autofill/ContentType;II)V

    .line 593
    .line 594
    .line 595
    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 596
    .line 597
    :cond_2c
    return-void
.end method
