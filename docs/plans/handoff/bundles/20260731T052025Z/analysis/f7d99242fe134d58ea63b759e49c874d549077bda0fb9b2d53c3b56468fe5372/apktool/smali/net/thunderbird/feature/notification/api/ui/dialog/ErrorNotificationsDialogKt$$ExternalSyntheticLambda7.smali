.class public final synthetic Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogKt$$ExternalSyntheticLambda7;->f$0:Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogKt$$ExternalSyntheticLambda7;->f$1:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput p3, p0, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogKt$$ExternalSyntheticLambda7;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    and-int/lit8 p1, p3, 0x11

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    move p1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v1

    .line 25
    :goto_0
    and-int/2addr p3, v2

    .line 26
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    invoke-virtual {p2, p3, p1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogKt$$ExternalSyntheticLambda7;->f$0:Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;

    .line 35
    .line 36
    iget-object p1, p1, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;->actions:Lkotlinx/collections/immutable/ImmutableList;

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    add-int/lit8 v0, v1, 0x1

    .line 53
    .line 54
    if-ltz v1, :cond_1

    .line 55
    .line 56
    check-cast p3, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 57
    .line 58
    sget-object v2, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogDefaults;->defaultProperties:Landroidx/compose/ui/window/DialogProperties;

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "error_notifications_dialog_banner_inline_notification_list_item_action_"

    .line 63
    .line 64
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v3, p0, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogKt$$ExternalSyntheticLambda7;->f$2:I

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v3, "_"

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 85
    .line 86
    invoke-static {v2, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const/16 v2, 0x8

    .line 91
    .line 92
    iget-object v3, p0, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogKt$$ExternalSyntheticLambda7;->f$1:Lkotlin/jvm/functions/Function1;

    .line 93
    .line 94
    invoke-static {p3, v3, v1, p2, v2}, Lkotlin/text/CharsKt__CharKt;->ResolvedNotificationActionButton(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 95
    .line 96
    .line 97
    move v1, v0

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 100
    .line 101
    .line 102
    const/4 p0, 0x0

    .line 103
    throw p0

    .line 104
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 105
    .line 106
    .line 107
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p0
.end method
