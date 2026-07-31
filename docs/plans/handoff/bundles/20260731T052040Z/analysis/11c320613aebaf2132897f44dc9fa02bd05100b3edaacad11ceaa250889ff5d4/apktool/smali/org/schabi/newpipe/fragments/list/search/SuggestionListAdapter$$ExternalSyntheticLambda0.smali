.class public final synthetic Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

.field public final synthetic f$1:Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

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
    .locals 1

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->listener:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    .line 19
    .line 20
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 21
    .line 22
    iget-object v0, v0, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->listener:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    iget-object p1, v0, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    .line 48
    .line 49
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    .line 52
    .line 53
    sget v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$clinit:I

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->search(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
