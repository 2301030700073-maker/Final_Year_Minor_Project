.class public abstract Landroidx/compose/material3/SurfaceKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final LocalAbsoluteTonalElevation:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;-><init>(I)V

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
    sput-object v1, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 14
    .line 15
    return-void
.end method

.method public static final Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 1

    .line 1
    and-int/lit8 p11, p12, 0x1

    .line 2
    .line 3
    if-eqz p11, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p11, p12, 0x2

    .line 8
    .line 9
    if-eqz p11, :cond_1

    .line 10
    .line 11
    sget-object p1, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p11, p12, 0x8

    .line 14
    .line 15
    if-eqz p11, :cond_2

    .line 16
    .line 17
    invoke-static {p2, p3, p10}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J

    .line 18
    .line 19
    .line 20
    move-result-wide p4

    .line 21
    :cond_2
    and-int/lit8 p11, p12, 0x10

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p11, :cond_3

    .line 25
    .line 26
    move p6, v0

    .line 27
    :cond_3
    and-int/lit8 p11, p12, 0x20

    .line 28
    .line 29
    if-eqz p11, :cond_4

    .line 30
    .line 31
    move p7, v0

    .line 32
    :cond_4
    and-int/lit8 p11, p12, 0x40

    .line 33
    .line 34
    if-eqz p11, :cond_5

    .line 35
    .line 36
    const/4 p8, 0x0

    .line 37
    :cond_5
    check-cast p10, Landroidx/compose/runtime/GapComposer;

    .line 38
    .line 39
    sget-object p11, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 40
    .line 41
    invoke-virtual {p10, p11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p12

    .line 45
    check-cast p12, Landroidx/compose/ui/unit/Dp;

    .line 46
    .line 47
    iget p12, p12, Landroidx/compose/ui/unit/Dp;->value:F

    .line 48
    .line 49
    add-float/2addr p6, p12

    .line 50
    sget-object p12, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 51
    .line 52
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 53
    .line 54
    invoke-direct {v0, p4, p5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p12, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    new-instance p5, Landroidx/compose/ui/unit/Dp;

    .line 62
    .line 63
    invoke-direct {p5, p6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p11, p5}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 67
    .line 68
    .line 69
    move-result-object p5

    .line 70
    const/4 p11, 0x2

    .line 71
    new-array p11, p11, [Landroidx/compose/runtime/ProvidedValue;

    .line 72
    .line 73
    const/4 p12, 0x0

    .line 74
    aput-object p4, p11, p12

    .line 75
    .line 76
    const/4 p4, 0x1

    .line 77
    aput-object p5, p11, p4

    .line 78
    .line 79
    move-wide p4, p2

    .line 80
    move-object p3, p1

    .line 81
    new-instance p1, Landroidx/compose/material3/SurfaceKt$Surface$1;

    .line 82
    .line 83
    move-object p2, p8

    .line 84
    move p8, p7

    .line 85
    move-object p7, p2

    .line 86
    move-object p2, p0

    .line 87
    invoke-direct/range {p1 .. p9}, Landroidx/compose/material3/SurfaceKt$Surface$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 88
    .line 89
    .line 90
    const p0, 0x1923bae6

    .line 91
    .line 92
    .line 93
    invoke-static {p0, p1, p10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const/16 p1, 0x38

    .line 98
    .line 99
    invoke-static {p11, p0, p10, p1}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public static final Surface-d85dljk(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p12

    .line 2
    .line 3
    move/from16 v1, p14

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x8

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    move v13, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move/from16 v13, p3

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v2, v1, 0x40

    .line 15
    .line 16
    move-wide/from16 v7, p5

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v7, v8, v0}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-wide/from16 v4, p7

    .line 26
    .line 27
    :goto_1
    and-int/lit16 v1, v1, 0x200

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    move-object v10, v1

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move-object/from16 v10, p9

    .line 35
    .line 36
    :goto_2
    const/4 v1, 0x0

    .line 37
    move-object v2, v0

    .line 38
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 39
    .line 40
    if-nez p10, :cond_4

    .line 41
    .line 42
    const v6, 0x5b159de8

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 53
    .line 54
    if-ne v6, v9, :cond_3

    .line 55
    .line 56
    new-instance v6, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 57
    .line 58
    invoke-direct {v6}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    check-cast v6, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 67
    .line 68
    .line 69
    move-object v12, v6

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const v6, -0xd93f531

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 78
    .line 79
    .line 80
    move-object/from16 v12, p10

    .line 81
    .line 82
    :goto_3
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 83
    .line 84
    sget-object v2, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Landroidx/compose/ui/unit/Dp;

    .line 91
    .line 92
    iget v6, v6, Landroidx/compose/ui/unit/Dp;->value:F

    .line 93
    .line 94
    const/4 v9, 0x0

    .line 95
    add-float/2addr v9, v6

    .line 96
    sget-object v6, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 97
    .line 98
    new-instance v11, Landroidx/compose/ui/graphics/Color;

    .line 99
    .line 100
    invoke-direct {v11, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    new-instance v5, Landroidx/compose/ui/unit/Dp;

    .line 108
    .line 109
    invoke-direct {v5, v9}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const/4 v5, 0x2

    .line 117
    new-array v5, v5, [Landroidx/compose/runtime/ProvidedValue;

    .line 118
    .line 119
    aput-object v4, v5, v1

    .line 120
    .line 121
    aput-object v2, v5, v3

    .line 122
    .line 123
    new-instance v4, Landroidx/compose/material3/SurfaceKt$Surface$3;

    .line 124
    .line 125
    move/from16 v11, p0

    .line 126
    .line 127
    move-object/from16 v14, p1

    .line 128
    .line 129
    move-object/from16 v6, p4

    .line 130
    .line 131
    move-object/from16 v15, p11

    .line 132
    .line 133
    move-object v1, v5

    .line 134
    move-object/from16 v5, p2

    .line 135
    .line 136
    invoke-direct/range {v4 .. v15}, Landroidx/compose/material3/SurfaceKt$Surface$3;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/foundation/BorderStroke;ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 137
    .line 138
    .line 139
    const v2, 0x59ed78f3

    .line 140
    .line 141
    .line 142
    invoke-static {v2, v4, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const/16 v3, 0x38

    .line 147
    .line 148
    invoke-static {v1, v2, v0, v3}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public static final Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p12

    .line 2
    .line 3
    move/from16 v1, p14

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x4

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    move v12, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move/from16 v12, p2

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v2, v1, 0x20

    .line 15
    .line 16
    move-wide/from16 v7, p4

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v7, v8, v0}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-wide/from16 v4, p6

    .line 26
    .line 27
    :goto_1
    and-int/lit16 v2, v1, 0x80

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    move v14, v6

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move/from16 v14, p8

    .line 35
    .line 36
    :goto_2
    and-int/lit16 v2, v1, 0x100

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    move-object v10, v9

    .line 42
    goto :goto_3

    .line 43
    :cond_3
    move-object/from16 v10, p9

    .line 44
    .line 45
    :goto_3
    and-int/lit16 v1, v1, 0x200

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_4
    move-object/from16 v9, p10

    .line 51
    .line 52
    :goto_4
    const/4 v1, 0x0

    .line 53
    move-object v2, v0

    .line 54
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 55
    .line 56
    if-nez v9, :cond_6

    .line 57
    .line 58
    const v9, -0x6563c494

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 69
    .line 70
    if-ne v9, v11, :cond_5

    .line 71
    .line 72
    new-instance v9, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 73
    .line 74
    invoke-direct {v9}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_5
    check-cast v9, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 81
    .line 82
    :goto_5
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 83
    .line 84
    .line 85
    move-object v11, v9

    .line 86
    goto :goto_6

    .line 87
    :cond_6
    const v11, 0x7899accb

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_5

    .line 94
    :goto_6
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 95
    .line 96
    sget-object v2, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    check-cast v9, Landroidx/compose/ui/unit/Dp;

    .line 103
    .line 104
    iget v9, v9, Landroidx/compose/ui/unit/Dp;->value:F

    .line 105
    .line 106
    add-float/2addr v9, v6

    .line 107
    sget-object v6, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 108
    .line 109
    new-instance v13, Landroidx/compose/ui/graphics/Color;

    .line 110
    .line 111
    invoke-direct {v13, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    new-instance v5, Landroidx/compose/ui/unit/Dp;

    .line 119
    .line 120
    invoke-direct {v5, v9}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    const/4 v5, 0x2

    .line 128
    new-array v5, v5, [Landroidx/compose/runtime/ProvidedValue;

    .line 129
    .line 130
    aput-object v4, v5, v1

    .line 131
    .line 132
    aput-object v2, v5, v3

    .line 133
    .line 134
    new-instance v4, Landroidx/compose/material3/SurfaceKt$Surface$2;

    .line 135
    .line 136
    move-object/from16 v13, p0

    .line 137
    .line 138
    move-object/from16 v6, p3

    .line 139
    .line 140
    move-object/from16 v15, p11

    .line 141
    .line 142
    move-object v1, v5

    .line 143
    move-object/from16 v5, p1

    .line 144
    .line 145
    invoke-direct/range {v4 .. v15}, Landroidx/compose/material3/SurfaceKt$Surface$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLkotlin/jvm/functions/Function0;FLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 146
    .line 147
    .line 148
    const v2, 0x329de4cf

    .line 149
    .line 150
    .line 151
    invoke-static {v2, v4, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    const/16 v3, 0x38

    .line 156
    .line 157
    invoke-static {v1, v2, v0, v3}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public static final access$surface-XO-JAsU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p5, v0

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const v7, 0x1e7df

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    move-object v6, p1

    .line 15
    move v5, p5

    .line 16
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/graphics/ColorKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFLandroidx/compose/ui/graphics/Shape;I)Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v6, p1

    .line 22
    move-object p1, v1

    .line 23
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p4, :cond_1

    .line 28
    .line 29
    iget p1, p4, Landroidx/compose/foundation/BorderStroke;->width:F

    .line 30
    .line 31
    iget-object p4, p4, Landroidx/compose/foundation/BorderStroke;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 32
    .line 33
    new-instance v1, Landroidx/compose/foundation/BorderModifierNodeElement;

    .line 34
    .line 35
    invoke-direct {v1, p1, p4, v6}, Landroidx/compose/foundation/BorderModifierNodeElement;-><init>(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0, p2, p3, v6}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0, v6}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static final access$surfaceColorAtElevation-CLU3JFs(JFLandroidx/compose/runtime/GapComposer;)J
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/material3/ColorScheme;

    .line 8
    .line 9
    sget-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalTonalElevationEnabled:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 10
    .line 11
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    check-cast p3, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surface:J

    .line 22
    .line 23
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    invoke-static {p2, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    return-wide v1

    .line 39
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 40
    .line 41
    add-float/2addr p2, p0

    .line 42
    float-to-double p0, p2

    .line 43
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    .line 44
    .line 45
    .line 46
    move-result-wide p0

    .line 47
    double-to-float p0, p0

    .line 48
    const/high16 p1, 0x40900000    # 4.5f

    .line 49
    .line 50
    mul-float/2addr p0, p1

    .line 51
    const/high16 p1, 0x40000000    # 2.0f

    .line 52
    .line 53
    add-float/2addr p0, p1

    .line 54
    const/high16 p1, 0x42c80000    # 100.0f

    .line 55
    .line 56
    div-float/2addr p0, p1

    .line 57
    iget-wide p1, v0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    .line 58
    .line 59
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide p0

    .line 63
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 64
    .line 65
    .line 66
    move-result-wide p0

    .line 67
    :cond_1
    return-wide p0
.end method
