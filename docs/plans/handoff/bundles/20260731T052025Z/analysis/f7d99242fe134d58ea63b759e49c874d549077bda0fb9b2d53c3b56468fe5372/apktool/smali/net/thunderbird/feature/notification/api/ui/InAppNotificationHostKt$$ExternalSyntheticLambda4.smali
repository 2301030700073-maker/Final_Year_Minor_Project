.class public final synthetic Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function1;

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
    .locals 5

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDismissClicked;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDismissClicked;

    .line 4
    .line 5
    sget-object v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnSyncAllAccounts;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnSyncAllAccounts;

    .line 6
    .line 7
    sget-object v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnSettingsClick;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnSettingsClick;

    .line 8
    .line 9
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget-object v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAccountSelectorClick;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAccountSelectorClick;

    .line 17
    .line 18
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v4

    .line 22
    :pswitch_0
    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-object v4

    .line 26
    :pswitch_1
    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-object v4

    .line 30
    :pswitch_2
    sget-object v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAddAccountClick;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAddAccountClick;

    .line 31
    .line 32
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v4

    .line 36
    :pswitch_3
    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-object v4

    .line 40
    :pswitch_4
    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-object v4

    .line 44
    :pswitch_5
    sget-object v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnManageFoldersClick;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnManageFoldersClick;

    .line 45
    .line 46
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v4

    .line 50
    :pswitch_6
    sget-object v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnSyncAccount;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnSyncAccount;

    .line 51
    .line 52
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    return-object v4

    .line 56
    :pswitch_7
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    return-object v4

    .line 60
    :pswitch_8
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-object v4

    .line 64
    :pswitch_9
    sget-object v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDoneClicked;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDoneClicked;

    .line 65
    .line 66
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-object v4

    .line 70
    :pswitch_a
    sget-object v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$MoveNext;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$MoveNext;

    .line 71
    .line 72
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    return-object v4

    .line 76
    :pswitch_b
    sget-object v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$Refresh;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$Refresh;

    .line 77
    .line 78
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    return-object v4

    .line 82
    :pswitch_c
    sget-object v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$OnFooterClick;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$OnFooterClick;

    .line 83
    .line 84
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    return-object v4

    .line 88
    :pswitch_d
    sget-object v0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Event$OnBackPressed;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Event$OnBackPressed;

    .line 89
    .line 90
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    return-object v4

    .line 94
    :pswitch_e
    sget-object v0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnBackPressed;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnBackPressed;

    .line 95
    .line 96
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    return-object v4

    .line 100
    :pswitch_f
    sget-object v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnBackPressed;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnBackPressed;

    .line 101
    .line 102
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    return-object v4

    .line 106
    :pswitch_10
    sget-object v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnSelectAvatarImageClick;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnSelectAvatarImageClick;

    .line 107
    .line 108
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    return-object v4

    .line 112
    :pswitch_11
    sget-object v0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$OpenNotificationCentre;->INSTANCE:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$OpenNotificationCentre;

    .line 113
    .line 114
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    return-object v4

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
