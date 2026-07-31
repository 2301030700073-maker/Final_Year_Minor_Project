.class public abstract Landroidx/compose/foundation/layout/OffsetKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final Center:Landroidx/compose/foundation/layout/Arrangement$End$1;

.field public static final DefaultDensity:Landroidx/compose/foundation/layout/FlexBoxKt$DefaultDensity$1;

.field public static final EmptyWindowInsets:Landroidx/compose/foundation/layout/FixedIntInsets;

.field public static final End:I = 0x6

.field public static final End:Landroidx/compose/foundation/layout/Arrangement$End$1;

.field public static final Horizontal:I = 0xf

.field public static final Left:I = 0xa

.field public static final Left:Landroidx/compose/foundation/layout/Arrangement$End$1;

.field public static final Right:I = 0x5

.field public static final Right:Landroidx/compose/foundation/layout/Arrangement$End$1;

.field public static final SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$End$1;

.field public static final SpaceEvenly:Landroidx/compose/foundation/layout/Arrangement$End$1;

.field public static final Start:I = 0x9

.field public static final Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

.field public static final Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

.field public static final imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

.field public static final safeContentLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

.field public static final safeDrawingLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/Arrangement$End$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/layout/OffsetKt;->Left:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/Arrangement$End$1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/foundation/layout/OffsetKt;->Right:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/Arrangement$End$1;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/Arrangement$End$1;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Landroidx/compose/foundation/layout/OffsetKt;->End:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 32
    .line 33
    new-instance v0, Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/FlowRowOverflow;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 40
    .line 41
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/Arrangement$End$1;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Landroidx/compose/foundation/layout/OffsetKt;->Center:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 48
    .line 49
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 50
    .line 51
    const/4 v1, 0x5

    .line 52
    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/Arrangement$End$1;-><init>(I)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Landroidx/compose/foundation/layout/OffsetKt;->SpaceEvenly:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 56
    .line 57
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/Arrangement$End$1;-><init>(I)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Landroidx/compose/foundation/layout/OffsetKt;->SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 64
    .line 65
    new-instance v0, Landroidx/compose/foundation/layout/FlexBoxKt$DefaultDensity$1;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    sput-object v0, Landroidx/compose/foundation/layout/OffsetKt;->DefaultDensity:Landroidx/compose/foundation/layout/FlexBoxKt$DefaultDensity$1;

    .line 71
    .line 72
    new-instance v0, Landroidx/compose/foundation/layout/FixedIntInsets;

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/FixedIntInsets;-><init>(I)V

    .line 76
    .line 77
    .line 78
    sput-object v0, Landroidx/compose/foundation/layout/OffsetKt;->EmptyWindowInsets:Landroidx/compose/foundation/layout/FixedIntInsets;

    .line 79
    .line 80
    new-instance v0, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 81
    .line 82
    const/4 v1, 0x7

    .line 83
    invoke-direct {v0, v1}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 84
    .line 85
    .line 86
    sput-object v0, Landroidx/compose/foundation/layout/OffsetKt;->safeDrawingLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 87
    .line 88
    new-instance v0, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 89
    .line 90
    const/16 v1, 0x8

    .line 91
    .line 92
    invoke-direct {v0, v1}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Landroidx/compose/foundation/layout/OffsetKt;->safeContentLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 96
    .line 97
    new-instance v0, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 98
    .line 99
    const/16 v1, 0x9

    .line 100
    .line 101
    invoke-direct {v0, v1}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 102
    .line 103
    .line 104
    sput-object v0, Landroidx/compose/foundation/layout/OffsetKt;->imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 105
    .line 106
    return-void
.end method

