.class public final synthetic Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/activity/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/activity/BaseActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/activity/BaseActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "bottom_sheet_fragment"

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/activity/BaseActivity;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const p1, 0x7f120aa2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-static {p0, p1, v0}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :pswitch_0
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget-object p1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->REMOVE_DATE:Lj$/time/LocalDate;

    .line 41
    .line 42
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->shouldShowWidgetInstallDialog()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    iget-boolean v0, p1, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    move-object v1, p1

    .line 68
    check-cast v1, Landroidx/fragment/app/DialogFragment;

    .line 69
    .line 70
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    new-instance p1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;

    .line 80
    .line 81
    invoke-direct {p1}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-static {p0, p1}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    return-void

    .line 88
    :pswitch_1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 94
    .line 95
    const/4 v0, -0x1

    .line 96
    if-ne p1, v0, :cond_8

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_6

    .line 107
    .line 108
    iget-boolean v0, p1, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    move-object v1, p1

    .line 118
    check-cast v1, Landroidx/fragment/app/DialogFragment;

    .line 119
    .line 120
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 121
    .line 122
    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 123
    .line 124
    .line 125
    :cond_7
    const p1, 0x7f120165

    .line 126
    .line 127
    .line 128
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 129
    .line 130
    .line 131
    :cond_8
    return-void

    .line 132
    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    iget-object v0, p0, Lorg/wikipedia/activity/BaseActivity;->callback:Lorg/wikipedia/activity/BaseActivity$Callback;

    .line 139
    .line 140
    if-eqz v0, :cond_9

    .line 141
    .line 142
    invoke-interface {v0, p0, p1}, Lorg/wikipedia/activity/BaseActivity$Callback;->onPermissionResult(Lorg/wikipedia/activity/BaseActivity;Z)V

    .line 143
    .line 144
    .line 145
    :cond_9
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
