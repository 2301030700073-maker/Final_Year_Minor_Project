.class public final synthetic Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$4:Ljava/lang/Object;

.field public final synthetic f$5:Ljava/lang/Object;

.field public final synthetic f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJI)V
    .locals 0

    .line 1
    const/4 p9, 0x1

    .line 2
    iput p9, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$4:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$5:Ljava/lang/Object;

    .line 14
    .line 15
    iput-wide p5, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$1:J

    .line 16
    .line 17
    iput-wide p7, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$2:J

    .line 18
    .line 19
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 20
    const/4 p9, 0x0

    iput p9, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$1:J

    iput-wide p4, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$2:J

    iput-object p6, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$4:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$5:Ljava/lang/Object;

    iput-object p8, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$5:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$4:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object v7, v5

    .line 17
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 18
    .line 19
    move-object v8, v4

    .line 20
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 21
    .line 22
    move-object v9, v3

    .line 23
    check-cast v9, Landroidx/compose/ui/text/TextStyle;

    .line 24
    .line 25
    move-object/from16 v14, p1

    .line 26
    .line 27
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 28
    .line 29
    move-object/from16 v1, p2

    .line 30
    .line 31
    check-cast v1, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 38
    .line 39
    .line 40
    move-result v15

    .line 41
    iget-object v6, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 42
    .line 43
    iget-wide v10, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$1:J

    .line 44
    .line 45
    iget-wide v12, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$2:J

    .line 46
    .line 47
    invoke-static/range {v6 .. v15}, Landroidx/compose/material3/CardKt;->OneRowSnackbar-kKq0p4A(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/GapComposer;I)V

    .line 48
    .line 49
    .line 50
    return-object v2

    .line 51
    :pswitch_0
    move-object/from16 v16, v5

    .line 52
    .line 53
    check-cast v16, Landroidx/compose/ui/Modifier;

    .line 54
    .line 55
    move-object/from16 v21, v4

    .line 56
    .line 57
    check-cast v21, Landroidx/compose/foundation/layout/PaddingValues;

    .line 58
    .line 59
    move-object/from16 v22, v3

    .line 60
    .line 61
    check-cast v22, Landroidx/compose/foundation/layout/WindowInsets;

    .line 62
    .line 63
    move-object/from16 v24, p1

    .line 64
    .line 65
    check-cast v24, Landroidx/compose/runtime/GapComposer;

    .line 66
    .line 67
    move-object/from16 v1, p2

    .line 68
    .line 69
    check-cast v1, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    const v1, 0x180001

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 78
    .line 79
    .line 80
    move-result v25

    .line 81
    iget-wide v3, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$1:J

    .line 82
    .line 83
    iget-wide v5, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$2:J

    .line 84
    .line 85
    iget-object v0, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 86
    .line 87
    move-object/from16 v23, v0

    .line 88
    .line 89
    move-wide/from16 v17, v3

    .line 90
    .line 91
    move-wide/from16 v19, v5

    .line 92
    .line 93
    invoke-static/range {v16 .. v25}, Landroidx/compose/material3/AppBarKt;->BottomAppBar-1oL4kX8(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 94
    .line 95
    .line 96
    return-object v2

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
