.class public final synthetic Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic f$2:I

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:J

.field public final synthetic f$6:J

.field public final synthetic f$7:I

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;IFFJJII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/foundation/pager/PagerState;

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$3:F

    .line 11
    .line 12
    iput p5, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$4:F

    .line 13
    .line 14
    iput-wide p6, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$5:J

    .line 15
    .line 16
    iput-wide p8, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$6:J

    .line 17
    .line 18
    iput p10, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$7:I

    .line 19
    .line 20
    iput p11, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$8:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    move-object v9, p1

    .line 2
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$7:I

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
    iget-object v0, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/foundation/pager/PagerState;

    .line 20
    .line 21
    iget v2, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$2:I

    .line 22
    .line 23
    iget v3, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$3:F

    .line 24
    .line 25
    iget v4, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$4:F

    .line 26
    .line 27
    iget-wide v5, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$5:J

    .line 28
    .line 29
    iget-wide v7, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$6:J

    .line 30
    .line 31
    iget v11, p0, Lorg/wikipedia/compose/components/PageIndicatorKt$$ExternalSyntheticLambda1;->f$8:I

    .line 32
    .line 33
    invoke-static/range {v0 .. v11}, Lorg/wikipedia/compose/components/TabsBoxKt;->PageIndicator-X-DZ_kE(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;IFFJJLandroidx/compose/runtime/GapComposer;II)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method
