.class public final synthetic Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$4:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f$5:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic f$7:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;->f$1:J

    .line 7
    .line 8
    iput-wide p4, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;->f$2:J

    .line 9
    .line 10
    iput-object p6, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;->f$4:Landroidx/compose/foundation/layout/PaddingValues;

    .line 11
    .line 12
    iput-object p7, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;->f$5:Landroidx/compose/foundation/layout/WindowInsets;

    .line 13
    .line 14
    iput-object p8, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;->f$7:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 15
    .line 16
    iput p9, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;->f$8:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;->f$8:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    iget-object v0, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;->f$0:Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    iget-wide v1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;->f$1:J

    .line 20
    .line 21
    iget-wide v3, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;->f$2:J

    .line 22
    .line 23
    iget-object v5, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;->f$4:Landroidx/compose/foundation/layout/PaddingValues;

    .line 24
    .line 25
    iget-object v6, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;->f$5:Landroidx/compose/foundation/layout/WindowInsets;

    .line 26
    .line 27
    iget-object v7, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;->f$7:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 28
    .line 29
    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/AppBarKt;->BottomAppBar-e-3WI5M(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method
