.class public final synthetic Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda14;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda14;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setRecommendedReadingListNotificationEnabled(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v0, "alarm"

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    check-cast v0, Landroid/app/AlarmManager;

    .line 28
    .line 29
    new-instance v1, Landroid/content/Intent;

    .line 30
    .line 31
    const-class v2, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;

    .line 32
    .line 33
    invoke-direct {v1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "action_recommended_reading_list"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const/high16 v2, 0x4000000

    .line 46
    .line 47
    invoke-static {p2, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_0
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 61
    .line 62
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListNotificationEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 p1, 0x1

    .line 70
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setRecommendedReadingListNotificationEnabled(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->requestPermissionAndScheduleRecommendedReadingNotification$1()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
