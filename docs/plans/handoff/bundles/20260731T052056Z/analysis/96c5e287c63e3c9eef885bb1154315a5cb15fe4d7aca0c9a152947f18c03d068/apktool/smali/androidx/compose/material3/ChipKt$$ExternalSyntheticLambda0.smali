.class public final synthetic Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$1:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f$2:J

.field public final synthetic f$6:J

.field public final synthetic f$7:J

.field public final synthetic f$8:F

.field public final synthetic f$9:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;JJJFLandroidx/compose/foundation/layout/PaddingValues;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/text/TextStyle;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;->f$2:J

    .line 9
    .line 10
    iput-wide p5, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;->f$6:J

    .line 11
    .line 12
    iput-wide p7, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;->f$7:J

    .line 13
    .line 14
    iput p9, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;->f$8:F

    .line 15
    .line 16
    iput-object p10, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;->f$9:Landroidx/compose/foundation/layout/PaddingValues;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    move-object v10, p1

    .line 2
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0x6001

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 12
    .line 13
    .line 14
    move-result v11

    .line 15
    iget-object v0, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/text/TextStyle;

    .line 18
    .line 19
    iget-wide v2, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;->f$2:J

    .line 20
    .line 21
    iget-wide v4, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;->f$6:J

    .line 22
    .line 23
    iget-wide v6, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;->f$7:J

    .line 24
    .line 25
    iget v8, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;->f$8:F

    .line 26
    .line 27
    iget-object v9, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;->f$9:Landroidx/compose/foundation/layout/PaddingValues;

    .line 28
    .line 29
    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/ChipKt;->ChipContent-fe0OD_I(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;JJJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;I)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method
