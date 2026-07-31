.class public final synthetic Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(JJZLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda6;->f$0:J

    .line 5
    .line 6
    iput-wide p3, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda6;->f$1:J

    .line 7
    .line 8
    iput-boolean p5, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda6;->f$2:Z

    .line 9
    .line 10
    iput-object p6, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda6;->f$3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 11
    .line 12
    iput p7, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda6;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda6;->f$4:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    iget-wide v0, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda6;->f$0:J

    .line 18
    .line 19
    iget-wide v2, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda6;->f$1:J

    .line 20
    .line 21
    iget-boolean v4, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda6;->f$2:Z

    .line 22
    .line 23
    iget-object v5, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda6;->f$3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 24
    .line 25
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/TabKt;->TabTransition-Klgx-Pg(JJZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method
