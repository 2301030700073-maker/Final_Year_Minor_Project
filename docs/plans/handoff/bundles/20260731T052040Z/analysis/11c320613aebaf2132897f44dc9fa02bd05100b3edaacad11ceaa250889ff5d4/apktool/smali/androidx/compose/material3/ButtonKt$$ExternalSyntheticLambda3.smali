.class public final synthetic Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$10:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f$4:Landroidx/compose/material3/ButtonColors;

.field public final synthetic f$7:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$3:Landroidx/compose/ui/graphics/Shape;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$4:Landroidx/compose/material3/ButtonColors;

    .line 13
    .line 14
    iput-object p7, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$7:Landroidx/compose/foundation/layout/PaddingValues;

    .line 15
    .line 16
    iput-object p8, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    iput p9, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$10:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$10:I

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
    iget-object v0, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    iget-boolean v2, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$2:Z

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$3:Landroidx/compose/ui/graphics/Shape;

    .line 24
    .line 25
    iget-object v4, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$4:Landroidx/compose/material3/ButtonColors;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    iget-object v6, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$7:Landroidx/compose/foundation/layout/PaddingValues;

    .line 29
    .line 30
    iget-object v7, p0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 31
    .line 32
    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/BadgeKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method
