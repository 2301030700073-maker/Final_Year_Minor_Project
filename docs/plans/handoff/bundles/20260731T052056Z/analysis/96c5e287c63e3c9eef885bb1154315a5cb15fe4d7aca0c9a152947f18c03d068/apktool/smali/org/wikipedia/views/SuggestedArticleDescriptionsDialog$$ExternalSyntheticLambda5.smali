.class public final synthetic Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget p1, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;

    .line 9
    .line 10
    iget-boolean p1, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->reported:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

    .line 15
    .line 16
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v0, "machineSuggestions.reportDialog.dismissed"

    .line 26
    .line 27
    invoke-virtual {p1, p0, v0}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->log(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_0
    check-cast p0, Lorg/wikipedia/views/TextInputDialog;

    .line 32
    .line 33
    iget-object p0, p0, Lorg/wikipedia/views/TextInputDialog;->callback:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Lokio/internal/DefaultSocket;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    iget-object p0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lorg/wikipedia/talk/TalkReplyActivity;

    .line 42
    .line 43
    sget-object p1, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkReplyActivity;->setSaveButtonEnabled(Z)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void

    .line 50
    :pswitch_1
    check-cast p0, Landroid/webkit/JsResult;

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void

    .line 58
    :pswitch_2
    check-cast p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;

    .line 59
    .line 60
    iget-boolean p1, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->suggestionChosen:Z

    .line 61
    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

    .line 65
    .line 66
    iget-object v0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 69
    .line 70
    iget-object v0, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 71
    .line 72
    iget-object p0, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {p0}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->composeLogString(Lorg/wikipedia/page/PageTitle;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string v1, ".suggestionsDialog.dismissed"

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p1, v0, p0}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->log(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
