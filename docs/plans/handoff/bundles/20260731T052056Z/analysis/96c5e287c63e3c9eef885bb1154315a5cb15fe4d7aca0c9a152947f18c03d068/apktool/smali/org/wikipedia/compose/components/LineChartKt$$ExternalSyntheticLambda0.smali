.class public final synthetic Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:I

.field public final synthetic f$3:F

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;IFJI)V
    .locals 0

    .line 1
    const/4 p7, 0x2

    .line 2
    iput p7, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    iput p3, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$2:I

    .line 12
    .line 13
    iput p4, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$3:F

    .line 14
    .line 15
    iput-wide p5, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$4:J

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Landroidx/compose/ui/Modifier;IFJII)V
    .locals 0

    .line 18
    iput p8, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$3:F

    iput-wide p5, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$4:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0xdb1

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v4, v0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v6, v4

    .line 15
    check-cast v6, Ljava/lang/String;

    .line 16
    .line 17
    move-object/from16 v11, p1

    .line 18
    .line 19
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    move-object/from16 v1, p2

    .line 22
    .line 23
    check-cast v1, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x7

    .line 29
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 30
    .line 31
    .line 32
    move-result v12

    .line 33
    iget-object v5, v0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 34
    .line 35
    iget v7, v0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$2:I

    .line 36
    .line 37
    iget v8, v0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$3:F

    .line 38
    .line 39
    iget-wide v9, v0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$4:J

    .line 40
    .line 41
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/activitytab/ImpactModuleKt;->ContributionEditsView-qFjXxE8(Landroidx/compose/ui/Modifier;Ljava/lang/String;IFJLandroidx/compose/runtime/GapComposer;I)V

    .line 42
    .line 43
    .line 44
    return-object v3

    .line 45
    :pswitch_0
    move-object v13, v4

    .line 46
    check-cast v13, Ljava/util/Map;

    .line 47
    .line 48
    move-object/from16 v19, p1

    .line 49
    .line 50
    check-cast v19, Landroidx/compose/runtime/GapComposer;

    .line 51
    .line 52
    move-object/from16 v1, p2

    .line 53
    .line 54
    check-cast v1, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 60
    .line 61
    .line 62
    move-result v20

    .line 63
    iget-object v14, v0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 64
    .line 65
    iget v15, v0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$2:I

    .line 66
    .line 67
    iget v1, v0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$3:F

    .line 68
    .line 69
    iget-wide v4, v0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$4:J

    .line 70
    .line 71
    move/from16 v16, v1

    .line 72
    .line 73
    move-wide/from16 v17, v4

    .line 74
    .line 75
    invoke-static/range {v13 .. v20}, Lorg/wikipedia/compose/components/TabsBoxKt;->LineChart-xfPyhaw(Ljava/util/Map;Landroidx/compose/ui/Modifier;IFJLandroidx/compose/runtime/GapComposer;I)V

    .line 76
    .line 77
    .line 78
    return-object v3

    .line 79
    :pswitch_1
    move-object/from16 v21, v4

    .line 80
    .line 81
    check-cast v21, Ljava/util/Map;

    .line 82
    .line 83
    move-object/from16 v27, p1

    .line 84
    .line 85
    check-cast v27, Landroidx/compose/runtime/GapComposer;

    .line 86
    .line 87
    move-object/from16 v1, p2

    .line 88
    .line 89
    check-cast v1, Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 95
    .line 96
    .line 97
    move-result v28

    .line 98
    iget-object v1, v0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 99
    .line 100
    iget v2, v0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$2:I

    .line 101
    .line 102
    iget v4, v0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$3:F

    .line 103
    .line 104
    iget-wide v5, v0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda0;->f$4:J

    .line 105
    .line 106
    move-object/from16 v22, v1

    .line 107
    .line 108
    move/from16 v23, v2

    .line 109
    .line 110
    move/from16 v24, v4

    .line 111
    .line 112
    move-wide/from16 v25, v5

    .line 113
    .line 114
    invoke-static/range {v21 .. v28}, Lorg/wikipedia/compose/components/TabsBoxKt;->LineChart-xfPyhaw(Ljava/util/Map;Landroidx/compose/ui/Modifier;IFJLandroidx/compose/runtime/GapComposer;I)V

    .line 115
    .line 116
    .line 117
    return-object v3

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
