.class public final synthetic Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda17;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda17;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 22
    .line 23
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 24
    .line 25
    invoke-static {p1, p0}, Lorg/jsoup/Jsoup;->showKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0
.end method
