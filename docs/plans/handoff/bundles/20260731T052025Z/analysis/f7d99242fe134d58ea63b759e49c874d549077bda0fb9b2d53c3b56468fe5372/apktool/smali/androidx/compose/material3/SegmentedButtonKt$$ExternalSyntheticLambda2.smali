.class public final synthetic Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;

.field public final synthetic f$1:Z

.field public final synthetic f$10:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$11:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$12:I

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f$4:Landroidx/compose/ui/Modifier;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Landroidx/compose/material3/SegmentedButtonColors;

.field public final synthetic f$7:Landroidx/compose/foundation/BorderStroke;

.field public final synthetic f$8:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$3:Landroidx/compose/ui/graphics/Shape;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$4:Landroidx/compose/ui/Modifier;

    .line 13
    .line 14
    iput-boolean p6, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$5:Z

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$6:Landroidx/compose/material3/SegmentedButtonColors;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$7:Landroidx/compose/foundation/BorderStroke;

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$8:Landroidx/compose/foundation/layout/PaddingValues;

    .line 21
    .line 22
    iput-object p10, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$10:Lkotlin/jvm/functions/Function2;

    .line 23
    .line 24
    iput-object p11, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$11:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 25
    .line 26
    iput p12, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$12:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object v11, p1

    .line 2
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$12:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v12

    .line 17
    iget-object v0, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;

    .line 18
    .line 19
    iget-boolean v1, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$1:Z

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function0;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$3:Landroidx/compose/ui/graphics/Shape;

    .line 24
    .line 25
    iget-object v4, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$4:Landroidx/compose/ui/Modifier;

    .line 26
    .line 27
    iget-boolean v5, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$5:Z

    .line 28
    .line 29
    iget-object v6, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$6:Landroidx/compose/material3/SegmentedButtonColors;

    .line 30
    .line 31
    iget-object v7, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$7:Landroidx/compose/foundation/BorderStroke;

    .line 32
    .line 33
    iget-object v8, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$8:Landroidx/compose/foundation/layout/PaddingValues;

    .line 34
    .line 35
    iget-object v9, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$10:Lkotlin/jvm/functions/Function2;

    .line 36
    .line 37
    iget-object v10, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;->f$11:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 38
    .line 39
    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/CardKt;->SegmentedButton(Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p0
.end method
