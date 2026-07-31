.class public final synthetic Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

.field public final synthetic f$1:Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda1;->f$0:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda1;->f$1:Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;

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
    .locals 2

    .line 1
    iget p1, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda1;->f$1:Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda1;->f$0:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p1, v1, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->binding:Lretrofit2/OkHttpCall$1;

    .line 12
    .line 13
    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->onSuggestionClicked(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-boolean v0, v1, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->suggestionChosen:Z

    .line 29
    .line 30
    iget-object p0, v1, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :pswitch_0
    iget-object p1, v1, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->binding:Lretrofit2/OkHttpCall$1;

    .line 39
    .line 40
    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->onSuggestionClicked(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-boolean v0, v1, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->suggestionChosen:Z

    .line 56
    .line 57
    iget-object p0, v1, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 58
    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
