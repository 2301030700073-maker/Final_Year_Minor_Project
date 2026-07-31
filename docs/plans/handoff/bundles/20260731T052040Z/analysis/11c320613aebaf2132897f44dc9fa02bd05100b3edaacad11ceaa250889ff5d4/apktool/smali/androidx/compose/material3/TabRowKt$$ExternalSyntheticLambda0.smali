.class public final synthetic Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    const/4 p10, 0x0

    .line 2
    iput p10, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$0:I

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    iput-wide p3, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$2:J

    .line 12
    .line 13
    iput-wide p5, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$3:J

    .line 14
    .line 15
    iput-object p7, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 16
    .line 17
    iput-object p8, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$5:Lkotlin/jvm/functions/Function2;

    .line 18
    .line 19
    iput-object p9, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 20
    .line 21
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 1

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$2:J

    iput-wide p4, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$3:J

    iput-object p6, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p7, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$5:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p9, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v11, p1

    .line 11
    .line 12
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 13
    .line 14
    move-object/from16 v1, p2

    .line 15
    .line 16
    check-cast v1, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget v1, v0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$0:I

    .line 22
    .line 23
    or-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 30
    .line 31
    iget-wide v4, v0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$2:J

    .line 32
    .line 33
    iget-wide v6, v0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$3:J

    .line 34
    .line 35
    iget-object v8, v0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 36
    .line 37
    iget-object v9, v0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$5:Lkotlin/jvm/functions/Function2;

    .line 38
    .line 39
    iget-object v10, v0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 40
    .line 41
    invoke-static/range {v3 .. v12}, Landroidx/compose/material3/BadgeKt;->TabRowImpl-DTcfvLk(Landroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :pswitch_0
    move-object/from16 v22, p1

    .line 46
    .line 47
    check-cast v22, Landroidx/compose/runtime/Composer;

    .line 48
    .line 49
    move-object/from16 v1, p2

    .line 50
    .line 51
    check-cast v1, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const v1, 0x186031

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 60
    .line 61
    .line 62
    move-result v23

    .line 63
    iget v13, v0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$0:I

    .line 64
    .line 65
    iget-object v14, v0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 66
    .line 67
    iget-wide v3, v0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$2:J

    .line 68
    .line 69
    iget-wide v5, v0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$3:J

    .line 70
    .line 71
    iget-object v1, v0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 72
    .line 73
    iget-object v7, v0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$5:Lkotlin/jvm/functions/Function2;

    .line 74
    .line 75
    iget-object v0, v0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 76
    .line 77
    move-object/from16 v21, v0

    .line 78
    .line 79
    move-object/from16 v19, v1

    .line 80
    .line 81
    move-wide v15, v3

    .line 82
    move-wide/from16 v17, v5

    .line 83
    .line 84
    move-object/from16 v20, v7

    .line 85
    .line 86
    invoke-static/range {v13 .. v23}, Landroidx/compose/material3/BadgeKt;->SecondaryTabRow-pAZo6Ak(ILandroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
