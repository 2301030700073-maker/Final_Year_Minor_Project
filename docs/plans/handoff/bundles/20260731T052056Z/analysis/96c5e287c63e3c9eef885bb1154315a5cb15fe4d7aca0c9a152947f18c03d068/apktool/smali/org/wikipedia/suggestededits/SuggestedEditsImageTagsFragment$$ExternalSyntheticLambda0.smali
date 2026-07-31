.class public final synthetic Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 10
    .line 11
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getShowImageZoomTooltip()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const p1, 0x7f120612

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Landroid/widget/ImageView;

    .line 32
    .line 33
    const v0, 0x7f1208e2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p1, p0, v1}, Lorg/wikipedia/util/ShareUtil;->showToastOverView(Landroid/view/View;Ljava/lang/CharSequence;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    sget-object v0, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 51
    .line 52
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 53
    .line 54
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 70
    .line 71
    sget v0, Lorg/wikipedia/commons/FilePageActivity;->$r8$clinit:I

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0, p1, v1}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayFormatting:Landroid/view/View;

    .line 92
    .line 93
    check-cast p1, Landroid/widget/ProgressBar;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 104
    .line 105
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 106
    .line 107
    const/16 v0, 0x8

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->getNextItem()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
