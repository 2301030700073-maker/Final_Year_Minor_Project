.class public final synthetic Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$1:Lorg/wikipedia/feed/model/DiscoverCard;

.field public final synthetic f$2:Lorg/wikipedia/history/HistoryEntry;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lorg/wikipedia/feed/model/DiscoverCard;Lorg/wikipedia/history/HistoryEntry;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda3;->f$1:Lorg/wikipedia/feed/model/DiscoverCard;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda3;->f$2:Lorg/wikipedia/history/HistoryEntry;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda3;->f$2:Lorg/wikipedia/history/HistoryEntry;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda3;->f$1:Lorg/wikipedia/feed/model/DiscoverCard;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v3, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v3, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v3, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
