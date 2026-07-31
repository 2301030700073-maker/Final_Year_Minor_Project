.class public final synthetic Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$10:Landroidx/compose/material3/TopAppBarColors;

.field public final synthetic f$12:I

.field public final synthetic f$13:I

.field public final synthetic f$2:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f$4:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$7:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$8:F

.field public final synthetic f$9:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$2:Landroidx/compose/ui/text/TextStyle;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$4:Landroidx/compose/ui/text/TextStyle;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$6:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$7:Lkotlin/jvm/functions/Function3;

    .line 15
    .line 16
    iput p7, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$8:F

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$9:Landroidx/compose/foundation/layout/WindowInsets;

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$10:Landroidx/compose/material3/TopAppBarColors;

    .line 21
    .line 22
    iput p10, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$12:I

    .line 23
    .line 24
    iput p11, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$13:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

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
    iget p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$12:I

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
    iget p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$13:I

    .line 18
    .line 19
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 20
    .line 21
    .line 22
    move-result v11

    .line 23
    iget-object v0, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$0:Landroidx/compose/ui/Modifier;

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$2:Landroidx/compose/ui/text/TextStyle;

    .line 28
    .line 29
    iget-object v3, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$4:Landroidx/compose/ui/text/TextStyle;

    .line 30
    .line 31
    iget-object v4, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$6:Lkotlin/jvm/functions/Function2;

    .line 32
    .line 33
    iget-object v5, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$7:Lkotlin/jvm/functions/Function3;

    .line 34
    .line 35
    iget v6, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$8:F

    .line 36
    .line 37
    iget-object v7, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$9:Landroidx/compose/foundation/layout/WindowInsets;

    .line 38
    .line 39
    iget-object v8, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;->f$10:Landroidx/compose/material3/TopAppBarColors;

    .line 40
    .line 41
    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/AppBarKt;->SingleRowTopAppBar-wn8IZOc(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method
