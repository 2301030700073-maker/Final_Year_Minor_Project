.class public final synthetic Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda3;->f$0:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda3;->f$1:Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda3;->f$1:Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;

    .line 9
    .line 10
    iget-object p1, v0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->binding:Lretrofit2/OkHttpCall$1;

    .line 11
    .line 12
    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v4, v0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 25
    .line 26
    iget-object v5, v0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

    .line 27
    .line 28
    new-instance v6, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6;

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    invoke-direct {v6, v0, p1}, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6;-><init>(Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda3;->f$0:Landroid/app/Activity;

    .line 35
    .line 36
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->show()Landroidx/appcompat/app/AlertDialog;

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_0
    new-instance v2, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;

    .line 44
    .line 45
    iget-object p1, v0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->binding:Lretrofit2/OkHttpCall$1;

    .line 46
    .line 47
    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-object v5, v0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 60
    .line 61
    iget-object v6, v0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

    .line 62
    .line 63
    new-instance v7, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-direct {v7, v0, p1}, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6;-><init>(Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;I)V

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda3;->f$0:Landroid/app/Activity;

    .line 70
    .line 71
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->show()Landroidx/appcompat/app/AlertDialog;

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
