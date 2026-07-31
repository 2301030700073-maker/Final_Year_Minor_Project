.class public final synthetic Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Landroidx/compose/animation/core/MutableTransitionState;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Landroidx/compose/foundation/ScrollState;

.field public final synthetic f$4:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f$5:J

.field public final synthetic f$7:F

.field public final synthetic f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/animation/core/MutableTransitionState;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/foundation/ScrollState;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$4:Landroidx/compose/ui/graphics/Shape;

    .line 13
    .line 14
    iput-wide p6, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$5:J

    .line 15
    .line 16
    iput p8, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$7:F

    .line 17
    .line 18
    iput-object p9, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-object v9, p1

    .line 2
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0x181

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 12
    .line 13
    .line 14
    move-result v10

    .line 15
    iget-object v0, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/animation/core/MutableTransitionState;

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/runtime/MutableState;

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/foundation/ScrollState;

    .line 22
    .line 23
    iget-object v4, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$4:Landroidx/compose/ui/graphics/Shape;

    .line 24
    .line 25
    iget-wide v5, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$5:J

    .line 26
    .line 27
    iget v7, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$7:F

    .line 28
    .line 29
    iget-object v8, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 30
    .line 31
    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/CardKt;->DropdownMenuContent-Qj0Zi0g(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method
