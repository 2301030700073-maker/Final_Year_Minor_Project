.class public final synthetic Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/ui/Modifier;JJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda1;->f$2:J

    .line 9
    .line 10
    iput-wide p5, p0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda1;->f$3:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0xd81

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 12
    .line 13
    .line 14
    move-result v7

    .line 15
    iget-object v0, p0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    .line 16
    .line 17
    iget-object v1, p0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    iget-wide v2, p0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda1;->f$2:J

    .line 20
    .line 21
    iget-wide v4, p0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda1;->f$3:J

    .line 22
    .line 23
    invoke-static/range {v0 .. v7}, Lorg/wikipedia/compose/components/TabsBoxKt;->TinyBarChart-eaDK9VM(Ljava/util/List;Landroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/GapComposer;I)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method
