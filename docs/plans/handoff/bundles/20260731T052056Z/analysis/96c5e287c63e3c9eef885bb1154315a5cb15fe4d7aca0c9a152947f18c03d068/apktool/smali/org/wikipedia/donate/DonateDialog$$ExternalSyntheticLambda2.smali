.class public final synthetic Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/donate/DonateDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/donate/DonateDialog;F)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/donate/DonateDialog;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/donate/DonateDialog;I)V
    .locals 0

    .line 10
    iput p2, p0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/donate/DonateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget p1, p0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "appmenu"

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/donate/DonateDialog;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget p1, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 12
    .line 13
    invoke-static {v1}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->getCampaignId(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const/4 v8, 0x0

    .line 18
    const/16 v9, 0xec

    .line 19
    .line 20
    const-string v2, "other_method_click"

    .line 21
    .line 22
    const-string v3, "reminder_milestone"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    invoke-static/range {v2 .. v9}, Lokhttp3/Cache$Companion;->logDonationReminderAction$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/wikipedia/donate/DonateDialog;->onDonateClicked()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    sget p1, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 35
    .line 36
    invoke-static {v1}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->getCampaignId(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const/4 v8, 0x0

    .line 41
    const/16 v9, 0xec

    .line 42
    .line 43
    const-string v2, "other_gpay_click"

    .line 44
    .line 45
    const-string v3, "reminder_milestone"

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    invoke-static/range {v2 .. v9}, Lokhttp3/Cache$Companion;->logDonationReminderAction$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    instance-of v1, p1, Lorg/wikipedia/activity/BaseActivity;

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    check-cast p1, Lorg/wikipedia/activity/BaseActivity;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move-object p1, v0

    .line 65
    :goto_0
    if-eqz p1, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->getCampaignId$default()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    new-instance p0, Landroid/content/Intent;

    .line 74
    .line 75
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object p1, p1, Lorg/wikipedia/activity/BaseActivity;->requestDonateActivity:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 79
    .line 80
    invoke-virtual {p1, p0, v0}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void

    .line 84
    :pswitch_1
    sget p1, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 85
    .line 86
    invoke-static {v1}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->getCampaignId(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const/4 v8, 0x0

    .line 91
    const/16 v9, 0xec

    .line 92
    .line 93
    const-string v2, "gpay_click"

    .line 94
    .line 95
    const-string v3, "reminder_milestone"

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    invoke-static/range {v2 .. v9}, Lokhttp3/Cache$Companion;->logDonationReminderAction$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    instance-of v1, p1, Lorg/wikipedia/activity/BaseActivity;

    .line 108
    .line 109
    if-eqz v1, :cond_2

    .line 110
    .line 111
    check-cast p1, Lorg/wikipedia/activity/BaseActivity;

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    move-object p1, v0

    .line 115
    :goto_1
    if-eqz p1, :cond_3

    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->getCampaignId$default()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    new-instance p0, Landroid/content/Intent;

    .line 124
    .line 125
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object p1, p1, Lorg/wikipedia/activity/BaseActivity;->requestDonateActivity:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 129
    .line 130
    invoke-virtual {p1, p0, v0}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    return-void

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
