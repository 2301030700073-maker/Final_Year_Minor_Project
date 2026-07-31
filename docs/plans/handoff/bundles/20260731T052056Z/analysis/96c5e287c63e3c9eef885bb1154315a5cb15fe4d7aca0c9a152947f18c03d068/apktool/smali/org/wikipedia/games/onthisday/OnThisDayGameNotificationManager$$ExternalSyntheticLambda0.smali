.class public final synthetic Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/16 v3, 0x3f8

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const-string v6, "off_click"

    .line 16
    .line 17
    const-string v7, "notification_modal"

    .line 18
    .line 19
    const-string v8, "game_end"

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    invoke-static/range {v3 .. v10}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v2}, Lorg/jsoup/nodes/NodeUtils;->disableNotifications(Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    const/4 v13, 0x0

    .line 31
    const/16 v11, 0x3f8

    .line 32
    .line 33
    const/4 v12, 0x0

    .line 34
    const-string v14, "on_click"

    .line 35
    .line 36
    const-string v15, "notification_modal"

    .line 37
    .line 38
    const-string v16, "game_end"

    .line 39
    .line 40
    const/16 v17, 0x0

    .line 41
    .line 42
    const/16 v18, 0x0

    .line 43
    .line 44
    invoke-static/range {v11 .. v18}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 48
    .line 49
    sget-object v1, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;->ENABLED:Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;

    .line 50
    .line 51
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setOtdNotificationState(Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_1
    const/4 v4, 0x0

    .line 59
    const/16 v2, 0x3f8

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    const-string v5, "off_click"

    .line 63
    .line 64
    const-string v6, "notification_modal"

    .line 65
    .line 66
    const-string v7, "game_end"

    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v9, 0x0

    .line 70
    invoke-static/range {v2 .. v9}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 74
    .line 75
    sget-object v1, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;->DISABLED:Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;

    .line 76
    .line 77
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setOtdNotificationState(Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_2
    const/4 v5, 0x0

    .line 85
    const/16 v3, 0x3f8

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    const-string v6, "on_click"

    .line 89
    .line 90
    const-string v7, "notification_modal"

    .line 91
    .line 92
    const-string v8, "game_end"

    .line 93
    .line 94
    const/4 v9, 0x0

    .line 95
    const/4 v10, 0x0

    .line 96
    invoke-static/range {v3 .. v10}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v2}, Lorg/jsoup/nodes/NodeUtils;->enableNotifications(Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;Z)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
