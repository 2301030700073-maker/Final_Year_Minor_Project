.class public final synthetic Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(IFLandroidx/glance/GlanceModifier;JJI)V
    .locals 0

    .line 1
    const/4 p8, 0x1

    .line 2
    iput p8, p0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$3:I

    .line 8
    .line 9
    iput p2, p0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$4:F

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    iput-wide p4, p0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$1:J

    .line 14
    .line 15
    iput-wide p6, p0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$2:J

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJIFI)V
    .locals 0

    .line 18
    const/4 p8, 0x0

    iput p8, p0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$1:J

    iput-wide p4, p0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$2:J

    iput p6, p0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$3:I

    iput p7, p0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$4:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object v6, v3

    .line 13
    check-cast v6, Landroidx/glance/GlanceModifier;

    .line 14
    .line 15
    move-object/from16 v11, p1

    .line 16
    .line 17
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    move-object/from16 v1, p2

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 28
    .line 29
    .line 30
    move-result v12

    .line 31
    iget v4, v0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$3:I

    .line 32
    .line 33
    iget v5, v0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$4:F

    .line 34
    .line 35
    iget-wide v7, v0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$1:J

    .line 36
    .line 37
    iget-wide v9, v0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$2:J

    .line 38
    .line 39
    invoke-static/range {v4 .. v12}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->StreakProgressBar-iv-I9-Q(IFLandroidx/glance/GlanceModifier;JJLandroidx/compose/runtime/GapComposer;I)V

    .line 40
    .line 41
    .line 42
    return-object v2

    .line 43
    :pswitch_0
    move-object v13, v3

    .line 44
    check-cast v13, Landroidx/compose/ui/Modifier;

    .line 45
    .line 46
    move-object/from16 v20, p1

    .line 47
    .line 48
    check-cast v20, Landroidx/compose/runtime/GapComposer;

    .line 49
    .line 50
    move-object/from16 v1, p2

    .line 51
    .line 52
    check-cast v1, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x7

    .line 58
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 59
    .line 60
    .line 61
    move-result v21

    .line 62
    iget-wide v14, v0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$1:J

    .line 63
    .line 64
    iget-wide v3, v0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$2:J

    .line 65
    .line 66
    iget v1, v0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$3:I

    .line 67
    .line 68
    iget v0, v0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;->f$4:F

    .line 69
    .line 70
    move/from16 v19, v0

    .line 71
    .line 72
    move/from16 v18, v1

    .line 73
    .line 74
    move-wide/from16 v16, v3

    .line 75
    .line 76
    invoke-static/range {v13 .. v21}, Landroidx/compose/material3/ProgressIndicatorKt;->LinearProgressIndicator-rIrjwxo(Landroidx/compose/ui/Modifier;JJIFLandroidx/compose/runtime/GapComposer;I)V

    .line 77
    .line 78
    .line 79
    return-object v2

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
