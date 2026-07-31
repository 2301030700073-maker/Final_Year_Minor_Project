.class public final synthetic Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/edit/summaries/EditSummaryFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/summaries/EditSummaryFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

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
    .locals 4

    .line 1
    iget p1, p0, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    const-string v1, "editsummary_dialog"

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const v0, 0x7f12040d

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const v0, 0x7f12040c

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lorg/wikipedia/edit/EditSectionActivity;

    .line 61
    .line 62
    invoke-virtual {p1}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p1, p1, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 67
    .line 68
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 69
    .line 70
    if-ne p1, v2, :cond_0

    .line 71
    .line 72
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 73
    .line 74
    const-string/jumbo v2, "view_help"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->getActionDataStringForData()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {p1, v2, v1, v3, v0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const v0, 0x7f12040b

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {p1, p0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lorg/wikipedia/edit/EditSectionActivity;

    .line 111
    .line 112
    invoke-virtual {p1}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object p1, p1, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 117
    .line 118
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 119
    .line 120
    if-ne p1, v2, :cond_1

    .line 121
    .line 122
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 123
    .line 124
    const-string/jumbo v2, "tts_open"

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->getActionDataStringForData()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-static {p1, v2, v1, v3, v0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->voiceSearchLauncher:Landroidx/fragment/app/Fragment$10;

    .line 135
    .line 136
    new-instance v0, Landroid/content/Intent;

    .line 137
    .line 138
    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    .line 139
    .line 140
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 144
    .line 145
    const-string v2, "free_form"

    .line 146
    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const/4 v1, 0x0

    .line 152
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    const p1, 0x7f1201ea

    .line 161
    .line 162
    .line 163
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 164
    .line 165
    .line 166
    :goto_0
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
