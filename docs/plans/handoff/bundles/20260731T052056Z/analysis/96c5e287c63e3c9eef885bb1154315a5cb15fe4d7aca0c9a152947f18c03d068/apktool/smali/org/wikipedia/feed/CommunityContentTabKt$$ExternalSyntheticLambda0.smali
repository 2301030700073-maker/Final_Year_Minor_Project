.class public final synthetic Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lorg/wikipedia/feed/featured/FeaturedArticleCard;

.field public final synthetic f$2:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/featured/FeaturedArticleCard;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p4, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/feed/featured/FeaturedArticleCard;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda0;->f$2:Lorg/wikipedia/dataclient/WikiSite;

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
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/16 v2, 0xf

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda0;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/feed/featured/FeaturedArticleCard;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    check-cast p1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;

    .line 22
    .line 23
    invoke-virtual {p1, v3, v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getHistoryEntry(Lorg/wikipedia/dataclient/WikiSite;I)Lorg/wikipedia/history/HistoryEntry;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, v4, p1}, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageShareClick;

    .line 38
    .line 39
    invoke-virtual {p1, v3, v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getHistoryEntry(Lorg/wikipedia/dataclient/WikiSite;I)Lorg/wikipedia/history/HistoryEntry;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, v4, p1}, Lorg/wikipedia/feed/HomeAction$PageShareClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageClick;

    .line 54
    .line 55
    invoke-virtual {p1, v3, v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getHistoryEntry(Lorg/wikipedia/dataclient/WikiSite;I)Lorg/wikipedia/history/HistoryEntry;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {v0, v4, p1}, Lorg/wikipedia/feed/HomeAction$PageClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
