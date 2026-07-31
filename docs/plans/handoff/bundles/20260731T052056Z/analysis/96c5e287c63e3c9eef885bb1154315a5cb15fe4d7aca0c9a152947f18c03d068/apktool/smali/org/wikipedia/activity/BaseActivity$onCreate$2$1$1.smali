.class public final Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/activity/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/activity/BaseActivity;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;->this$0:Lorg/wikipedia/activity/BaseActivity;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;->this$0:Lorg/wikipedia/activity/BaseActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;-><init>(Lorg/wikipedia/activity/BaseActivity;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;-><init>(Lorg/wikipedia/activity/BaseActivity;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;->this$0:Lorg/wikipedia/activity/BaseActivity;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;->L$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    instance-of p1, p0, Lorg/wikipedia/events/ReadingListsNoLongerSyncedEvent;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 v10, 0x0

    .line 21
    const/16 v11, 0x1fc

    .line 22
    .line 23
    const-string v3, "impression"

    .line 24
    .line 25
    const-string v4, "sync_off_prompt"

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v9, 0x0

    .line 32
    invoke-static/range {v3 .. v11}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    new-instance p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 36
    .line 37
    invoke-direct {p0, v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 43
    .line 44
    iput-boolean v0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 45
    .line 46
    const p1, 0x7f1207ad

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 50
    .line 51
    .line 52
    const p1, 0x7f1207ac

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;

    .line 59
    .line 60
    const/4 v0, 0x7

    .line 61
    invoke-direct {p1, v0}, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;-><init>(I)V

    .line 62
    .line 63
    .line 64
    const v0, 0x7f1207aa

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 71
    .line 72
    const/4 v0, 0x6

    .line 73
    invoke-direct {p1, v0, v2}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const v0, 0x7f1207ab

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_0
    instance-of p1, p0, Lorg/wikipedia/events/ReadingListsEnableDialogEvent;

    .line 87
    .line 88
    if-nez p1, :cond_4

    .line 89
    .line 90
    instance-of p1, v2, Lorg/wikipedia/main/MainActivity;

    .line 91
    .line 92
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    instance-of p1, p0, Lorg/wikipedia/events/LoggedOutInBackgroundEvent;

    .line 104
    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    sget p0, Lorg/wikipedia/activity/BaseActivity;->$r8$clinit:I

    .line 108
    .line 109
    invoke-virtual {v2}, Lorg/wikipedia/activity/BaseActivity;->maybeShowLoggedOutInBackgroundDialog()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    instance-of p1, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    .line 114
    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    check-cast p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    .line 118
    .line 119
    iget-boolean p0, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;->showMessage:Z

    .line 120
    .line 121
    if-eqz p0, :cond_5

    .line 122
    .line 123
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 124
    .line 125
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isSuggestedEditsHighestPriorityEnabled()Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-nez p0, :cond_5

    .line 130
    .line 131
    const p0, 0x7f1207a9

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    const/16 p1, 0xc

    .line 142
    .line 143
    invoke-static {v2, p0, v0, p1}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    instance-of p0, p0, Lorg/wikipedia/events/UnreadNotificationsEvent;

    .line 152
    .line 153
    if-eqz p0, :cond_5

    .line 154
    .line 155
    new-instance p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 156
    .line 157
    const/4 p1, 0x1

    .line 158
    invoke-direct {p0, p1, v2}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_4
    :goto_0
    invoke-static {v2}, Lokhttp3/Cache$Companion;->promptEnableSyncDialog(Landroid/app/Activity;)V

    .line 166
    .line 167
    .line 168
    :cond_5
    :goto_1
    return-object v1

    .line 169
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    instance-of p0, p0, Lorg/wikipedia/events/ThemeFontChangeEvent;

    .line 173
    .line 174
    if-eqz p0, :cond_6

    .line 175
    .line 176
    invoke-static {v2}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    .line 177
    .line 178
    .line 179
    :cond_6
    return-object v1

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
