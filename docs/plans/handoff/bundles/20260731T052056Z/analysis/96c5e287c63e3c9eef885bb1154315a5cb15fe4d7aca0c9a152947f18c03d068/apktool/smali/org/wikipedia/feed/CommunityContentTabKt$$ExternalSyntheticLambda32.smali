.class public final synthetic Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda32;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda32;->f$0:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda32;->f$1:Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;

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
    iget v0, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda32;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda32;->f$1:Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda32;->f$0:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lorg/wikipedia/feed/HomeAction$CardFooterClick;

    .line 13
    .line 14
    invoke-direct {v0, v2}, Lorg/wikipedia/feed/HomeAction$CardFooterClick;-><init>(Lorg/wikipedia/feed/model/Card;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :pswitch_0
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideCommunityCard;

    .line 22
    .line 23
    invoke-direct {v0, v2}, Lorg/wikipedia/feed/HomeAction$HideCommunityCard;-><init>(Lorg/wikipedia/feed/model/Card;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
