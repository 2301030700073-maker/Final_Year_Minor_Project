.class public final synthetic Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$4:F

.field public final synthetic f$5:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic f$6:Landroidx/compose/material3/TopAppBarColors;

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function3;

    .line 11
    .line 12
    iput p5, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$4:F

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$5:Landroidx/compose/foundation/layout/WindowInsets;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$6:Landroidx/compose/material3/TopAppBarColors;

    .line 17
    .line 18
    iput p8, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$8:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$8:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    iget-object v0, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function2;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function3;

    .line 24
    .line 25
    iget v4, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$4:F

    .line 26
    .line 27
    iget-object v5, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$5:Landroidx/compose/foundation/layout/WindowInsets;

    .line 28
    .line 29
    iget-object v6, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;->f$6:Landroidx/compose/material3/TopAppBarColors;

    .line 30
    .line 31
    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/AppBarKt;->TopAppBar-GHTll3U(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;I)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method
