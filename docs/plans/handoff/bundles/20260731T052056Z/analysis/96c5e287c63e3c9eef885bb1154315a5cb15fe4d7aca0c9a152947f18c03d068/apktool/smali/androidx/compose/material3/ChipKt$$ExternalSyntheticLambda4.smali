.class public final synthetic Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$1:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$6:J

.field public final synthetic f$7:J

.field public final synthetic f$8:F

.field public final synthetic f$9:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/ui/text/TextStyle;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$2:J

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$3:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iput-wide p6, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$6:J

    .line 13
    .line 14
    iput-wide p8, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$7:J

    .line 15
    .line 16
    iput p10, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$8:F

    .line 17
    .line 18
    iput-object p11, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$9:Landroidx/compose/foundation/layout/PaddingValues;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object v11, p1

    .line 2
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 11
    .line 12
    .line 13
    move-result v12

    .line 14
    iget-object v0, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/ui/text/TextStyle;

    .line 17
    .line 18
    iget-wide v2, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$2:J

    .line 19
    .line 20
    iget-object v4, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$3:Lkotlin/jvm/functions/Function2;

    .line 21
    .line 22
    iget-wide v5, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$6:J

    .line 23
    .line 24
    iget-wide v7, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$7:J

    .line 25
    .line 26
    iget v9, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$8:F

    .line 27
    .line 28
    iget-object v10, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;->f$9:Landroidx/compose/foundation/layout/PaddingValues;

    .line 29
    .line 30
    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/ChipKt;->AnimatingChipContent-fe0OD_I(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;I)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method
