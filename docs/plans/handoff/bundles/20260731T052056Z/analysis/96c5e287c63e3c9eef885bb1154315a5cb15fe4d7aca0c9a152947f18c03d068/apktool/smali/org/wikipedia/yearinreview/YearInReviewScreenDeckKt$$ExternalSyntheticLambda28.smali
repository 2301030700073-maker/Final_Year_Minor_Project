.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/ui/node/LayoutNodeDrawScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/node/LayoutNodeDrawScope;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda28;->f$0:Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda28;->f$0:Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object v2, p1

    .line 11
    check-cast v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-wide v3, Lorg/wikipedia/compose/ComposeColors;->White:J

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/16 v9, 0x7e

    .line 20
    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/Modifier$-CC;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/BlendModeColorFilter;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
