.class public final synthetic Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$2:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$5:I

.field public final synthetic f$6:J

.field public final synthetic f$7:J

.field public final synthetic f$8:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$5:I

    .line 15
    .line 16
    iput-wide p7, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$6:J

    .line 17
    .line 18
    iput-wide p9, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$7:J

    .line 19
    .line 20
    iput-object p11, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$8:Landroidx/compose/foundation/layout/WindowInsets;

    .line 21
    .line 22
    iput-object p12, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 23
    .line 24
    iput p13, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$10:I

    .line 25
    .line 26
    iput p14, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$11:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    check-cast v12, Landroidx/compose/runtime/GapComposer;

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
    iget v1, v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$10:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 19
    .line 20
    .line 21
    move-result v13

    .line 22
    iget-object v1, v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    iget-object v1, v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function2;

    .line 26
    .line 27
    move-object v3, v2

    .line 28
    iget-object v2, v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function2;

    .line 29
    .line 30
    move-object v4, v3

    .line 31
    iget-object v3, v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function2;

    .line 32
    .line 33
    move-object v5, v4

    .line 34
    iget-object v4, v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function2;

    .line 35
    .line 36
    move-object v6, v5

    .line 37
    iget v5, v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$5:I

    .line 38
    .line 39
    move-object v8, v6

    .line 40
    iget-wide v6, v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$6:J

    .line 41
    .line 42
    move-object v10, v8

    .line 43
    iget-wide v8, v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$7:J

    .line 44
    .line 45
    move-object v11, v10

    .line 46
    iget-object v10, v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$8:Landroidx/compose/foundation/layout/WindowInsets;

    .line 47
    .line 48
    move-object v14, v11

    .line 49
    iget-object v11, v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 50
    .line 51
    iget v0, v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;->f$11:I

    .line 52
    .line 53
    move-object v15, v14

    .line 54
    move v14, v0

    .line 55
    move-object v0, v15

    .line 56
    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/CardKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 60
    .line 61
    return-object v0
.end method
