.class public final synthetic Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda30;->f$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void

    .line 16
    :cond_1
    :goto_0
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 17
    .line 18
    iget-object p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda30;->f$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const-string v2, "title"

    .line 23
    .line 24
    const-class v3, Lorg/wikipedia/page/PageTitle;

    .line 25
    .line 26
    invoke-static {p1, v2, v3}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/os/Parcelable;

    .line 31
    .line 32
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 33
    .line 34
    if-nez p1, :cond_3

    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 41
    .line 42
    :cond_3
    if-ne v0, v1, :cond_4

    .line 43
    .line 44
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 45
    .line 46
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 47
    .line 48
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 49
    .line 50
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 55
    .line 56
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const-string v7, "app_patroller_experience"

    .line 61
    .line 62
    const-string v2, "publish_message_toast"

    .line 63
    .line 64
    const-string v3, "pt_warning_messages"

    .line 65
    .line 66
    const-string v4, ""

    .line 67
    .line 68
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 72
    .line 73
    .line 74
    const v0, 0x7f12098c

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 79
    .line 80
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 81
    .line 82
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 83
    .line 84
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 89
    .line 90
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const-string v7, "app_patroller_experience"

    .line 95
    .line 96
    const-string v2, "publish_message_saved_toast"

    .line 97
    .line 98
    const-string v3, "pt_warning_messages"

    .line 99
    .line 100
    const-string v4, ""

    .line 101
    .line 102
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 106
    .line 107
    .line 108
    const v0, 0x7f12098d

    .line 109
    .line 110
    .line 111
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    const/16 v3, 0xc

    .line 124
    .line 125
    invoke-static {v1, v0, v2, v3}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v1, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 130
    .line 131
    const/4 v2, 0x6

    .line 132
    invoke-direct {v1, v2, p0, p1}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    const p1, 0x7f1205a5

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->navTabContainer:Landroid/widget/LinearLayout;

    .line 147
    .line 148
    invoke-virtual {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setAnchorView(Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0903fc

    .line 6
    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    const-string v2, "pt_toolbar"

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda30;->f$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    const-string/jumbo p1, "undo_menu_init"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v2, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->showUndoDialog()V

    .line 24
    .line 25
    .line 26
    return v3

    .line 27
    :cond_0
    const v0, 0x7f0903e2

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    if-ne p1, v0, :cond_1

    .line 32
    .line 33
    const-string p1, "rollback_menu_init"

    .line 34
    .line 35
    invoke-virtual {p0, p1, v2, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p1, v0, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 45
    .line 46
    .line 47
    const v0, 0x7f120837

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda26;

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda26;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 57
    .line 58
    .line 59
    const v1, 0x104000a

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda26;

    .line 66
    .line 67
    const/4 v1, 0x3

    .line 68
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda26;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 69
    .line 70
    .line 71
    const/high16 p0, 0x1040000

    .line 72
    .line 73
    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 77
    .line 78
    .line 79
    return v3

    .line 80
    :cond_1
    return v4
.end method
