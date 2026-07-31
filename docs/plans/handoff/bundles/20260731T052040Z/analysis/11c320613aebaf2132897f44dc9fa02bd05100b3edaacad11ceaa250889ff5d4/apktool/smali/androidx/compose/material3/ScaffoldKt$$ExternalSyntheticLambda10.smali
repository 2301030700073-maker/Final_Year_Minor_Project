.class public final synthetic Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$5:I

.field public final synthetic f$6:J

.field public final synthetic f$7:J

.field public final synthetic f$8:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$2:Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$3:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$4:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$5:I

    .line 15
    .line 16
    iput-wide p7, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$6:J

    .line 17
    .line 18
    iput-wide p9, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$7:J

    .line 19
    .line 20
    iput-object p11, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$8:Landroidx/compose/foundation/layout/WindowInsets;

    .line 21
    .line 22
    iput-object p12, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v12, p1

    .line 2
    check-cast v12, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const v0, 0x30000031

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 15
    .line 16
    .line 17
    move-result v13

    .line 18
    iget-object v0, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$0:Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$2:Lkotlin/jvm/functions/Function2;

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$3:Lkotlin/jvm/functions/Function2;

    .line 25
    .line 26
    iget-object v4, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$4:Lkotlin/jvm/functions/Function2;

    .line 27
    .line 28
    iget v5, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$5:I

    .line 29
    .line 30
    iget-wide v6, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$6:J

    .line 31
    .line 32
    iget-wide v8, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$7:J

    .line 33
    .line 34
    iget-object v10, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$8:Landroidx/compose/foundation/layout/WindowInsets;

    .line 35
    .line 36
    iget-object v11, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda10;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 37
    .line 38
    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/BadgeKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method
