.class public final synthetic Lorg/wikipedia/page/campaign/CampaignDialogView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/page/campaign/CampaignDialogView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/campaign/CampaignDialogView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/page/campaign/CampaignDialogView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/campaign/CampaignDialogView$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/page/campaign/CampaignDialogView;

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
    .locals 8

    .line 1
    iget p1, p0, Lorg/wikipedia/page/campaign/CampaignDialogView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x4

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "article_banner"

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/page/campaign/CampaignDialogView$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/page/campaign/CampaignDialogView;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/page/campaign/CampaignDialogView;->callback:Lorg/wikipedia/page/campaign/CampaignDialogView$Callback;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    check-cast p0, Lorg/wikipedia/page/campaign/CampaignDialog;

    .line 18
    .line 19
    const-string p1, "already_donated_click"

    .line 20
    .line 21
    iget-object v4, p0, Lorg/wikipedia/page/campaign/CampaignDialog;->campaignId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, p1, v3, v2, v4}, Lokhttp3/Cache$Companion;->logAction$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lorg/wikipedia/page/campaign/CampaignDialog;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const v1, 0x7f12016a

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/campaign/CampaignDialog;->dismissDialog(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/page/campaign/CampaignDialogView;->callback:Lorg/wikipedia/page/campaign/CampaignDialogView$Callback;

    .line 42
    .line 43
    if-eqz p0, :cond_4

    .line 44
    .line 45
    check-cast p0, Lorg/wikipedia/page/campaign/CampaignDialog;

    .line 46
    .line 47
    iget-object p1, p0, Lorg/wikipedia/page/campaign/CampaignDialog;->campaignId:Ljava/lang/String;

    .line 48
    .line 49
    const-string v4, "later_click"

    .line 50
    .line 51
    invoke-static {v1, v4, v3, v2, p1}, Lokhttp3/Cache$Companion;->logAction$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v4, "reminder_toast"

    .line 55
    .line 56
    invoke-static {v1, v4, v3, v2, p1}, Lokhttp3/Cache$Companion;->logAction$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget p1, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 60
    .line 61
    invoke-static {}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->isInEligibleCountry()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    new-instance p1, Lorg/wikipedia/donate/donationreminder/DonationReminderAbTest;

    .line 68
    .line 69
    invoke-direct {p1}, Lorg/wikipedia/donate/donationreminder/DonationReminderAbTest;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->getGroup()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-ne p1, v0, :cond_1

    .line 77
    .line 78
    const-string p1, "android_remind_b"

    .line 79
    .line 80
    :goto_0
    move-object v6, p1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const-string p1, "android_remind_a"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :goto_1
    iget-object v3, p0, Lorg/wikipedia/page/campaign/CampaignDialog;->campaignId:Ljava/lang/String;

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    const/16 v7, 0x6c

    .line 89
    .line 90
    const-string v0, "group_assigned"

    .line 91
    .line 92
    const-string v1, "article_banner"

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v4, 0x0

    .line 96
    invoke-static/range {v0 .. v7}, Lokhttp3/Cache$Companion;->logDonationReminderAction$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-static {}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->isEnabled()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_3

    .line 104
    .line 105
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 106
    .line 107
    new-instance p1, Ljava/util/Date;

    .line 108
    .line 109
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    const p1, 0x7f1205cf

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v1, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lorg/wikipedia/page/campaign/CampaignDialog;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    const v0, 0x7f12016c

    .line 128
    .line 129
    .line 130
    invoke-static {p1, v0}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 131
    .line 132
    .line 133
    const/4 p1, 0x0

    .line 134
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/campaign/CampaignDialog;->dismissDialog(Z)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 139
    .line 140
    iget-object p1, p0, Lorg/wikipedia/page/campaign/CampaignDialog;->campaignIdOriginal:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {p1}, Lkotlin/uuid/UuidKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setAnnouncementShownDialogs(Ljava/util/Set;)V

    .line 147
    .line 148
    .line 149
    iget-object p0, p0, Lorg/wikipedia/page/campaign/CampaignDialog;->onNeutralButtonClick:Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 150
    .line 151
    if-eqz p0, :cond_4

    .line 152
    .line 153
    invoke-virtual {p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    :cond_4
    :goto_2
    return-void

    .line 157
    :pswitch_1
    iget-object p0, p0, Lorg/wikipedia/page/campaign/CampaignDialogView;->callback:Lorg/wikipedia/page/campaign/CampaignDialogView$Callback;

    .line 158
    .line 159
    if-eqz p0, :cond_5

    .line 160
    .line 161
    check-cast p0, Lorg/wikipedia/page/campaign/CampaignDialog;

    .line 162
    .line 163
    const-string p1, "close_click"

    .line 164
    .line 165
    iget-object v4, p0, Lorg/wikipedia/page/campaign/CampaignDialog;->campaignId:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v1, p1, v3, v2, v4}, Lokhttp3/Cache$Companion;->logAction$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/campaign/CampaignDialog;->dismissDialog(Z)V

    .line 171
    .line 172
    .line 173
    :cond_5
    return-void

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
