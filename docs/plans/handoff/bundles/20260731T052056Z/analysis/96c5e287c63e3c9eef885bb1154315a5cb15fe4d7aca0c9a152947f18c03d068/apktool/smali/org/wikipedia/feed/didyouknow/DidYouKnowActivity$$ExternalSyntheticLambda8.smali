.class public final synthetic Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda8;->f$0:Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda8;->f$0:Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Long;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 17
    .line 18
    sget p1, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;->$r8$clinit:I

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 24
    .line 25
    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    sget-object v7, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v8, 0x1

    .line 33
    iget-object v3, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda8;->f$0:Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;

    .line 34
    .line 35
    invoke-static/range {v3 .. v9}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->moveToList(Landroid/app/Activity;JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)V

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :pswitch_0
    check-cast p1, Lorg/wikipedia/history/HistoryEntry;

    .line 40
    .line 41
    check-cast p2, Ljava/util/List;

    .line 42
    .line 43
    sget p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;->$r8$clinit:I

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance p0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 52
    .line 53
    invoke-direct {p0, p2}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;-><init>(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 57
    .line 58
    const/4 v0, 0x6

    .line 59
    invoke-direct {p2, v0, v1, p1}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1, p2}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->deleteOrShowDialog(Landroid/app/Activity;Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;)V

    .line 63
    .line 64
    .line 65
    return-object v2

    .line 66
    :pswitch_1
    check-cast p1, Lorg/wikipedia/history/HistoryEntry;

    .line 67
    .line 68
    check-cast p2, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    sget p2, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;->$r8$clinit:I

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    sget-object p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 80
    .line 81
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sget-object p2, Lorg/wikipedia/Constants$InvokeSource;->DID_YOU_KNOW:Lorg/wikipedia/Constants$InvokeSource;

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    invoke-static {v1, p1, p0, p2, v0}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 89
    .line 90
    .line 91
    return-object v2

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
