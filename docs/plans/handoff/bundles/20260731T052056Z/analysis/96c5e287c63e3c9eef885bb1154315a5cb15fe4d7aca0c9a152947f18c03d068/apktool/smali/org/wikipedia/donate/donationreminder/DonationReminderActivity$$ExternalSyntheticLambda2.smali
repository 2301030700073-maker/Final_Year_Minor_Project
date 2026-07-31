.class public final synthetic Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const v1, 0x7f120170

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "reminder_config"

    .line 9
    .line 10
    const-string v5, "global_setting"

    .line 11
    .line 12
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    sget v0, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->$r8$clinit:I

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->getViewModel()Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-boolean v0, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->isFromSettings:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    move-object v8, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v8, v4

    .line 32
    :goto_0
    const/4 v13, 0x0

    .line 33
    const/16 v14, 0xfc

    .line 34
    .line 35
    const-string v7, "overflow_problem_click"

    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v10, 0x0

    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v12, 0x0

    .line 41
    invoke-static/range {v7 .. v14}, Lokhttp3/Cache$Companion;->logDonationReminderAction$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    const v0, 0x7f120186

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const v1, 0x7f120185

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {p0, v3, v0, v1, v2}, Lorg/wikipedia/util/ShareUtil;->composeEmail$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    return-object v6

    .line 68
    :pswitch_0
    sget v0, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->$r8$clinit:I

    .line 69
    .line 70
    invoke-virtual {p0}, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->getViewModel()Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-boolean v0, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->isFromSettings:Z

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    move-object v8, v5

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move-object v8, v4

    .line 81
    :goto_1
    const/4 v13, 0x0

    .line 82
    const/16 v14, 0xfc

    .line 83
    .line 84
    const-string v7, "overflow_learn_more_click"

    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v10, 0x0

    .line 88
    const/4 v11, 0x0

    .line 89
    const/4 v12, 0x0

    .line 90
    invoke-static/range {v7 .. v14}, Lokhttp3/Cache$Companion;->logDonationReminderAction$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {p0, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 108
    .line 109
    .line 110
    return-object v6

    .line 111
    :pswitch_1
    sget v0, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->$r8$clinit:I

    .line 112
    .line 113
    invoke-virtual {p0}, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->getViewModel()Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-boolean v0, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->isFromSettings:Z

    .line 118
    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {p0, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 136
    .line 137
    .line 138
    const/4 v13, 0x0

    .line 139
    const/16 v14, 0xfc

    .line 140
    .line 141
    const-string v7, "reminder_about_click"

    .line 142
    .line 143
    const-string v8, "global_setting"

    .line 144
    .line 145
    const/4 v9, 0x0

    .line 146
    const/4 v10, 0x0

    .line 147
    const/4 v11, 0x0

    .line 148
    const/4 v12, 0x0

    .line 149
    invoke-static/range {v7 .. v14}, Lokhttp3/Cache$Companion;->logDonationReminderAction$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_2
    const/16 v0, 0x64

    .line 154
    .line 155
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 159
    .line 160
    .line 161
    :goto_2
    return-object v6

    .line 162
    :pswitch_2
    sget v0, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->$r8$clinit:I

    .line 163
    .line 164
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 169
    .line 170
    .line 171
    return-object v6

    .line 172
    :pswitch_3
    sget v0, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->$r8$clinit:I

    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 175
    .line 176
    .line 177
    return-object v6

    .line 178
    :pswitch_4
    sget v0, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->$r8$clinit:I

    .line 179
    .line 180
    invoke-virtual {p0}, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->getViewModel()Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    new-instance v1, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 189
    .line 190
    invoke-direct {v1, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;)V

    .line 191
    .line 192
    .line 193
    new-instance v4, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 194
    .line 195
    const/4 v5, 0x7

    .line 196
    invoke-direct {v4, v5, p0, v3}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v0, v1, v3, v4, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 200
    .line 201
    .line 202
    return-object v6

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
