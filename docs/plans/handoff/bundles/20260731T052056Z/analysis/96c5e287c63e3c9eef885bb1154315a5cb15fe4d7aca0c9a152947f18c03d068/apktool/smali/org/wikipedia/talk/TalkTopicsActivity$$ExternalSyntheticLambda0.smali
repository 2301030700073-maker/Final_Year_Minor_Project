.class public final synthetic Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/talk/TalkTopicsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/talk/TalkTopicsActivity;

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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    iget-object v2, v0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lorg/wikipedia/talk/TalkTopicsActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v2, Lorg/wikipedia/talk/TalkTopicsActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, v2, Lorg/wikipedia/talk/TalkTopicsActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :pswitch_0
    sget v0, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 24
    .line 25
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Landroid/content/Intent;

    .line 32
    .line 33
    const-class v1, Lorg/wikipedia/notifications/NotificationActivity;

    .line 34
    .line 35
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void

    .line 42
    :pswitch_1
    iget-object v3, v0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 43
    .line 44
    iget-object v0, v3, Lorg/wikipedia/talk/TalkTopicsActivity;->requestNewTopic:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 45
    .line 46
    sget-object v1, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 47
    .line 48
    invoke-virtual {v3}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v4, v1, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 53
    .line 54
    sget-object v7, Lorg/wikipedia/Constants$InvokeSource;->TALK_TOPICS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 55
    .line 56
    const/16 v16, 0x0

    .line 57
    .line 58
    const/16 v17, 0x1fe0

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v10, 0x0

    .line 65
    const-wide/16 v11, 0x0

    .line 66
    .line 67
    const-wide/16 v13, 0x0

    .line 68
    .line 69
    const/4 v15, 0x0

    .line 70
    invoke-static/range {v3 .. v17}, Lorg/wikipedia/talk/UserTalkPopupHelper;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/dataclient/discussiontools/ThreadItem;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/wikipedia/talk/db/TalkTemplate;JJZZI)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v1, v2}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_2
    sget v0, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 80
    .line 81
    invoke-virtual {v2}, Lorg/wikipedia/talk/TalkTopicsActivity;->resetViews()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkTopicsViewModel;->loadTopics()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_3
    sget v0, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 93
    .line 94
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
