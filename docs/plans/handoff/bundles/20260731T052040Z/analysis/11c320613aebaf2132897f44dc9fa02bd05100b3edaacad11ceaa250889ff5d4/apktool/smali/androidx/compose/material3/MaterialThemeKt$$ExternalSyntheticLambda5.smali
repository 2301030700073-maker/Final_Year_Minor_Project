.class public final synthetic Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p7, p0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;->f$4:Ljava/lang/Object;

    .line 12
    .line 13
    iput p6, p0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;->f$5:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;->f$5:I

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;->f$4:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v7, v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    move-object v8, v0

    .line 23
    check-cast v8, Landroidx/compose/ui/Modifier;

    .line 24
    .line 25
    move-object v9, v7

    .line 26
    check-cast v9, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 27
    .line 28
    move-object v10, v6

    .line 29
    check-cast v10, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 30
    .line 31
    move-object v11, v5

    .line 32
    check-cast v11, Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 33
    .line 34
    move-object v12, v4

    .line 35
    check-cast v12, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 36
    .line 37
    move-object/from16 v13, p1

    .line 38
    .line 39
    check-cast v13, Landroidx/compose/runtime/Composer;

    .line 40
    .line 41
    move-object/from16 v0, p2

    .line 42
    .line 43
    check-cast v0, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    or-int/lit8 v0, v3, 0x1

    .line 49
    .line 50
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 51
    .line 52
    .line 53
    move-result v14

    .line 54
    invoke-static/range {v8 .. v14}, Landroidx/compose/foundation/layout/SpacerKt;->FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/FlowRowOverflow;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 55
    .line 56
    .line 57
    return-object v2

    .line 58
    :pswitch_0
    move-object v15, v0

    .line 59
    check-cast v15, Landroidx/compose/animation/core/Transition;

    .line 60
    .line 61
    move-object/from16 v16, v7

    .line 62
    .line 63
    check-cast v16, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 64
    .line 65
    move-object/from16 v17, v6

    .line 66
    .line 67
    check-cast v17, Landroidx/compose/ui/graphics/Color;

    .line 68
    .line 69
    move-object/from16 v18, v5

    .line 70
    .line 71
    check-cast v18, Landroidx/compose/ui/graphics/Color;

    .line 72
    .line 73
    move-object/from16 v19, v4

    .line 74
    .line 75
    check-cast v19, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 76
    .line 77
    move-object/from16 v20, p1

    .line 78
    .line 79
    check-cast v20, Landroidx/compose/runtime/Composer;

    .line 80
    .line 81
    move-object/from16 v0, p2

    .line 82
    .line 83
    check-cast v0, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    or-int/lit8 v0, v3, 0x1

    .line 89
    .line 90
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 91
    .line 92
    .line 93
    move-result v21

    .line 94
    invoke-static/range {v15 .. v21}, Landroidx/compose/animation/core/ArcSplineKt;->UpdateInitialAndTargetValues(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;I)V

    .line 95
    .line 96
    .line 97
    return-object v2

    .line 98
    :pswitch_1
    check-cast v0, Landroidx/compose/material3/ColorScheme;

    .line 99
    .line 100
    check-cast v7, Landroidx/compose/material3/MotionScheme;

    .line 101
    .line 102
    check-cast v6, Landroidx/compose/material3/Shapes;

    .line 103
    .line 104
    check-cast v5, Landroidx/compose/material3/Typography;

    .line 105
    .line 106
    check-cast v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 107
    .line 108
    move-object/from16 v8, p1

    .line 109
    .line 110
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 111
    .line 112
    move-object/from16 v1, p2

    .line 113
    .line 114
    check-cast v1, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    or-int/lit8 v1, v3, 0x1

    .line 120
    .line 121
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    move-object v3, v7

    .line 126
    move-object v7, v4

    .line 127
    move-object v4, v3

    .line 128
    move-object v3, v6

    .line 129
    move-object v6, v5

    .line 130
    move-object v5, v3

    .line 131
    move-object v3, v0

    .line 132
    invoke-static/range {v3 .. v9}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/MotionScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 133
    .line 134
    .line 135
    return-object v2

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
