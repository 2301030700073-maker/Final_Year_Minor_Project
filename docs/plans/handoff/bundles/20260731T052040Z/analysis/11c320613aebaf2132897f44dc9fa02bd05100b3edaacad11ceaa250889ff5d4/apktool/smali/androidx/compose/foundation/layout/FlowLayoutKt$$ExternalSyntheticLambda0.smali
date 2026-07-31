.class public final synthetic Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic f$2:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic f$3:Landroidx/compose/ui/Alignment$Vertical;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/Alignment$Vertical;

    .line 11
    .line 12
    iput p5, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;->f$5:I

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
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
    const p1, 0x180001

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 13
    .line 14
    .line 15
    move-result v8

    .line 16
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/Alignment$Vertical;

    .line 23
    .line 24
    iget v4, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;->f$4:I

    .line 25
    .line 26
    iget v5, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;->f$5:I

    .line 27
    .line 28
    iget-object v6, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 29
    .line 30
    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/layout/SpacerKt;->FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method
