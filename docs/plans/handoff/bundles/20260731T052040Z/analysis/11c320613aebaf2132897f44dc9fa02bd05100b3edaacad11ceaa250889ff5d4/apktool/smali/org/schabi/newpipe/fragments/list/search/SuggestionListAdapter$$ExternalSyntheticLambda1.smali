.class public final synthetic Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

.field public final synthetic f$1:Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->listener:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    .line 11
    .line 12
    iget-boolean v1, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->fromHistory:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    .line 19
    .line 20
    sget v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$clinit:I

    .line 21
    .line 22
    iget-object v1, p1, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v2, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->historyRecordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v2, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 38
    .line 39
    invoke-direct {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const v2, 0x7f1300f0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 50
    .line 51
    .line 52
    iget-object v2, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 53
    .line 54
    iput-boolean v0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 55
    .line 56
    const v2, 0x7f130076

    .line 57
    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v2, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda27;

    .line 65
    .line 66
    invoke-direct {v2, p1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda27;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const p0, 0x7f1300eb

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    return v0
.end method
