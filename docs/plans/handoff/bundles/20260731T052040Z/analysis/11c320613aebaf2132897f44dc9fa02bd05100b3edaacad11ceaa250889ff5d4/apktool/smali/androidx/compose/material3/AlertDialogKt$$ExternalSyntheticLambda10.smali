.class public final synthetic Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$1:F

.field public final synthetic f$2:Landroidx/compose/ui/unit/LayoutDirection;

.field public final synthetic f$3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda10;->f$1:F

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda10;->f$2:Landroidx/compose/ui/unit/LayoutDirection;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda10;->f$3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    and-int/2addr p2, v1

    .line 19
    move-object v10, p1

    .line 20
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    invoke-virtual {v10, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    new-instance v4, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 29
    .line 30
    new-instance p1, Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    const/high16 p2, 0x41000000    # 8.0f

    .line 36
    .line 37
    invoke-direct {v4, p2, v1, p1}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;)V

    .line 38
    .line 39
    .line 40
    new-instance v5, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 41
    .line 42
    new-instance p1, Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    iget p2, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda10;->f$1:F

    .line 48
    .line 49
    invoke-direct {v5, p2, v1, p1}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    iget-object p2, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda10;->f$2:Landroidx/compose/ui/unit/LayoutDirection;

    .line 55
    .line 56
    iget-object p0, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda10;->f$3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 57
    .line 58
    invoke-direct {p1, p2, p0, v2}, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    const p0, 0x3472a0d7

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    const/high16 v11, 0x180000

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    const/4 v7, 0x0

    .line 73
    const/4 v8, 0x0

    .line 74
    invoke-static/range {v3 .. v11}, Landroidx/compose/foundation/layout/SpacerKt;->FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 79
    .line 80
    .line 81
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0
.end method
