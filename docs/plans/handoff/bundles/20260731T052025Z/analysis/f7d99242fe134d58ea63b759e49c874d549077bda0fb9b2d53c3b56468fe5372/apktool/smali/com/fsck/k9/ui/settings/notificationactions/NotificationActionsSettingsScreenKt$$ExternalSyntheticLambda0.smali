.class public final synthetic Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;

.field public final synthetic f$1:Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0;->f$1:Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0;->f$1:Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->moveByStep(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_0
    invoke-static {v1}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, -0x1

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->moveByStep(Ljava/lang/String;I)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    invoke-static {v1}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->draggedKey$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->draggedOffsetY$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->dragDidMove:Z

    .line 58
    .line 59
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
