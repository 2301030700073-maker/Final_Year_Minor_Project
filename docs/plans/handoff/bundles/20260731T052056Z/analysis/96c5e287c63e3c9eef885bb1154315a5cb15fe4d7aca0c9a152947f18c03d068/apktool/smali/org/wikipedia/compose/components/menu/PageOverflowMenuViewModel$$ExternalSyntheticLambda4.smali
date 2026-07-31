.class public final synthetic Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$1:Lorg/wikipedia/history/HistoryEntry;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;->f$1:Lorg/wikipedia/history/HistoryEntry;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lorg/wikipedia/history/HistoryEntry;Ljava/util/List;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;->f$1:Lorg/wikipedia/history/HistoryEntry;

    iput-object p3, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;->f$1:Lorg/wikipedia/history/HistoryEntry;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 20
    .line 21
    iget-wide v3, v0, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 22
    .line 23
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p0, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :pswitch_0
    invoke-interface {p0, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
