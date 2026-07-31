.class public final synthetic Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lorg/wikipedia/donate/DonateDialog;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lorg/wikipedia/donate/DonateDialog;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/donate/DonateDialog;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/donate/DonateDialog;Ljava/lang/String;)V
    .locals 1

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/donate/DonateDialog;

    iput-object p2, p0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/donate/DonateDialog;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lorg/wikipedia/donate/DonateDialog;->campaignIdOriginal:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/uuid/UuidKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setAnnouncementShownDialogs(Ljava/util/Set;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const-string p1, "gpay_click"

    .line 26
    .line 27
    iget-object v3, p0, Lorg/wikipedia/donate/DonateDialog;->campaignId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, p1, v2, v1, v3}, Lokhttp3/Cache$Companion;->logAction$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    instance-of v0, p1, Lorg/wikipedia/activity/BaseActivity;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    check-cast p1, Lorg/wikipedia/activity/BaseActivity;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object p1, v1

    .line 44
    :goto_0
    if-eqz p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    const-string v0, "donateUrl"

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    :cond_2
    new-instance p0, Landroid/content/Intent;

    .line 59
    .line 60
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object p1, p1, Lorg/wikipedia/activity/BaseActivity;->requestDonateActivity:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 64
    .line 65
    invoke-virtual {p1, p0, v1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void

    .line 69
    :pswitch_0
    const-string/jumbo p1, "webpay_click"

    .line 70
    .line 71
    .line 72
    iget-object v3, p0, Lorg/wikipedia/donate/DonateDialog;->campaignId:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0, p1, v2, v1, v3}, Lokhttp3/Cache$Companion;->logAction$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lorg/wikipedia/donate/DonateDialog;->onDonateClicked()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
