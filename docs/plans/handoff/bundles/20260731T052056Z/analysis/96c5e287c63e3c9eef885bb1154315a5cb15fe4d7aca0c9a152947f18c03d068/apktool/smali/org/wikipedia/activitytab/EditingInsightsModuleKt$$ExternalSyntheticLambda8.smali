.class public final synthetic Lorg/wikipedia/activitytab/EditingInsightsModuleKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/util/Map;ILkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/activitytab/EditingInsightsModuleKt$$ExternalSyntheticLambda8;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/activitytab/EditingInsightsModuleKt$$ExternalSyntheticLambda8;->f$1:Ljava/util/Map;

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/activitytab/EditingInsightsModuleKt$$ExternalSyntheticLambda8;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/activitytab/EditingInsightsModuleKt$$ExternalSyntheticLambda8;->f$3:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput p5, p0, Lorg/wikipedia/activitytab/EditingInsightsModuleKt$$ExternalSyntheticLambda8;->f$4:I

    .line 13
    .line 14
    iput p6, p0, Lorg/wikipedia/activitytab/EditingInsightsModuleKt$$ExternalSyntheticLambda8;->f$5:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lorg/wikipedia/activitytab/EditingInsightsModuleKt$$ExternalSyntheticLambda8;->f$4:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    iget-object v0, p0, Lorg/wikipedia/activitytab/EditingInsightsModuleKt$$ExternalSyntheticLambda8;->f$0:Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/wikipedia/activitytab/EditingInsightsModuleKt$$ExternalSyntheticLambda8;->f$1:Ljava/util/Map;

    .line 20
    .line 21
    iget v2, p0, Lorg/wikipedia/activitytab/EditingInsightsModuleKt$$ExternalSyntheticLambda8;->f$2:I

    .line 22
    .line 23
    iget-object v3, p0, Lorg/wikipedia/activitytab/EditingInsightsModuleKt$$ExternalSyntheticLambda8;->f$3:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    iget v6, p0, Lorg/wikipedia/activitytab/EditingInsightsModuleKt$$ExternalSyntheticLambda8;->f$5:I

    .line 26
    .line 27
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/activitytab/ImpactModuleKt;->MostViewedCard(Landroidx/compose/ui/Modifier;Ljava/util/Map;ILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method
