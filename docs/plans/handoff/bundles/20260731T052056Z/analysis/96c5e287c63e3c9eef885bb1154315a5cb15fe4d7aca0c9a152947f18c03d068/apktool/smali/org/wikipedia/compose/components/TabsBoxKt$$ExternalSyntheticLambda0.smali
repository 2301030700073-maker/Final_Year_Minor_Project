.class public final synthetic Lorg/wikipedia/compose/components/TabsBoxKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IJJLandroidx/compose/foundation/shape/RoundedCornerShape;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/compose/components/TabsBoxKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/compose/components/TabsBoxKt$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/compose/components/TabsBoxKt$$ExternalSyntheticLambda0;->f$2:J

    .line 9
    .line 10
    iput-wide p5, p0, Lorg/wikipedia/compose/components/TabsBoxKt$$ExternalSyntheticLambda0;->f$3:J

    .line 11
    .line 12
    iput-object p7, p0, Lorg/wikipedia/compose/components/TabsBoxKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 13
    .line 14
    iput-wide p8, p0, Lorg/wikipedia/compose/components/TabsBoxKt$$ExternalSyntheticLambda0;->f$5:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

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
    const/16 p1, 0x181

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 12
    .line 13
    .line 14
    move-result v10

    .line 15
    iget-object v0, p0, Lorg/wikipedia/compose/components/TabsBoxKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/Modifier;

    .line 16
    .line 17
    iget v1, p0, Lorg/wikipedia/compose/components/TabsBoxKt$$ExternalSyntheticLambda0;->f$1:I

    .line 18
    .line 19
    iget-wide v2, p0, Lorg/wikipedia/compose/components/TabsBoxKt$$ExternalSyntheticLambda0;->f$2:J

    .line 20
    .line 21
    iget-wide v4, p0, Lorg/wikipedia/compose/components/TabsBoxKt$$ExternalSyntheticLambda0;->f$3:J

    .line 22
    .line 23
    iget-object v6, p0, Lorg/wikipedia/compose/components/TabsBoxKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 24
    .line 25
    iget-wide v7, p0, Lorg/wikipedia/compose/components/TabsBoxKt$$ExternalSyntheticLambda0;->f$5:J

    .line 26
    .line 27
    invoke-static/range {v0 .. v10}, Lorg/wikipedia/compose/components/TabsBoxKt;->TabsBox-X34t5lA(Landroidx/compose/ui/Modifier;IJJLandroidx/compose/foundation/shape/RoundedCornerShape;JLandroidx/compose/runtime/GapComposer;I)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method
