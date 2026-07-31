.class public final synthetic Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/feed/ForYouModule;

.field public final synthetic f$1:Lorg/wikipedia/feed/model/ForYouCard;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/ForYouModule;Lorg/wikipedia/feed/model/ForYouCard;Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda7;->f$0:Lorg/wikipedia/feed/ForYouModule;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda7;->f$1:Lorg/wikipedia/feed/model/ForYouCard;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda7;->f$2:Lkotlin/jvm/functions/Function2;

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
    iget v0, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda7;->f$2:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda7;->f$1:Lorg/wikipedia/feed/model/ForYouCard;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda7;->f$0:Lorg/wikipedia/feed/ForYouModule;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-interface {v2, p0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :pswitch_0
    if-eqz p0, :cond_1

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-interface {v2, p0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_1
    return-object v1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
