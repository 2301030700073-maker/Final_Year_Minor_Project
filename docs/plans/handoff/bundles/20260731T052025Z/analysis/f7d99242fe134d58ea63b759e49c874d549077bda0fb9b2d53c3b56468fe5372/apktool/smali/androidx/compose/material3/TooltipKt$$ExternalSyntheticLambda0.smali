.class public final synthetic Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/TooltipScopeImpl;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$10:I

.field public final synthetic f$3:F

.field public final synthetic f$4:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f$5:J

.field public final synthetic f$6:J

.field public final synthetic f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TooltipScopeImpl;Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material3/TooltipScopeImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$3:F

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/ui/graphics/Shape;

    .line 11
    .line 12
    iput-wide p5, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$5:J

    .line 13
    .line 14
    iput-wide p7, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$6:J

    .line 15
    .line 16
    iput-object p9, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    iput p10, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$10:I

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
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$10:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v10

    .line 17
    iget-object v0, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material3/TooltipScopeImpl;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    iget v2, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$3:F

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/ui/graphics/Shape;

    .line 24
    .line 25
    iget-wide v4, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$5:J

    .line 26
    .line 27
    iget-wide v6, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$6:J

    .line 28
    .line 29
    iget-object v8, p0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 30
    .line 31
    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/TooltipKt;->PlainTooltip-gv3ox5I(Landroidx/compose/material3/TooltipScopeImpl;Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method
