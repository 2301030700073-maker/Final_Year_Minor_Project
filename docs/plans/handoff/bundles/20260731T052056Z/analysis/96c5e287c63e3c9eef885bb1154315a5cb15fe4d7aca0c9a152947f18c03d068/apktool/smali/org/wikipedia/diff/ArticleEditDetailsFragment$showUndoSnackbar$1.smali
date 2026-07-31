.class public final Lorg/wikipedia/diff/ArticleEditDetailsFragment$showUndoSnackbar$1;
.super Lcom/google/android/material/snackbar/Snackbar$Callback;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$showUndoSnackbar$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$showUndoSnackbar$1;->this$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismissed(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$showUndoSnackbar$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$showUndoSnackbar$1;->this$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->showFeedbackOptionsDialog(Z)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :pswitch_0
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->showFeedbackOptionsDialog(Z)V

    .line 32
    .line 33
    .line 34
    :goto_1
    return-void

    .line 35
    :pswitch_1
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->showFeedbackOptionsDialog(Z)V

    .line 45
    .line 46
    .line 47
    :goto_2
    return-void

    .line 48
    :pswitch_2
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    invoke-virtual {p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->showFeedbackOptionsDialog(Z)V

    .line 58
    .line 59
    .line 60
    :goto_3
    return-void

    .line 61
    :pswitch_3
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_4
    invoke-virtual {p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->showFeedbackOptionsDialog(Z)V

    .line 71
    .line 72
    .line 73
    :goto_4
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
