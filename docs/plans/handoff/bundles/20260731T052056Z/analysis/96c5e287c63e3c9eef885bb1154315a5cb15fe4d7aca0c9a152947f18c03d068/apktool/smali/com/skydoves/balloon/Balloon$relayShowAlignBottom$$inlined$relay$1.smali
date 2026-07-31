.class public final Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $anchor$inlined:Ljava/lang/Object;

.field public final synthetic $balloon:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;->$balloon:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;->$anchor$inlined:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;->$balloon:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;->$anchor$inlined:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    check-cast v3, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 17
    .line 18
    invoke-interface {p0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :pswitch_0
    check-cast v3, Lcom/skydoves/balloon/Balloon;

    .line 28
    .line 29
    iget-boolean v0, v3, Lcom/skydoves/balloon/Balloon;->destroyed:Z

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    check-cast v2, Lcom/skydoves/balloon/Balloon;

    .line 34
    .line 35
    check-cast p0, Landroid/view/View;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {v2, p0, v0}, Lcom/skydoves/balloon/Balloon;->showAlignBottom(Landroid/view/View;I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-object v1

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
