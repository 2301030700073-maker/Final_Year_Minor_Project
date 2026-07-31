.class public final synthetic Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Landroidx/compose/material3/internal/FloatProducer;

.field public final synthetic f$10:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$15:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$16:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$17:F

.field public final synthetic f$18:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:J

.field public final synthetic f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$7:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f$9:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FLandroidx/compose/foundation/layout/PaddingValues;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/material3/internal/FloatProducer;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$2:J

    .line 9
    .line 10
    iput-wide p5, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$3:J

    .line 11
    .line 12
    iput-wide p7, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$4:J

    .line 13
    .line 14
    iput-wide p9, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$5:J

    .line 15
    .line 16
    iput-object p11, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    iput-object p12, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$7:Landroidx/compose/ui/text/TextStyle;

    .line 19
    .line 20
    iput-object p13, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$9:Landroidx/compose/ui/text/TextStyle;

    .line 21
    .line 22
    iput-object p14, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$10:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    iput-object p15, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$15:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 25
    .line 26
    move-object/from16 p1, p16

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$16:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 29
    .line 30
    move/from16 p1, p17

    .line 31
    .line 32
    iput p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$17:F

    .line 33
    .line 34
    move-object/from16 p1, p18

    .line 35
    .line 36
    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$18:Landroidx/compose/foundation/layout/PaddingValues;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v18, p1

    .line 4
    .line 5
    check-cast v18, Landroidx/compose/runtime/Composer;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 16
    .line 17
    .line 18
    move-result v19

    .line 19
    iget-object v1, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$0:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    move-object v2, v1

    .line 22
    iget-object v1, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/material3/internal/FloatProducer;

    .line 23
    .line 24
    move-object v4, v2

    .line 25
    iget-wide v2, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$2:J

    .line 26
    .line 27
    move-object v6, v4

    .line 28
    iget-wide v4, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$3:J

    .line 29
    .line 30
    move-object v8, v6

    .line 31
    iget-wide v6, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$4:J

    .line 32
    .line 33
    move-object v10, v8

    .line 34
    iget-wide v8, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$5:J

    .line 35
    .line 36
    move-object v11, v10

    .line 37
    iget-object v10, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 38
    .line 39
    move-object v12, v11

    .line 40
    iget-object v11, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$7:Landroidx/compose/ui/text/TextStyle;

    .line 41
    .line 42
    move-object v13, v12

    .line 43
    iget-object v12, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$9:Landroidx/compose/ui/text/TextStyle;

    .line 44
    .line 45
    move-object v14, v13

    .line 46
    iget-object v13, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$10:Lkotlin/jvm/functions/Function0;

    .line 47
    .line 48
    move-object v15, v14

    .line 49
    iget-object v14, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$15:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 50
    .line 51
    move-object/from16 v16, v15

    .line 52
    .line 53
    iget-object v15, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$16:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 54
    .line 55
    move-object/from16 v17, v1

    .line 56
    .line 57
    iget v1, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$17:F

    .line 58
    .line 59
    iget-object v0, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$18:Landroidx/compose/foundation/layout/PaddingValues;

    .line 60
    .line 61
    move-object/from16 v20, v17

    .line 62
    .line 63
    move-object/from16 v17, v0

    .line 64
    .line 65
    move-object/from16 v0, v16

    .line 66
    .line 67
    move/from16 v16, v1

    .line 68
    .line 69
    move-object/from16 v1, v20

    .line 70
    .line 71
    invoke-static/range {v0 .. v19}, Landroidx/compose/material3/AppBarKt;->TopAppBarLayout-_5F1rQI(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 75
    .line 76
    return-object v0
.end method
