.class public final synthetic Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$1:Lorg/wikipedia/history/HistoryEntry;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lorg/wikipedia/history/HistoryEntry;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda2;->f$1:Lorg/wikipedia/history/HistoryEntry;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda2;->f$1:Lorg/wikipedia/history/HistoryEntry;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-interface {p0, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-interface {p0, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
