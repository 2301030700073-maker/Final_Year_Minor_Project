.class public final synthetic Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/notifications/NotificationActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/notifications/NotificationActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/notifications/NotificationActivity;

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
    iget v0, p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity;->resultLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 10
    .line 11
    sget v0, Lorg/wikipedia/notifications/NotificationFilterActivity;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    const-class v2, Lorg/wikipedia/notifications/NotificationFilterActivity;

    .line 23
    .line 24
    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lorg/wikipedia/notifications/NotificationActivity;->postprocessAndDisplay(Ljava/lang/Integer;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :pswitch_1
    sget p1, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_2
    sget p1, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 58
    .line 59
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lorg/wikipedia/notifications/NotificationViewModel;->fetchAndSave(Z)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
