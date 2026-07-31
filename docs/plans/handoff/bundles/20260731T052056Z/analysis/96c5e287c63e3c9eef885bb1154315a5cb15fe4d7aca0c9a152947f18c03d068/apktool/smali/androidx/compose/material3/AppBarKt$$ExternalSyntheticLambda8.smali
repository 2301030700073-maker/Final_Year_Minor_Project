.class public final synthetic Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:F

.field public final synthetic f$10:I

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$6:Ljava/lang/Object;

.field public final synthetic f$7:Ljava/lang/Object;

.field public final synthetic f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$0:F

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$2:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    iput-wide p3, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$3:J

    .line 12
    .line 13
    iput-wide p5, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$4:J

    .line 14
    .line 15
    iput-object p7, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$6:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p8, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$7:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p9, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 20
    .line 21
    iput p10, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$10:I

    .line 22
    .line 23
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/TooltipScopeImpl;Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 1

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$6:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$2:Landroidx/compose/ui/Modifier;

    iput p3, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$0:F

    iput-object p4, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$7:Ljava/lang/Object;

    iput-wide p5, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$3:J

    iput-wide p7, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$4:J

    iput-object p9, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p10, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$10:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$10:I

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$7:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$6:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object v6, v5

    .line 17
    check-cast v6, Landroidx/compose/material3/TooltipScopeImpl;

    .line 18
    .line 19
    move-object v9, v4

    .line 20
    check-cast v9, Landroidx/compose/ui/graphics/Shape;

    .line 21
    .line 22
    move-object/from16 v15, p1

    .line 23
    .line 24
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    move-object/from16 v1, p2

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    or-int/lit8 v1, v3, 0x1

    .line 34
    .line 35
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 36
    .line 37
    .line 38
    move-result v16

    .line 39
    iget-object v7, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$2:Landroidx/compose/ui/Modifier;

    .line 40
    .line 41
    iget v8, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$0:F

    .line 42
    .line 43
    iget-wide v10, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$3:J

    .line 44
    .line 45
    iget-wide v12, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$4:J

    .line 46
    .line 47
    iget-object v14, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 48
    .line 49
    invoke-static/range {v6 .. v16}, Landroidx/compose/material3/TooltipKt;->PlainTooltip-gv3ox5I(Landroidx/compose/material3/TooltipScopeImpl;Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :pswitch_0
    move-object/from16 v23, v5

    .line 54
    .line 55
    check-cast v23, Landroidx/compose/foundation/layout/PaddingValues;

    .line 56
    .line 57
    move-object/from16 v24, v4

    .line 58
    .line 59
    check-cast v24, Landroidx/compose/foundation/layout/WindowInsets;

    .line 60
    .line 61
    move-object/from16 v26, p1

    .line 62
    .line 63
    check-cast v26, Landroidx/compose/runtime/GapComposer;

    .line 64
    .line 65
    move-object/from16 v1, p2

    .line 66
    .line 67
    check-cast v1, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    or-int/lit8 v1, v3, 0x1

    .line 73
    .line 74
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 75
    .line 76
    .line 77
    move-result v27

    .line 78
    iget v1, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$0:F

    .line 79
    .line 80
    iget-object v3, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$2:Landroidx/compose/ui/Modifier;

    .line 81
    .line 82
    iget-wide v4, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$3:J

    .line 83
    .line 84
    iget-wide v6, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$4:J

    .line 85
    .line 86
    iget-object v0, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 87
    .line 88
    move-object/from16 v25, v0

    .line 89
    .line 90
    move/from16 v17, v1

    .line 91
    .line 92
    move-object/from16 v18, v3

    .line 93
    .line 94
    move-wide/from16 v19, v4

    .line 95
    .line 96
    move-wide/from16 v21, v6

    .line 97
    .line 98
    invoke-static/range {v17 .. v27}, Landroidx/compose/material3/AppBarKt;->BottomAppBarLayout-t5fmz9U(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 99
    .line 100
    .line 101
    return-object v2

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