.method public static final BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 11

    .line 1
    move/from16 v5, p5

    .line 2
    .line 3
    move-object v0, p4

    .line 4
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    const v1, 0x16a877ea

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    and-int/lit8 v1, v5, 0x6

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v2

    .line 26
    :goto_0
    or-int/2addr v1, v5

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v1, v5

    .line 29
    :goto_1
    or-int/lit8 v3, v1, 0x30

    .line 30
    .line 31
    and-int/lit8 v6, p6, 0x4

    .line 32
    .line 33
    if-eqz v6, :cond_2

    .line 34
    .line 35
    or-int/lit16 v3, v1, 0x1b0

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    and-int/lit16 v1, v5, 0x180

    .line 39
    .line 40
    if-nez v1, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    const/16 v1, 0x100

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    const/16 v1, 0x80

    .line 52
    .line 53
    :goto_2
    or-int/2addr v3, v1

    .line 54
    :cond_4
    :goto_3
    and-int/lit16 v1, v5, 0xc00

    .line 55
    .line 56
    const/16 v7, 0x800

    .line 57
    .line 58
    if-nez v1, :cond_6

    .line 59
    .line 60
    invoke-virtual {v0, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    move v1, v7

    .line 67
    goto :goto_4

    .line 68
    :cond_5
    const/16 v1, 0x400

    .line 69
    .line 70
    :goto_4
    or-int/2addr v3, v1

    .line 71
    :cond_6
    and-int/lit16 v1, v3, 0x493

    .line 72
    .line 73
    const/16 v8, 0x492

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    const/4 v10, 0x1

    .line 77
    if-eq v1, v8, :cond_7

    .line 78
    .line 79
    move v1, v10

    .line 80
    goto :goto_5

    .line 81
    :cond_7
    move v1, v9

    .line 82
    :goto_5
    and-int/lit8 v8, v3, 0x1

    .line 83
    .line 84
    invoke-virtual {v0, v8, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_c

    .line 89
    .line 90
    sget-object p1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 91
    .line 92
    if-eqz v6, :cond_8

    .line 93
    .line 94
    move p2, v9

    .line 95
    :cond_8
    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    and-int/lit16 v6, v3, 0x1c00

    .line 100
    .line 101
    if-ne v6, v7, :cond_9

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_9
    move v10, v9

    .line 105
    :goto_6
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    or-int/2addr v6, v10

    .line 110
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    if-nez v6, :cond_a

    .line 115
    .line 116
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 117
    .line 118
    if-ne v7, v6, :cond_b

    .line 119
    .line 120
    :cond_a
    new-instance v7, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;

    .line 121
    .line 122
    invoke-direct {v7, v2, v1, p3}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_b
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 129
    .line 130
    and-int/lit8 v1, v3, 0xe

    .line 131
    .line 132
    invoke-static {p0, v7, v0, v1, v9}, Landroidx/compose/ui/layout/RulerKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 133
    .line 134
    .line 135
    :goto_7
    move-object v2, p1

    .line 136
    move v3, p2

    .line 137
    goto :goto_8

    .line 138
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 139
    .line 140
    .line 141
    goto :goto_7

    .line 142
    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-eqz p1, :cond_d

    .line 147
    .line 148
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda4;

    .line 149
    .line 150
    move-object v1, p0

    .line 151
    move-object v4, p3

    .line 152
    move/from16 v6, p6

    .line 153
    .line 154
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 155
    .line 156
    .line 157
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 158
    .line 159
    :cond_d
    return-void
.end method

.method public static final FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/foundation/layout/FlowRowOverflow;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 18

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
    move/from16 v8, p3

    .line 8
    .line 9
    move-object/from16 v0, p5

    .line 10
    .line 11
    move/from16 v10, p7

    .line 12
    .line 13
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 14
    .line 15
    move-object/from16 v11, p6

    .line 16
    .line 17
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    const v5, -0x749f38e1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    and-int/lit8 v5, v10, 0x6

    .line 26
    .line 27
    const/4 v6, 0x4

    .line 28
    if-nez v5, :cond_1

    .line 29
    .line 30
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    move v5, v6

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v5, 0x2

    .line 39
    :goto_0
    or-int/2addr v5, v10

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v5, v10

    .line 42
    :goto_1
    and-int/lit8 v7, v10, 0x30

    .line 43
    .line 44
    const/16 v12, 0x20

    .line 45
    .line 46
    if-nez v7, :cond_3

    .line 47
    .line 48
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_2

    .line 53
    .line 54
    move v7, v12

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v7, 0x10

    .line 57
    .line 58
    :goto_2
    or-int/2addr v5, v7

    .line 59
    :cond_3
    and-int/lit16 v7, v10, 0x180

    .line 60
    .line 61
    if-nez v7, :cond_5

    .line 62
    .line 63
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_4

    .line 68
    .line 69
    const/16 v7, 0x100

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    const/16 v7, 0x80

    .line 73
    .line 74
    :goto_3
    or-int/2addr v5, v7

    .line 75
    :cond_5
    and-int/lit16 v7, v10, 0xc00

    .line 76
    .line 77
    if-nez v7, :cond_7

    .line 78
    .line 79
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_6

    .line 84
    .line 85
    const/16 v7, 0x800

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    const/16 v7, 0x400

    .line 89
    .line 90
    :goto_4
    or-int/2addr v5, v7

    .line 91
    :cond_7
    and-int/lit16 v7, v10, 0x6000

    .line 92
    .line 93
    const v14, 0x7fffffff

    .line 94
    .line 95
    .line 96
    if-nez v7, :cond_9

    .line 97
    .line 98
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_8

    .line 103
    .line 104
    const/16 v7, 0x4000

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_8
    const/16 v7, 0x2000

    .line 108
    .line 109
    :goto_5
    or-int/2addr v5, v7

    .line 110
    :cond_9
    const/high16 v7, 0x30000

    .line 111
    .line 112
    and-int/2addr v7, v10

    .line 113
    if-nez v7, :cond_b

    .line 114
    .line 115
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-eqz v7, :cond_a

    .line 120
    .line 121
    const/high16 v7, 0x20000

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_a
    const/high16 v7, 0x10000

    .line 125
    .line 126
    :goto_6
    or-int/2addr v5, v7

    .line 127
    :cond_b
    const/high16 v7, 0x180000

    .line 128
    .line 129
    and-int/2addr v7, v10

    .line 130
    const/high16 v15, 0x100000

    .line 131
    .line 132
    if-nez v7, :cond_d

    .line 133
    .line 134
    move-object/from16 v7, p4

    .line 135
    .line 136
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v16

    .line 140
    if-eqz v16, :cond_c

    .line 141
    .line 142
    move/from16 v16, v15

    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_c
    const/high16 v16, 0x80000

    .line 146
    .line 147
    :goto_7
    or-int v5, v5, v16

    .line 148
    .line 149
    goto :goto_8

    .line 150
    :cond_d
    move-object/from16 v7, p4

    .line 151
    .line 152
    :goto_8
    const/high16 v16, 0xc00000

    .line 153
    .line 154
    and-int v16, v10, v16

    .line 155
    .line 156
    if-nez v16, :cond_f

    .line 157
    .line 158
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v16

    .line 162
    if-eqz v16, :cond_e

    .line 163
    .line 164
    const/high16 v16, 0x800000

    .line 165
    .line 166
    goto :goto_9

    .line 167
    :cond_e
    const/high16 v16, 0x400000

    .line 168
    .line 169
    :goto_9
    or-int v5, v5, v16

    .line 170
    .line 171
    :cond_f
    move/from16 v16, v5

    .line 172
    .line 173
    const v5, 0x492493

    .line 174
    .line 175
    .line 176
    and-int v5, v16, v5

    .line 177
    .line 178
    const v14, 0x492492

    .line 179
    .line 180
    .line 181
    if-eq v5, v14, :cond_10

    .line 182
    .line 183
    const/4 v5, 0x1

    .line 184
    goto :goto_a

    .line 185
    :cond_10
    const/4 v5, 0x0

    .line 186
    :goto_a
    and-int/lit8 v14, v16, 0x1

    .line 187
    .line 188
    invoke-virtual {v11, v14, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-eqz v5, :cond_2d

    .line 193
    .line 194
    const/high16 v5, 0x380000

    .line 195
    .line 196
    and-int v14, v16, v5

    .line 197
    .line 198
    if-ne v14, v15, :cond_11

    .line 199
    .line 200
    const/4 v5, 0x1

    .line 201
    goto :goto_b

    .line 202
    :cond_11
    const/4 v5, 0x0

    .line 203
    :goto_b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 208
    .line 209
    if-nez v5, :cond_12

    .line 210
    .line 211
    if-ne v13, v15, :cond_13

    .line 212
    .line 213
    :cond_12
    new-instance v13, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 214
    .line 215
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    :cond_13
    check-cast v13, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 225
    .line 226
    shr-int/lit8 v5, v16, 0x3

    .line 227
    .line 228
    and-int/lit8 v17, v5, 0xe

    .line 229
    .line 230
    xor-int/lit8 v9, v17, 0x6

    .line 231
    .line 232
    if-le v9, v6, :cond_14

    .line 233
    .line 234
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    if-nez v9, :cond_15

    .line 239
    .line 240
    :cond_14
    and-int/lit8 v9, v5, 0x6

    .line 241
    .line 242
    if-ne v9, v6, :cond_16

    .line 243
    .line 244
    :cond_15
    const/4 v6, 0x1

    .line 245
    goto :goto_c

    .line 246
    :cond_16
    const/4 v6, 0x0

    .line 247
    :goto_c
    and-int/lit8 v9, v5, 0x70

    .line 248
    .line 249
    xor-int/lit8 v9, v9, 0x30

    .line 250
    .line 251
    if-le v9, v12, :cond_17

    .line 252
    .line 253
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-nez v9, :cond_18

    .line 258
    .line 259
    :cond_17
    and-int/lit8 v9, v5, 0x30

    .line 260
    .line 261
    if-ne v9, v12, :cond_19

    .line 262
    .line 263
    :cond_18
    const/4 v9, 0x1

    .line 264
    goto :goto_d

    .line 265
    :cond_19
    const/4 v9, 0x0

    .line 266
    :goto_d
    or-int/2addr v6, v9

    .line 267
    and-int/lit16 v9, v5, 0x380

    .line 268
    .line 269
    xor-int/lit16 v9, v9, 0x180

    .line 270
    .line 271
    move/from16 v17, v12

    .line 272
    .line 273
    const/16 v12, 0x100

    .line 274
    .line 275
    if-le v9, v12, :cond_1a

    .line 276
    .line 277
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v9

    .line 281
    if-nez v9, :cond_1b

    .line 282
    .line 283
    :cond_1a
    and-int/lit16 v9, v5, 0x180

    .line 284
    .line 285
    if-ne v9, v12, :cond_1c

    .line 286
    .line 287
    :cond_1b
    const/4 v9, 0x1

    .line 288
    goto :goto_e

    .line 289
    :cond_1c
    const/4 v9, 0x0

    .line 290
    :goto_e
    or-int/2addr v6, v9

    .line 291
    and-int/lit16 v9, v5, 0x1c00

    .line 292
    .line 293
    xor-int/lit16 v9, v9, 0xc00

    .line 294
    .line 295
    const/16 v12, 0x800

    .line 296
    .line 297
    if-le v9, v12, :cond_1d

    .line 298
    .line 299
    const v9, 0x7fffffff

    .line 300
    .line 301
    .line 302
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 303
    .line 304
    .line 305
    move-result v9

    .line 306
    if-nez v9, :cond_1e

    .line 307
    .line 308
    :cond_1d
    and-int/lit16 v9, v5, 0xc00

    .line 309
    .line 310
    if-ne v9, v12, :cond_1f

    .line 311
    .line 312
    :cond_1e
    const/4 v9, 0x1

    .line 313
    goto :goto_f

    .line 314
    :cond_1f
    const/4 v9, 0x0

    .line 315
    :goto_f
    or-int/2addr v6, v9

    .line 316
    const v9, 0xe000

    .line 317
    .line 318
    .line 319
    and-int/2addr v9, v5

    .line 320
    xor-int/lit16 v9, v9, 0x6000

    .line 321
    .line 322
    const/16 v12, 0x4000

    .line 323
    .line 324
    if-le v9, v12, :cond_20

    .line 325
    .line 326
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 327
    .line 328
    .line 329
    move-result v9

    .line 330
    if-nez v9, :cond_21

    .line 331
    .line 332
    :cond_20
    and-int/lit16 v5, v5, 0x6000

    .line 333
    .line 334
    if-ne v5, v12, :cond_22

    .line 335
    .line 336
    :cond_21
    const/4 v5, 0x1

    .line 337
    goto :goto_10

    .line 338
    :cond_22
    const/4 v5, 0x0

    .line 339
    :goto_10
    or-int/2addr v5, v6

    .line 340
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    or-int/2addr v5, v6

    .line 345
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    if-nez v5, :cond_23

    .line 350
    .line 351
    if-ne v6, v15, :cond_24

    .line 352
    .line 353
    :cond_23
    invoke-interface {v2}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    new-instance v6, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    .line 358
    .line 359
    invoke-direct {v6, v4}, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;-><init>(Landroidx/compose/ui/BiasAlignment$Vertical;)V

    .line 360
    .line 361
    .line 362
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    new-instance v2, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    .line 367
    .line 368
    move-object v4, v3

    .line 369
    move-object v9, v13

    .line 370
    move-object/from16 v3, p1

    .line 371
    .line 372
    invoke-direct/range {v2 .. v9}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;-><init>(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;FILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    move-object v6, v2

    .line 379
    :cond_24
    check-cast v6, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    .line 380
    .line 381
    const/high16 v2, 0x100000

    .line 382
    .line 383
    if-ne v14, v2, :cond_25

    .line 384
    .line 385
    const/4 v2, 0x1

    .line 386
    goto :goto_11

    .line 387
    :cond_25
    const/4 v2, 0x0

    .line 388
    :goto_11
    const/high16 v3, 0x1c00000

    .line 389
    .line 390
    and-int v3, v16, v3

    .line 391
    .line 392
    const/high16 v4, 0x800000

    .line 393
    .line 394
    if-ne v3, v4, :cond_26

    .line 395
    .line 396
    const/4 v3, 0x1

    .line 397
    goto :goto_12

    .line 398
    :cond_26
    const/4 v3, 0x0

    .line 399
    :goto_12
    or-int/2addr v2, v3

    .line 400
    const/high16 v3, 0x70000

    .line 401
    .line 402
    and-int v3, v16, v3

    .line 403
    .line 404
    const/high16 v4, 0x20000

    .line 405
    .line 406
    if-ne v3, v4, :cond_27

    .line 407
    .line 408
    const/4 v3, 0x1

    .line 409
    goto :goto_13

    .line 410
    :cond_27
    const/4 v3, 0x0

    .line 411
    :goto_13
    or-int/2addr v2, v3

    .line 412
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    if-nez v2, :cond_29

    .line 417
    .line 418
    if-ne v3, v15, :cond_28

    .line 419
    .line 420
    goto :goto_14

    .line 421
    :cond_28
    const/4 v4, 0x1

    .line 422
    goto :goto_15

    .line 423
    :cond_29
    :goto_14
    new-instance v3, Ljava/util/ArrayList;

    .line 424
    .line 425
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .line 427
    .line 428
    new-instance v2, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;

    .line 429
    .line 430
    const/4 v4, 0x1

    .line 431
    invoke-direct {v2, v0, v4}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 432
    .line 433
    .line 434
    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 435
    .line 436
    const v7, -0x471afb91

    .line 437
    .line 438
    .line 439
    invoke-direct {v5, v7, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    :goto_15
    check-cast v3, Ljava/util/List;

    .line 452
    .line 453
    new-instance v2, Landroidx/compose/ui/window/PopupLayout$Content$4;

    .line 454
    .line 455
    const/4 v5, 0x3

    .line 456
    invoke-direct {v2, v5, v3}, Landroidx/compose/ui/window/PopupLayout$Content$4;-><init>(ILjava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 460
    .line 461
    const v5, 0x4bcece3c    # 2.7106424E7f

    .line 462
    .line 463
    .line 464
    invoke-direct {v3, v5, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    if-nez v2, :cond_2a

    .line 476
    .line 477
    if-ne v4, v15, :cond_2b

    .line 478
    .line 479
    :cond_2a
    new-instance v4, Landroidx/compose/ui/layout/MultiContentMeasurePolicyImpl;

    .line 480
    .line 481
    invoke-direct {v4, v6}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyImpl;-><init>(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    :cond_2b
    check-cast v4, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 488
    .line 489
    iget-wide v5, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 490
    .line 491
    ushr-long v7, v5, v17

    .line 492
    .line 493
    xor-long/2addr v5, v7

    .line 494
    long-to-int v2, v5

    .line 495
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 496
    .line 497
    .line 498
    move-result-object v5

    .line 499
    invoke-static {v11, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 504
    .line 505
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 506
    .line 507
    .line 508
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 509
    .line 510
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 511
    .line 512
    .line 513
    iget-boolean v8, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 514
    .line 515
    if-eqz v8, :cond_2c

    .line 516
    .line 517
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 518
    .line 519
    .line 520
    goto :goto_16

    .line 521
    :cond_2c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 522
    .line 523
    .line 524
    :goto_16
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 525
    .line 526
    invoke-static {v11, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 527
    .line 528
    .line 529
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 530
    .line 531
    invoke-static {v11, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 532
    .line 533
    .line 534
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 539
    .line 540
    invoke-static {v11, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 541
    .line 542
    .line 543
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 544
    .line 545
    invoke-static {v11, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 546
    .line 547
    .line 548
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 549
    .line 550
    invoke-static {v11, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 551
    .line 552
    .line 553
    const/4 v2, 0x0

    .line 554
    const/4 v4, 0x1

    .line 555
    invoke-static {v2, v3, v11, v4}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;Z)V

    .line 556
    .line 557
    .line 558
    goto :goto_17

    .line 559
    :cond_2d
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 560
    .line 561
    .line 562
    :goto_17
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 563
    .line 564
    .line 565
    move-result-object v8

    .line 566
    if-eqz v8, :cond_2e

    .line 567
    .line 568
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda5;

    .line 569
    .line 570
    move-object/from16 v2, p1

    .line 571
    .line 572
    move-object/from16 v3, p2

    .line 573
    .line 574
    move/from16 v4, p3

    .line 575
    .line 576
    move-object/from16 v5, p4

    .line 577
    .line 578
    move-object/from16 v6, p5

    .line 579
    .line 580
    move v7, v10

    .line 581
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/foundation/layout/FlowRowOverflow;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 582
    .line 583
    .line 584
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 585
    .line 586
    :cond_2e
    return-void
.end method

.method public static final FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Vertical;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    .line 587
    move-object/from16 v6, p7

    check-cast v6, Landroidx/compose/runtime/GapComposer;

    const v0, -0x4dacdb7f

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v1, p8, 0x6

    move v2, v1

    move-object/from16 v1, p0

    :goto_0
    move-object/from16 v10, p2

    goto :goto_2

    :cond_0
    move-object/from16 v1, p0

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    or-int v2, p8, v2

    goto :goto_0

    :goto_2
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_3

    :cond_2
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v2, v3

    or-int/lit16 v3, v2, 0x6c00

    and-int/lit8 v4, p9, 0x20

    if-eqz v4, :cond_4

    const v3, 0x36c00

    or-int/2addr v3, v2

    :cond_3
    move/from16 v2, p5

    goto :goto_5

    :cond_4
    const/high16 v2, 0x30000

    and-int v2, p8, v2

    if-nez v2, :cond_3

    move/from16 v2, p5

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x20000

    goto :goto_4

    :cond_5
    const/high16 v5, 0x10000

    :goto_4
    or-int/2addr v3, v5

    :goto_5
    const v5, 0x92493

    and-int/2addr v5, v3

    const v7, 0x92492

    if-eq v5, v7, :cond_6

    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    and-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v0, :cond_7

    .line 588
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_7

    :cond_7
    move-object v0, v1

    .line 589
    :goto_7
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    const v9, 0x7fffffff

    if-eqz v4, :cond_8

    move v2, v9

    :cond_8
    and-int/lit8 v1, v3, 0xe

    const v4, 0x180030

    or-int/2addr v1, v4

    and-int/lit16 v4, v3, 0x380

    or-int/2addr v1, v4

    or-int/lit16 v1, v1, 0x6c00

    const/high16 v4, 0x70000

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    const/high16 v3, 0xc00000

    or-int v7, v1, v3

    .line 590
    sget-object v4, Landroidx/compose/foundation/layout/FlowRowOverflow;->Clip:Landroidx/compose/foundation/layout/FlowRowOverflow;

    move-object/from16 v1, p1

    move-object/from16 v5, p6

    move v3, v2

    move-object v2, v10

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/layout/OffsetKt;->FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/foundation/layout/FlowRowOverflow;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    move v13, v3

    move-object v11, v8

    move v12, v9

    move-object v8, v0

    goto :goto_8

    .line 591
    :cond_9
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object v8, v1

    move v13, v2

    .line 592
    :goto_8
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v7, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda1;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v14, p6

    move/from16 v15, p8

    move/from16 v16, p9

    invoke-direct/range {v7 .. v16}, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Vertical;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 593
    iput-object v7, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method

.method public static PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;
    .locals 2

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_0
    and-int/lit8 p0, p0, 0x2

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/high16 v1, 0x41000000    # 8.0f

    .line 13
    .line 14
    :goto_0
    new-instance p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 15
    .line 16
    invoke-direct {p0, p1, v1, p1, v1}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public static final PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValuesImpl;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static PaddingValues-a9UjIt4$default(FFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;
    .locals 2

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p0, v1

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move p1, v1

    .line 12
    :cond_1
    new-instance p3, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 13
    .line 14
    invoke-direct {p3, p0, p1, v1, p2}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 15
    .line 16
    .line 17
    return-object p3
.end method

.method public static final Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/layout/SpacerMeasurePolicy;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    iget-wide v2, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 7
    .line 8
    const/16 v4, 0x20

    .line 9
    .line 10
    ushr-long v4, v2, v4

    .line 11
    .line 12
    xor-long/2addr v2, v4

    .line 13
    long-to-int v2, v2

    .line 14
    invoke-static {p0, p1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 28
    .line 29
    move-object v4, p0

    .line 30
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 33
    .line 34
    .line 35
    iget-boolean v5, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 44
    .line 45
    .line 46
    :goto_0
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 47
    .line 48
    invoke-static {p0, v0, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 52
    .line 53
    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 57
    .line 58
    invoke-static {p0, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 62
    .line 63
    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 71
    .line 72
    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x1

    .line 76
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public static final absoluteOffset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/OffsetPxElement;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/OffsetPxElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static constructor-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)J
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    :goto_0
    if-ne p2, v0, :cond_1

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    :goto_1
    if-ne p2, v0, :cond_2

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    :goto_2
    if-ne p2, v0, :cond_3

    .line 37
    .line 38
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    goto :goto_3

    .line 43
    :cond_3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    :goto_3
    invoke-static {v1, v2, v3, p0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 48
    .line 49
    .line 50
    move-result-wide p0

    .line 51
    return-wide p0
.end method

.method public static final consumeWindowInsets(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/FixedIntInsets;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierElement;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierElement;-><init>(Landroidx/compose/foundation/layout/FixedIntInsets;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final consumeWindowInsets(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 11
    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesConsumingModifierElement;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/PaddingValuesConsumingModifierElement;-><init>(Landroidx/compose/foundation/layout/PaddingValues;)V

    .line 12
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static copy-yUG9Ft0$default(IJ)J
    .locals 2

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 p0, p0, 0x4

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p0, v1

    .line 16
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {v1, v0, p0, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    return-wide p0
.end method

.method public static final getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;
    .locals 1

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static final getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget p0, p0, Landroidx/compose/foundation/layout/RowColumnParentData;->weight:F

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public static final height(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final measure(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[II)Landroidx/compose/ui/layout/MeasureResult;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p7

    .line 10
    .line 11
    move/from16 v10, p10

    .line 12
    .line 13
    int-to-long v5, v3

    .line 14
    sub-int v7, v10, p9

    .line 15
    .line 16
    new-array v8, v7, [I

    .line 17
    .line 18
    move/from16 v12, p9

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    const/4 v13, 0x0

    .line 22
    const/4 v14, 0x0

    .line 23
    const/4 v15, 0x0

    .line 24
    const/16 v16, 0x0

    .line 25
    .line 26
    const/16 v17, 0x0

    .line 27
    .line 28
    const/16 v18, 0x0

    .line 29
    .line 30
    :goto_0
    const/16 v19, 0x0

    .line 31
    .line 32
    if-ge v12, v10, :cond_9

    .line 33
    .line 34
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v20

    .line 38
    const/16 v21, 0x1

    .line 39
    .line 40
    move-object/from16 v11, v20

    .line 41
    .line 42
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 43
    .line 44
    move-wide/from16 v22, v5

    .line 45
    .line 46
    invoke-static {v11}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-static {v5}, Landroidx/compose/foundation/layout/OffsetKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-nez v14, :cond_3

    .line 55
    .line 56
    if-eqz v5, :cond_0

    .line 57
    .line 58
    iget-object v5, v5, Landroidx/compose/foundation/layout/RowColumnParentData;->crossAxisAlignment:Landroidx/compose/foundation/layout/OffsetKt;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    move-object/from16 v5, v19

    .line 62
    .line 63
    :goto_1
    if-eqz v5, :cond_1

    .line 64
    .line 65
    instance-of v5, v5, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    const/4 v5, 0x0

    .line 69
    :goto_2
    if-eqz v5, :cond_2

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_2
    const/4 v14, 0x0

    .line 73
    goto :goto_4

    .line 74
    :cond_3
    :goto_3
    move/from16 v14, v21

    .line 75
    .line 76
    :goto_4
    cmpl-float v5, v6, v18

    .line 77
    .line 78
    if-lez v5, :cond_4

    .line 79
    .line 80
    add-float v17, v17, v6

    .line 81
    .line 82
    add-int/lit8 v13, v13, 0x1

    .line 83
    .line 84
    move/from16 v20, v12

    .line 85
    .line 86
    goto :goto_8

    .line 87
    :cond_4
    sub-int v5, v1, v15

    .line 88
    .line 89
    aget-object v6, p8, v12

    .line 90
    .line 91
    move/from16 v16, v5

    .line 92
    .line 93
    if-nez v6, :cond_7

    .line 94
    .line 95
    const v5, 0x7fffffff

    .line 96
    .line 97
    .line 98
    if-ne v1, v5, :cond_5

    .line 99
    .line 100
    move/from16 v20, v12

    .line 101
    .line 102
    move/from16 v24, v13

    .line 103
    .line 104
    const v5, 0x7fffffff

    .line 105
    .line 106
    .line 107
    :goto_5
    const/4 v6, 0x0

    .line 108
    goto :goto_6

    .line 109
    :cond_5
    move/from16 v20, v12

    .line 110
    .line 111
    move/from16 v24, v13

    .line 112
    .line 113
    if-gez v16, :cond_6

    .line 114
    .line 115
    const/4 v5, 0x0

    .line 116
    goto :goto_5

    .line 117
    :cond_6
    move/from16 v5, v16

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :goto_6
    invoke-interface {v0, v6, v5, v2, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->createConstraints-xF2OJ5Q(IIIZ)J

    .line 121
    .line 122
    .line 123
    move-result-wide v12

    .line 124
    invoke-interface {v11, v12, v13}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    goto :goto_7

    .line 129
    :cond_7
    move/from16 v20, v12

    .line 130
    .line 131
    move/from16 v24, v13

    .line 132
    .line 133
    :goto_7
    invoke-interface {v0, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    invoke-interface {v0, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    sub-int v12, v20, p9

    .line 142
    .line 143
    aput v5, v8, v12

    .line 144
    .line 145
    sub-int v12, v16, v5

    .line 146
    .line 147
    if-gez v12, :cond_8

    .line 148
    .line 149
    const/4 v12, 0x0

    .line 150
    :cond_8
    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    .line 151
    .line 152
    .line 153
    move-result v16

    .line 154
    add-int v5, v5, v16

    .line 155
    .line 156
    add-int/2addr v15, v5

    .line 157
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    aput-object v6, p8, v20

    .line 162
    .line 163
    move/from16 v13, v24

    .line 164
    .line 165
    :goto_8
    add-int/lit8 v12, v20, 0x1

    .line 166
    .line 167
    move-wide/from16 v5, v22

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_9
    move-wide/from16 v22, v5

    .line 172
    .line 173
    move/from16 v24, v13

    .line 174
    .line 175
    const/16 v21, 0x1

    .line 176
    .line 177
    if-nez v24, :cond_a

    .line 178
    .line 179
    sub-int v15, v15, v16

    .line 180
    .line 181
    const/4 v6, 0x0

    .line 182
    goto/16 :goto_12

    .line 183
    .line 184
    :cond_a
    const v5, 0x7fffffff

    .line 185
    .line 186
    .line 187
    if-eq v1, v5, :cond_b

    .line 188
    .line 189
    move v3, v1

    .line 190
    goto :goto_9

    .line 191
    :cond_b
    move/from16 v3, p1

    .line 192
    .line 193
    :goto_9
    add-int/lit8 v13, v24, -0x1

    .line 194
    .line 195
    int-to-long v5, v13

    .line 196
    mul-long v5, v5, v22

    .line 197
    .line 198
    sub-int/2addr v3, v15

    .line 199
    int-to-long v11, v3

    .line 200
    sub-long/2addr v11, v5

    .line 201
    const-wide/16 v22, 0x0

    .line 202
    .line 203
    cmp-long v3, v11, v22

    .line 204
    .line 205
    if-gez v3, :cond_c

    .line 206
    .line 207
    move-wide/from16 v11, v22

    .line 208
    .line 209
    :cond_c
    long-to-float v3, v11

    .line 210
    div-float v3, v3, v17

    .line 211
    .line 212
    move/from16 v13, p9

    .line 213
    .line 214
    :goto_a
    if-ge v13, v10, :cond_d

    .line 215
    .line 216
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v16

    .line 220
    check-cast v16, Landroidx/compose/ui/layout/Measurable;

    .line 221
    .line 222
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 223
    .line 224
    .line 225
    move-result-object v16

    .line 226
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/OffsetKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 227
    .line 228
    .line 229
    move-result v16

    .line 230
    mul-float v16, v16, v3

    .line 231
    .line 232
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    move-wide/from16 v16, v5

    .line 237
    .line 238
    int-to-long v5, v1

    .line 239
    sub-long/2addr v11, v5

    .line 240
    add-int/lit8 v13, v13, 0x1

    .line 241
    .line 242
    move/from16 v1, p3

    .line 243
    .line 244
    move-wide/from16 v5, v16

    .line 245
    .line 246
    goto :goto_a

    .line 247
    :cond_d
    move-wide/from16 v16, v5

    .line 248
    .line 249
    move/from16 v1, p9

    .line 250
    .line 251
    const/4 v6, 0x0

    .line 252
    :goto_b
    if-ge v1, v10, :cond_13

    .line 253
    .line 254
    aget-object v5, p8, v1

    .line 255
    .line 256
    if-nez v5, :cond_12

    .line 257
    .line 258
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 263
    .line 264
    invoke-static {v5}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 265
    .line 266
    .line 267
    move-result-object v13

    .line 268
    invoke-static {v13}, Landroidx/compose/foundation/layout/OffsetKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 269
    .line 270
    .line 271
    move-result v20

    .line 272
    cmpl-float v22, v20, v18

    .line 273
    .line 274
    if-lez v22, :cond_e

    .line 275
    .line 276
    :goto_c
    move/from16 v22, v1

    .line 277
    .line 278
    goto :goto_d

    .line 279
    :cond_e
    const-string v22, "All weights <= 0 should have placeables"

    .line 280
    .line 281
    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    goto :goto_c

    .line 285
    :goto_d
    invoke-static {v11, v12}, Ljava/lang/Long;->signum(J)I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    move/from16 p5, v3

    .line 290
    .line 291
    int-to-long v3, v1

    .line 292
    sub-long/2addr v11, v3

    .line 293
    mul-float v3, p5, v20

    .line 294
    .line 295
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    add-int/2addr v3, v1

    .line 300
    const/4 v1, 0x0

    .line 301
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    if-eqz v13, :cond_f

    .line 306
    .line 307
    iget-boolean v4, v13, Landroidx/compose/foundation/layout/RowColumnParentData;->fill:Z

    .line 308
    .line 309
    goto :goto_e

    .line 310
    :cond_f
    move/from16 v4, v21

    .line 311
    .line 312
    :goto_e
    if-eqz v4, :cond_10

    .line 313
    .line 314
    const v4, 0x7fffffff

    .line 315
    .line 316
    .line 317
    if-eq v3, v4, :cond_11

    .line 318
    .line 319
    move v13, v3

    .line 320
    :goto_f
    move/from16 v1, v21

    .line 321
    .line 322
    goto :goto_10

    .line 323
    :cond_10
    const v4, 0x7fffffff

    .line 324
    .line 325
    .line 326
    :cond_11
    move v13, v1

    .line 327
    goto :goto_f

    .line 328
    :goto_10
    invoke-interface {v0, v13, v3, v2, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->createConstraints-xF2OJ5Q(IIIZ)J

    .line 329
    .line 330
    .line 331
    move-result-wide v3

    .line 332
    invoke-interface {v5, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-interface {v0, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    invoke-interface {v0, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    sub-int v13, v22, p9

    .line 345
    .line 346
    aput v4, v8, v13

    .line 347
    .line 348
    add-int/2addr v6, v4

    .line 349
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    aput-object v3, p8, v22

    .line 354
    .line 355
    move v9, v4

    .line 356
    goto :goto_11

    .line 357
    :cond_12
    move/from16 v22, v1

    .line 358
    .line 359
    move/from16 p5, v3

    .line 360
    .line 361
    move/from16 v1, v21

    .line 362
    .line 363
    :goto_11
    add-int/lit8 v3, v22, 0x1

    .line 364
    .line 365
    move-object/from16 v4, p7

    .line 366
    .line 367
    move/from16 v21, v1

    .line 368
    .line 369
    move v1, v3

    .line 370
    move/from16 v3, p5

    .line 371
    .line 372
    goto :goto_b

    .line 373
    :cond_13
    int-to-long v1, v6

    .line 374
    add-long v1, v1, v16

    .line 375
    .line 376
    long-to-int v6, v1

    .line 377
    sub-int v1, p3, v15

    .line 378
    .line 379
    if-gez v6, :cond_14

    .line 380
    .line 381
    const/4 v6, 0x0

    .line 382
    :cond_14
    if-le v6, v1, :cond_15

    .line 383
    .line 384
    move v6, v1

    .line 385
    :cond_15
    :goto_12
    if-eqz v14, :cond_1d

    .line 386
    .line 387
    move/from16 v3, p9

    .line 388
    .line 389
    const/4 v1, 0x0

    .line 390
    const/4 v2, 0x0

    .line 391
    :goto_13
    if-ge v3, v10, :cond_1c

    .line 392
    .line 393
    aget-object v4, p8, v3

    .line 394
    .line 395
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    instance-of v11, v5, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 403
    .line 404
    if-eqz v11, :cond_16

    .line 405
    .line 406
    check-cast v5, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 407
    .line 408
    goto :goto_14

    .line 409
    :cond_16
    move-object/from16 v5, v19

    .line 410
    .line 411
    :goto_14
    if-eqz v5, :cond_17

    .line 412
    .line 413
    iget-object v5, v5, Landroidx/compose/foundation/layout/RowColumnParentData;->crossAxisAlignment:Landroidx/compose/foundation/layout/OffsetKt;

    .line 414
    .line 415
    goto :goto_15

    .line 416
    :cond_17
    move-object/from16 v5, v19

    .line 417
    .line 418
    :goto_15
    if-eqz v5, :cond_18

    .line 419
    .line 420
    invoke-virtual {v5, v4}, Landroidx/compose/foundation/layout/OffsetKt;->calculateAlignmentLinePosition$foundation_layout(Landroidx/compose/ui/layout/Placeable;)Ljava/lang/Integer;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    goto :goto_16

    .line 425
    :cond_18
    move-object/from16 v5, v19

    .line 426
    .line 427
    :goto_16
    if-eqz v5, :cond_1b

    .line 428
    .line 429
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 430
    .line 431
    .line 432
    move-result v11

    .line 433
    invoke-interface {v0, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    const/high16 v12, -0x80000000

    .line 438
    .line 439
    if-eq v11, v12, :cond_19

    .line 440
    .line 441
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    goto :goto_17

    .line 446
    :cond_19
    const/4 v5, 0x0

    .line 447
    :goto_17
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    if-eq v11, v12, :cond_1a

    .line 452
    .line 453
    goto :goto_18

    .line 454
    :cond_1a
    move v11, v4

    .line 455
    :goto_18
    sub-int/2addr v4, v11

    .line 456
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    .line 461
    .line 462
    goto :goto_13

    .line 463
    :cond_1c
    move v3, v1

    .line 464
    goto :goto_19

    .line 465
    :cond_1d
    const/4 v2, 0x0

    .line 466
    const/4 v3, 0x0

    .line 467
    :goto_19
    add-int/2addr v15, v6

    .line 468
    if-gez v15, :cond_1e

    .line 469
    .line 470
    const/4 v11, 0x0

    .line 471
    :goto_1a
    move/from16 v1, p1

    .line 472
    .line 473
    goto :goto_1b

    .line 474
    :cond_1e
    move v11, v15

    .line 475
    goto :goto_1a

    .line 476
    :goto_1b
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 477
    .line 478
    .line 479
    move-result v5

    .line 480
    add-int/2addr v2, v3

    .line 481
    move/from16 v1, p2

    .line 482
    .line 483
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    .line 488
    .line 489
    .line 490
    move-result v6

    .line 491
    new-array v4, v7, [I

    .line 492
    .line 493
    move-object/from16 v2, p6

    .line 494
    .line 495
    invoke-interface {v0, v5, v8, v4, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->populateMainAxisPositions(I[I[ILandroidx/compose/ui/layout/MeasureScope;)V

    .line 496
    .line 497
    .line 498
    move-object/from16 v1, p8

    .line 499
    .line 500
    move/from16 v9, p9

    .line 501
    .line 502
    move-object/from16 v7, p11

    .line 503
    .line 504
    move/from16 v8, p12

    .line 505
    .line 506
    invoke-interface/range {v0 .. v10}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->placeHelper([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;I[III[IIII)Landroidx/compose/ui/layout/MeasureResult;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    return-object v0
.end method

.method public static final onConsumedWindowInsetsChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/ConsumedInsetsModifierElement;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/ConsumedInsetsModifierElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesElement;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/PaddingValuesElement;-><init>(Landroidx/compose/foundation/layout/PaddingValues;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/PaddingElement;

    .line 2
    .line 3
    invoke-direct {v0, p1, p1, p1, p1}, Landroidx/compose/foundation/layout/PaddingElement;-><init>(FFFF)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/PaddingElement;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p1, p2}, Landroidx/compose/foundation/layout/PaddingElement;-><init>(FFFF)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move p2, v1

    .line 12
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/PaddingElement;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/PaddingElement;-><init>(FFFF)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 1
    and-int/lit8 v0, p5, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p5, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move p2, v1

    .line 12
    :cond_1
    and-int/lit8 v0, p5, 0x4

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    move p3, v1

    .line 17
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 18
    .line 19
    if-eqz p5, :cond_3

    .line 20
    .line 21
    move p4, v1

    .line 22
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static placeCenter$foundation_layout(I[I[IZ)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    aget v4, p1, v2

    .line 8
    .line 9
    add-int/2addr v3, v4

    .line 10
    add-int/lit8 v2, v2, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sub-int/2addr p0, v3

    .line 14
    int-to-float p0, p0

    .line 15
    const/high16 v0, 0x40000000    # 2.0f

    .line 16
    .line 17
    div-float/2addr p0, v0

    .line 18
    if-nez p3, :cond_1

    .line 19
    .line 20
    array-length p3, p1

    .line 21
    move v0, v1

    .line 22
    :goto_1
    if-ge v1, p3, :cond_2

    .line 23
    .line 24
    aget v2, p1, v1

    .line 25
    .line 26
    add-int/lit8 v3, v0, 0x1

    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    aput v4, p2, v0

    .line 33
    .line 34
    int-to-float v0, v2

    .line 35
    add-float/2addr p0, v0

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    move v0, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    array-length p3, p1

    .line 41
    add-int/lit8 p3, p3, -0x1

    .line 42
    .line 43
    :goto_2
    const/4 v0, -0x1

    .line 44
    if-ge v0, p3, :cond_2

    .line 45
    .line 46
    aget v0, p1, p3

    .line 47
    .line 48
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    aput v1, p2, p3

    .line 53
    .line 54
    int-to-float v0, v0

    .line 55
    add-float/2addr p0, v0

    .line 56
    add-int/lit8 p3, p3, -0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    return-void
.end method

.method public static placeSpaceBetween$foundation_layout(I[I[IZ)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    goto :goto_4

    .line 5
    :cond_0
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    aget v4, p1, v2

    .line 12
    .line 13
    add-int/2addr v3, v4

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    array-length v0, p1

    .line 18
    const/4 v2, 0x1

    .line 19
    sub-int/2addr v0, v2

    .line 20
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sub-int/2addr p0, v3

    .line 25
    int-to-float p0, p0

    .line 26
    int-to-float v0, v0

    .line 27
    div-float/2addr p0, v0

    .line 28
    if-eqz p3, :cond_2

    .line 29
    .line 30
    array-length v0, p1

    .line 31
    if-ne v0, v2, :cond_2

    .line 32
    .line 33
    move v0, p0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    :goto_1
    if-nez p3, :cond_3

    .line 37
    .line 38
    array-length p3, p1

    .line 39
    move v2, v1

    .line 40
    :goto_2
    if-ge v1, p3, :cond_4

    .line 41
    .line 42
    aget v3, p1, v1

    .line 43
    .line 44
    add-int/lit8 v4, v2, 0x1

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    aput v5, p2, v2

    .line 51
    .line 52
    int-to-float v2, v3

    .line 53
    add-float/2addr v2, p0

    .line 54
    add-float/2addr v0, v2

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    move v2, v4

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    array-length p3, p1

    .line 60
    sub-int/2addr p3, v2

    .line 61
    :goto_3
    const/4 v1, -0x1

    .line 62
    if-ge v1, p3, :cond_4

    .line 63
    .line 64
    aget v1, p1, p3

    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    aput v2, p2, p3

    .line 71
    .line 72
    int-to-float v1, v1

    .line 73
    add-float/2addr v1, p0

    .line 74
    add-float/2addr v0, v1

    .line 75
    add-int/lit8 p3, p3, -0x1

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    :goto_4
    return-void
.end method

.method public static placeSpaceEvenly$foundation_layout(I[I[IZ)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    aget v4, p1, v2

    .line 8
    .line 9
    add-int/2addr v3, v4

    .line 10
    add-int/lit8 v2, v2, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sub-int/2addr p0, v3

    .line 14
    int-to-float p0, p0

    .line 15
    array-length v0, p1

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    div-float/2addr p0, v0

    .line 20
    if-nez p3, :cond_1

    .line 21
    .line 22
    array-length p3, p1

    .line 23
    move v2, p0

    .line 24
    move v0, v1

    .line 25
    :goto_1
    if-ge v1, p3, :cond_2

    .line 26
    .line 27
    aget v3, p1, v1

    .line 28
    .line 29
    add-int/lit8 v4, v0, 0x1

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    aput v5, p2, v0

    .line 36
    .line 37
    int-to-float v0, v3

    .line 38
    add-float/2addr v0, p0

    .line 39
    add-float/2addr v2, v0

    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    move v0, v4

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    array-length p3, p1

    .line 45
    add-int/lit8 p3, p3, -0x1

    .line 46
    .line 47
    move v0, p0

    .line 48
    :goto_2
    const/4 v1, -0x1

    .line 49
    if-ge v1, p3, :cond_2

    .line 50
    .line 51
    aget v1, p1, p3

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    aput v2, p2, p3

    .line 58
    .line 59
    int-to-float v1, v1

    .line 60
    add-float/2addr v1, p0

    .line 61
    add-float/2addr v0, v1

    .line 62
    add-int/lit8 p3, p3, -0x1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    return-void
.end method

.method public static final toBoxConstraints-OenEA2s(J)J
    .locals 3

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {v0, v1, v2, p0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    return-wide p0
.end method

.method public static final toInsetsValues(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/InsetsValues;

    .line 2
    .line 3
    iget v1, p0, Landroidx/core/graphics/Insets;->left:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/core/graphics/Insets;->top:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/core/graphics/Insets;->right:I

    .line 8
    .line 9
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/foundation/layout/InsetsValues;-><init>(IIII)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final valueToString_impl$lambda$0$appendPlus(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x2b

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final width(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/IntrinsicSize;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/IntrinsicWidthElement;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/IntrinsicWidthElement;-><init>(Landroidx/compose/foundation/layout/IntrinsicSize;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 11
    new-instance v0, Landroidx/compose/foundation/layout/SystemInsetsPaddingModifierElement;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/SystemInsetsPaddingModifierElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract align$foundation_layout(IILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/Placeable;I)I
.end method

.method public calculateAlignmentLinePosition$foundation_layout(Landroidx/compose/ui/layout/Placeable;)Ljava/lang/Integer;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
