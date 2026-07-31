.class public final synthetic Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lorg/wikipedia/feed/model/EmptyForYouCard;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/model/EmptyForYouCard;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda3;->f$1:Lorg/wikipedia/feed/model/EmptyForYouCard;

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
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda3;->f$1:Lorg/wikipedia/feed/model/EmptyForYouCard;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lorg/wikipedia/feed/HomeAction$SelectTab;

    .line 13
    .line 14
    sget-object v3, Lorg/wikipedia/feed/HomeTab;->COMMUNITY:Lorg/wikipedia/feed/HomeTab;

    .line 15
    .line 16
    invoke-direct {v0, v3, v2}, Lorg/wikipedia/feed/HomeAction$SelectTab;-><init>(Lorg/wikipedia/feed/HomeTab;Lorg/wikipedia/feed/model/Card;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :pswitch_0
    new-instance v0, Lorg/wikipedia/feed/HomeAction$CustomizeClick;

    .line 24
    .line 25
    invoke-direct {v0, v2}, Lorg/wikipedia/feed/HomeAction$CustomizeClick;-><init>(Lorg/wikipedia/feed/model/Card;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    new-instance v0, Lorg/wikipedia/feed/HomeAction$SelectTab;

    .line 33
    .line 34
    sget-object v3, Lorg/wikipedia/feed/HomeTab;->COMMUNITY:Lorg/wikipedia/feed/HomeTab;

    .line 35
    .line 36
    invoke-direct {v0, v3, v2}, Lorg/wikipedia/feed/HomeAction$SelectTab;-><init>(Lorg/wikipedia/feed/HomeTab;Lorg/wikipedia/feed/model/Card;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :pswitch_2
    new-instance v0, Lorg/wikipedia/feed/HomeAction$CustomizeClick;

    .line 44
    .line 45
    invoke-direct {v0, v2}, Lorg/wikipedia/feed/HomeAction$CustomizeClick;-><init>(Lorg/wikipedia/feed/model/Card;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
