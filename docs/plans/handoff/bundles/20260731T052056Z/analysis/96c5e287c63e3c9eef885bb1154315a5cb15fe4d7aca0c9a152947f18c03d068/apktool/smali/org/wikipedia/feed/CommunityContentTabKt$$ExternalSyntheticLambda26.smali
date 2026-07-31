.class public final synthetic Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lorg/wikipedia/feed/image/FeaturedImageCard;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/image/FeaturedImageCard;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda26;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda26;->f$0:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda26;->f$1:Lorg/wikipedia/feed/image/FeaturedImageCard;

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
    iget v0, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda26;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda26;->f$1:Lorg/wikipedia/feed/image/FeaturedImageCard;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda26;->f$0:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :pswitch_0
    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :pswitch_1
    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :pswitch_2
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideCommunityCard;

    .line 25
    .line 26
    invoke-direct {v0, v2}, Lorg/wikipedia/feed/HomeAction$HideCommunityCard;-><init>(Lorg/wikipedia/feed/model/Card;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
