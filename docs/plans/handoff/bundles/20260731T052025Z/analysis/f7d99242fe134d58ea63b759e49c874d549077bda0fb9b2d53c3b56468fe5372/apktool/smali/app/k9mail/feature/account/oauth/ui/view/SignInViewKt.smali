.class public abstract Lapp/k9mail/feature/account/oauth/ui/view/SignInViewKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$1800067409:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$212655698:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const v2, 0x6b4ad951

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lapp/k9mail/feature/account/oauth/ui/view/SignInViewKt;->lambda$1800067409:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    new-instance v0, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;

    .line 20
    .line 21
    const/4 v1, 0x6

    .line 22
    invoke-direct {v0, v1}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 26
    .line 27
    const v2, 0xcacde52

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lapp/k9mail/feature/account/oauth/ui/view/SignInViewKt;->lambda$212655698:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 34
    .line 35
    return-void
.end method

.method public static final GoogleSignInSupportText(Landroidx/compose/runtime/Composer;I)V
    .locals 30

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v9, p0

    .line 4
    .line 5
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, -0x24aa7b1d

    .line 8
    .line 9
    .line 10
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v3, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v3, v2

    .line 20
    :goto_0
    and-int/lit8 v4, v0, 0x1

    .line 21
    .line 22
    invoke-virtual {v9, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    const v3, 0x5c07ee08

    .line 29
    .line 30
    .line 31
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 35
    .line 36
    invoke-direct {v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 37
    .line 38
    .line 39
    const v4, 0x5c07f23b

    .line 40
    .line 41
    .line 42
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 43
    .line 44
    .line 45
    new-instance v10, Landroidx/compose/ui/text/SpanStyle;

    .line 46
    .line 47
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 48
    .line 49
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 54
    .line 55
    iget-wide v11, v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 56
    .line 57
    const/16 v28, 0x0

    .line 58
    .line 59
    const v29, 0xeffe

    .line 60
    .line 61
    .line 62
    const-wide/16 v13, 0x0

    .line 63
    .line 64
    const/4 v15, 0x0

    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    const/16 v17, 0x0

    .line 68
    .line 69
    const/16 v18, 0x0

    .line 70
    .line 71
    const/16 v19, 0x0

    .line 72
    .line 73
    const-wide/16 v20, 0x0

    .line 74
    .line 75
    const/16 v22, 0x0

    .line 76
    .line 77
    const/16 v23, 0x0

    .line 78
    .line 79
    const/16 v24, 0x0

    .line 80
    .line 81
    const-wide/16 v25, 0x0

    .line 82
    .line 83
    sget-object v27, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    .line 84
    .line 85
    invoke-direct/range {v10 .. v29}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v10}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    const v5, 0x5c080c17

    .line 93
    .line 94
    .line 95
    :try_start_0
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 96
    .line 97
    .line 98
    new-instance v5, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 99
    .line 100
    const-string v6, "https://support.thunderbird.net/kb/gmail-thunderbird-android"

    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    const/4 v8, 0x6

    .line 104
    invoke-direct {v5, v6, v7, v8}, Landroidx/compose/ui/text/LinkAnnotation$Url;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;I)V

    .line 105
    .line 106
    .line 107
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 108
    .line 109
    iget-object v7, v3, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    const/16 v8, 0xc

    .line 116
    .line 117
    invoke-direct {v6, v5, v7, v2, v8}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(Landroidx/compose/ui/text/AnnotatedString$Annotation;III)V

    .line 118
    .line 119
    .line 120
    iget-object v5, v3, Landroidx/compose/ui/text/AnnotatedString$Builder;->styleStack:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget-object v7, v3, Landroidx/compose/ui/text/AnnotatedString$Builder;->annotations:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    sub-int/2addr v5, v1

    .line 135
    const v1, 0x7f120044

    .line 136
    .line 137
    .line 138
    :try_start_1
    invoke-static {v9, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v3, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    .line 144
    .line 145
    :try_start_2
    invoke-virtual {v3, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 162
    .line 163
    .line 164
    const v2, 0x7f120043

    .line 165
    .line 166
    .line 167
    invoke-static {v2, v1, v9}, Landroidx/room/util/DBUtil;->annotatedStringResource(ILandroidx/compose/ui/text/AnnotatedString;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/AnnotatedString;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    new-instance v5, Landroidx/compose/ui/text/style/TextAlign;

    .line 172
    .line 173
    const/4 v2, 0x3

    .line 174
    invoke-direct {v5, v2}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 175
    .line 176
    .line 177
    const/4 v10, 0x0

    .line 178
    const/16 v11, 0x76

    .line 179
    .line 180
    const/4 v2, 0x0

    .line 181
    const-wide/16 v3, 0x0

    .line 182
    .line 183
    const/4 v6, 0x0

    .line 184
    const/4 v7, 0x0

    .line 185
    const/4 v8, 0x0

    .line 186
    invoke-static/range {v1 .. v11}, Lkotlin/math/MathKt;->TextBodySmall-ZHfKjFs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILkotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/Composer;II)V

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :catchall_0
    move-exception v0

    .line 191
    goto :goto_1

    .line 192
    :catchall_1
    move-exception v0

    .line 193
    :try_start_3
    invoke-virtual {v3, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 194
    .line 195
    .line 196
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    :goto_1
    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 198
    .line 199
    .line 200
    throw v0

    .line 201
    :cond_1
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 202
    .line 203
    .line 204
    :goto_2
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    if-eqz v1, :cond_2

    .line 209
    .line 210
    new-instance v2, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 211
    .line 212
    const/16 v3, 0x9

    .line 213
    .line 214
    invoke-direct {v2, v0, v3}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(II)V

    .line 215
    .line 216
    .line 217
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 218
    .line 219
    :cond_2
    return-void
.end method

.method public static final SignInView(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZZ)V
    .locals 20

    .line 1
    move/from16 v5, p0

    .line 2
    .line 3
    move/from16 v2, p4

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v13, p1

    .line 9
    .line 10
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, 0x674fc8fa

    .line 13
    .line 14
    .line 15
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    and-int/lit8 v0, v5, 0x6

    .line 19
    .line 20
    move-object/from16 v1, p3

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x2

    .line 33
    :goto_0
    or-int/2addr v0, v5

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v0, v5

    .line 36
    :goto_1
    and-int/lit8 v3, v5, 0x30

    .line 37
    .line 38
    const/16 v4, 0x20

    .line 39
    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    move v3, v4

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v3, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v3

    .line 53
    :cond_3
    or-int/lit16 v0, v0, 0x180

    .line 54
    .line 55
    and-int/lit16 v3, v5, 0xc00

    .line 56
    .line 57
    if-nez v3, :cond_5

    .line 58
    .line 59
    move/from16 v3, p5

    .line 60
    .line 61
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    const/16 v6, 0x800

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/16 v6, 0x400

    .line 71
    .line 72
    :goto_3
    or-int/2addr v0, v6

    .line 73
    goto :goto_4

    .line 74
    :cond_5
    move/from16 v3, p5

    .line 75
    .line 76
    :goto_4
    and-int/lit16 v6, v0, 0x493

    .line 77
    .line 78
    const/16 v7, 0x492

    .line 79
    .line 80
    const/4 v8, 0x1

    .line 81
    const/4 v9, 0x0

    .line 82
    if-eq v6, v7, :cond_6

    .line 83
    .line 84
    move v6, v8

    .line 85
    goto :goto_5

    .line 86
    :cond_6
    move v6, v9

    .line 87
    :goto_5
    and-int/lit8 v7, v0, 0x1

    .line 88
    .line 89
    invoke-virtual {v13, v7, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_9

    .line 94
    .line 95
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 96
    .line 97
    sget-object v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 98
    .line 99
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 104
    .line 105
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    new-instance v7, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 109
    .line 110
    new-instance v10, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    const/4 v11, 0x7

    .line 113
    invoke-direct {v10, v11}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 114
    .line 115
    .line 116
    const/high16 v11, 0x41800000    # 16.0f

    .line 117
    .line 118
    invoke-direct {v7, v11, v8, v10}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 119
    .line 120
    .line 121
    const/16 v10, 0x30

    .line 122
    .line 123
    invoke-static {v7, v6, v13, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    iget-wide v10, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 128
    .line 129
    ushr-long v14, v10, v4

    .line 130
    .line 131
    xor-long/2addr v10, v14

    .line 132
    long-to-int v4, v10

    .line 133
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 138
    .line 139
    invoke-static {v13, v10}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 144
    .line 145
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 149
    .line 150
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 151
    .line 152
    .line 153
    iget-boolean v14, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 154
    .line 155
    if-eqz v14, :cond_7

    .line 156
    .line 157
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 158
    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 162
    .line 163
    .line 164
    :goto_6
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 165
    .line 166
    invoke-static {v13, v6, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 167
    .line 168
    .line 169
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 170
    .line 171
    invoke-static {v13, v7, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 179
    .line 180
    invoke-static {v13, v4, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 181
    .line 182
    .line 183
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 184
    .line 185
    invoke-static {v13, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 186
    .line 187
    .line 188
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 189
    .line 190
    invoke-static {v13, v11, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 191
    .line 192
    .line 193
    const v4, 0x7f120048

    .line 194
    .line 195
    .line 196
    invoke-static {v13, v4}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    move-object v4, v10

    .line 201
    new-instance v10, Landroidx/compose/ui/text/style/TextAlign;

    .line 202
    .line 203
    const/4 v7, 0x3

    .line 204
    invoke-direct {v10, v7}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 205
    .line 206
    .line 207
    const/4 v14, 0x0

    .line 208
    const/16 v15, 0x36

    .line 209
    .line 210
    move v11, v7

    .line 211
    const/4 v7, 0x0

    .line 212
    move v12, v8

    .line 213
    move/from16 v16, v9

    .line 214
    .line 215
    const-wide/16 v8, 0x0

    .line 216
    .line 217
    move/from16 v17, v11

    .line 218
    .line 219
    const/4 v11, 0x0

    .line 220
    move/from16 v18, v12

    .line 221
    .line 222
    const/4 v12, 0x0

    .line 223
    move/from16 v19, v16

    .line 224
    .line 225
    move-object/from16 v16, v4

    .line 226
    .line 227
    move/from16 v4, v19

    .line 228
    .line 229
    invoke-static/range {v6 .. v15}, Lkotlin/math/MathKt;->TextBodySmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 230
    .line 231
    .line 232
    if-eqz v2, :cond_8

    .line 233
    .line 234
    const v6, 0x45aa040c

    .line 235
    .line 236
    .line 237
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 238
    .line 239
    .line 240
    and-int/lit8 v6, v0, 0xe

    .line 241
    .line 242
    shr-int/lit8 v0, v0, 0x3

    .line 243
    .line 244
    and-int/lit16 v0, v0, 0x380

    .line 245
    .line 246
    or-int/2addr v6, v0

    .line 247
    const/4 v8, 0x0

    .line 248
    const/4 v11, 0x0

    .line 249
    move-object v9, v1

    .line 250
    move v10, v3

    .line 251
    move-object v7, v13

    .line 252
    invoke-static/range {v6 .. v11}, Lapp/k9mail/feature/account/oauth/ui/view/SignInViewKt;->SignInWithGoogleButton(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZZ)V

    .line 253
    .line 254
    .line 255
    invoke-static {v13, v4}, Lapp/k9mail/feature/account/oauth/ui/view/SignInViewKt;->GoogleSignInSupportText(Landroidx/compose/runtime/Composer;I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 259
    .line 260
    .line 261
    :goto_7
    const/4 v12, 0x1

    .line 262
    goto :goto_8

    .line 263
    :cond_8
    const v1, 0x45acd12a

    .line 264
    .line 265
    .line 266
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 267
    .line 268
    .line 269
    const v1, 0x7f120047

    .line 270
    .line 271
    .line 272
    invoke-static {v13, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    shl-int/lit8 v1, v0, 0x3

    .line 277
    .line 278
    and-int/lit8 v1, v1, 0x70

    .line 279
    .line 280
    and-int/lit16 v0, v0, 0x1c00

    .line 281
    .line 282
    or-int v14, v1, v0

    .line 283
    .line 284
    const/16 v15, 0xf4

    .line 285
    .line 286
    const/4 v8, 0x0

    .line 287
    const/4 v10, 0x0

    .line 288
    const/4 v11, 0x0

    .line 289
    const/4 v12, 0x0

    .line 290
    move-object/from16 v7, p3

    .line 291
    .line 292
    move/from16 v9, p5

    .line 293
    .line 294
    invoke-static/range {v6 .. v15}, Landroidx/compose/ui/unit/IntOffsetKt;->ButtonFilled(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 298
    .line 299
    .line 300
    goto :goto_7

    .line 301
    :goto_8
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 302
    .line 303
    .line 304
    move-object/from16 v3, v16

    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 308
    .line 309
    .line 310
    move-object/from16 v3, p2

    .line 311
    .line 312
    :goto_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    if-eqz v6, :cond_a

    .line 317
    .line 318
    new-instance v0, Lapp/k9mail/feature/account/oauth/ui/view/SignInViewKt$$ExternalSyntheticLambda0;

    .line 319
    .line 320
    move-object/from16 v1, p3

    .line 321
    .line 322
    move/from16 v4, p5

    .line 323
    .line 324
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/account/oauth/ui/view/SignInViewKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Modifier;ZI)V

    .line 325
    .line 326
    .line 327
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 328
    .line 329
    :cond_a
    return-void
.end method

.method public static final SignInWithGoogleButton(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZZ)V
    .locals 20

    .line 1
    move/from16 v5, p0

    .line 2
    .line 3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v14, p1

    .line 7
    .line 8
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v0, -0x1313afbe

    .line 11
    .line 12
    .line 13
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    and-int/lit8 v0, v5, 0x6

    .line 17
    .line 18
    move-object/from16 v1, p3

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr v0, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v5

    .line 34
    :goto_1
    or-int/lit8 v0, v0, 0x30

    .line 35
    .line 36
    and-int/lit16 v2, v5, 0x180

    .line 37
    .line 38
    move/from16 v3, p4

    .line 39
    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    const/16 v2, 0x100

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v2, 0x80

    .line 52
    .line 53
    :goto_2
    or-int/2addr v0, v2

    .line 54
    :cond_3
    and-int/lit16 v2, v5, 0xc00

    .line 55
    .line 56
    if-nez v2, :cond_4

    .line 57
    .line 58
    or-int/lit16 v0, v0, 0x400

    .line 59
    .line 60
    :cond_4
    and-int/lit16 v2, v0, 0x493

    .line 61
    .line 62
    const/16 v4, 0x492

    .line 63
    .line 64
    if-eq v2, v4, :cond_5

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    goto :goto_3

    .line 68
    :cond_5
    const/4 v2, 0x0

    .line 69
    :goto_3
    and-int/lit8 v4, v0, 0x1

    .line 70
    .line 71
    invoke-virtual {v14, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_b

    .line 76
    .line 77
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 78
    .line 79
    .line 80
    and-int/lit8 v2, v5, 0x1

    .line 81
    .line 82
    if-eqz v2, :cond_7

    .line 83
    .line 84
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_6

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_6
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 92
    .line 93
    .line 94
    and-int/lit16 v0, v0, -0x1c01

    .line 95
    .line 96
    move-object/from16 v4, p2

    .line 97
    .line 98
    move/from16 v2, p5

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_7
    :goto_4
    invoke-static {v14}, Landroidx/compose/foundation/ImageKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    and-int/lit16 v0, v0, -0x1c01

    .line 106
    .line 107
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 108
    .line 109
    :goto_5
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 110
    .line 111
    .line 112
    sget-object v6, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 113
    .line 114
    const-wide v16, 0x87000000L

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    const-wide v6, 0xffffffffL

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    if-eqz v2, :cond_8

    .line 125
    .line 126
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 127
    .line 128
    .line 129
    move-result-wide v8

    .line 130
    goto :goto_6

    .line 131
    :cond_8
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v8

    .line 135
    :goto_6
    const-wide v18, 0xff4285f4L

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    if-eqz v2, :cond_9

    .line 141
    .line 142
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 143
    .line 144
    .line 145
    move-result-wide v6

    .line 146
    goto :goto_7

    .line 147
    :cond_9
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 148
    .line 149
    .line 150
    move-result-wide v6

    .line 151
    :goto_7
    const-wide/16 v12, 0x0

    .line 152
    .line 153
    const/16 v15, 0xc

    .line 154
    .line 155
    const-wide/16 v10, 0x0

    .line 156
    .line 157
    invoke-static/range {v6 .. v15}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ButtonColors;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    if-eqz v2, :cond_a

    .line 162
    .line 163
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 164
    .line 165
    .line 166
    move-result-wide v6

    .line 167
    goto :goto_8

    .line 168
    :cond_a
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 169
    .line 170
    .line 171
    move-result-wide v6

    .line 172
    :goto_8
    const/high16 v8, 0x3f800000    # 1.0f

    .line 173
    .line 174
    invoke-static {v8, v6, v7}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    new-instance v13, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 179
    .line 180
    const/4 v6, 0x0

    .line 181
    invoke-direct {v13, v6, v6, v6, v6}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 182
    .line 183
    .line 184
    and-int/lit8 v6, v0, 0xe

    .line 185
    .line 186
    const/high16 v7, 0x30c00000

    .line 187
    .line 188
    or-int/2addr v6, v7

    .line 189
    and-int/lit8 v7, v0, 0x70

    .line 190
    .line 191
    or-int/2addr v6, v7

    .line 192
    and-int/lit16 v0, v0, 0x380

    .line 193
    .line 194
    or-int v16, v6, v0

    .line 195
    .line 196
    const/16 v17, 0x128

    .line 197
    .line 198
    const/4 v9, 0x0

    .line 199
    const/4 v11, 0x0

    .line 200
    move-object v15, v14

    .line 201
    sget-object v14, Lapp/k9mail/feature/account/oauth/ui/view/SignInViewKt;->lambda$212655698:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 202
    .line 203
    move-object v6, v1

    .line 204
    move v8, v3

    .line 205
    move-object v7, v4

    .line 206
    invoke-static/range {v6 .. v17}, Landroidx/compose/material3/CardKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 207
    .line 208
    .line 209
    move-object v14, v15

    .line 210
    move v4, v2

    .line 211
    move-object v2, v7

    .line 212
    goto :goto_9

    .line 213
    :cond_b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 214
    .line 215
    .line 216
    move-object/from16 v2, p2

    .line 217
    .line 218
    move/from16 v4, p5

    .line 219
    .line 220
    :goto_9
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    if-eqz v6, :cond_c

    .line 225
    .line 226
    new-instance v0, Lapp/k9mail/feature/account/oauth/ui/view/SignInViewKt$$ExternalSyntheticLambda0;

    .line 227
    .line 228
    move-object/from16 v1, p3

    .line 229
    .line 230
    move/from16 v3, p4

    .line 231
    .line 232
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/account/oauth/ui/view/SignInViewKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZI)V

    .line 233
    .line 234
    .line 235
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 236
    .line 237
    :cond_c
    return-void
.end method
