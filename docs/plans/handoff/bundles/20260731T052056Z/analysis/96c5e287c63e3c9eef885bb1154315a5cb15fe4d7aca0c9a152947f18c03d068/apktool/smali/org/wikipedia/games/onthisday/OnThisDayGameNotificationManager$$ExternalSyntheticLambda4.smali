.class public final synthetic Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

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
    const-string/jumbo v6, "undo_click"

    .line 16
    .line 17
    .line 18
    const-string v7, "notification_snackbar"

    .line 19
    .line 20
    const-string v8, "game_end"

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v10, 0x0

    .line 24
    invoke-static/range {v3 .. v10}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v2}, Lorg/jsoup/nodes/NodeUtils;->enableNotifications(Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    const/4 v13, 0x0

    .line 35
    const/16 v11, 0x3f8

    .line 36
    .line 37
    const/4 v12, 0x0

    .line 38
    const-string/jumbo v14, "undo_click"

    .line 39
    .line 40
    .line 41
    const-string v15, "notification_snackbar"

    .line 42
    .line 43
    const-string v16, "game_end"

    .line 44
    .line 45
    const/16 v17, 0x0

    .line 46
    .line 47
    const/16 v18, 0x0

    .line 48
    .line 49
    invoke-static/range {v11 .. v18}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v2}, Lorg/jsoup/nodes/NodeUtils;->disableNotifications(Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
