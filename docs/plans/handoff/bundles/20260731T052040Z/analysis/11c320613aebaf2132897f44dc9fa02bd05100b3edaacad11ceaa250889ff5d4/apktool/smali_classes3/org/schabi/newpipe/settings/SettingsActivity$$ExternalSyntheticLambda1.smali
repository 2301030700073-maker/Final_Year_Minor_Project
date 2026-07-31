.class public final synthetic Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

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
    iget p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;

    .line 9
    .line 10
    sget p1, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;->$r8$clinit:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lus/shandian/giga/util/Utility;->checkSystemAlertWindowPermission(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lorg/jsoup/parser/TokenData;->inflate(Landroid/view/LayoutInflater;)Lorg/jsoup/parser/TokenData;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 37
    .line 38
    const/16 v2, 0x11

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 41
    .line 42
    .line 43
    const v2, 0x7f1303b2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 50
    .line 51
    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    const p1, 0x7f1303b4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 58
    .line 59
    .line 60
    const p1, 0x7f08013a

    .line 61
    .line 62
    .line 63
    iget-object v2, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 64
    .line 65
    iput p1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 66
    .line 67
    iget-object p1, v0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const v1, 0x7f130076

    .line 76
    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;

    .line 84
    .line 85
    const/16 v2, 0xa

    .line 86
    .line 87
    invoke-direct {v1, p0, v0, v2}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    const p0, 0x7f130397

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 102
    .line 103
    sget p1, Lorg/schabi/newpipe/settings/SettingsActivity;->$r8$clinit:I

    .line 104
    .line 105
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchEditText:Landroid/widget/EditText;

    .line 106
    .line 107
    const-string p1, ""

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
