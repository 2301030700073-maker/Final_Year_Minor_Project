.class public final synthetic Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;
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
    iput p1, p0, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function1;

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
    .locals 9

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnBackClicked;

    .line 4
    .line 5
    sget-object v2, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Event$OnBackClicked;

    .line 6
    .line 7
    sget-object v3, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnBackClicked;

    .line 8
    .line 9
    sget-object v4, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnBackClicked;

    .line 10
    .line 11
    sget-object v5, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event$OnBackClicked;

    .line 12
    .line 13
    sget-object v6, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnBackPressed;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnBackPressed;

    .line 14
    .line 15
    sget-object v7, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$NextClicked;->INSTANCE:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$NextClicked;

    .line 16
    .line 17
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-object v8

    .line 28
    :pswitch_0
    invoke-interface {p0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v8

    .line 32
    :pswitch_1
    sget-object v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnInComingServerClick;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnInComingServerClick;

    .line 33
    .line 34
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    return-object v8

    .line 38
    :pswitch_2
    sget-object v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnAdvanceClick;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnAdvanceClick;

    .line 39
    .line 40
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-object v8

    .line 44
    :pswitch_3
    sget-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$BackPressed;->INSTANCE:Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$BackPressed;

    .line 45
    .line 46
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v8

    .line 50
    :pswitch_4
    sget-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SavePressed;->INSTANCE:Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SavePressed;

    .line 51
    .line 52
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    return-object v8

    .line 56
    :pswitch_5
    invoke-interface {p0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    return-object v8

    .line 60
    :pswitch_6
    sget-object v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$AllowNotificationsPermissionClicked;->INSTANCE:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$AllowNotificationsPermissionClicked;

    .line 61
    .line 62
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    return-object v8

    .line 66
    :pswitch_7
    sget-object v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$AllowContactsPermissionClicked;->INSTANCE:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$AllowContactsPermissionClicked;

    .line 67
    .line 68
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    return-object v8

    .line 72
    :pswitch_8
    invoke-interface {p0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    return-object v8

    .line 76
    :pswitch_9
    invoke-interface {p0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    return-object v8

    .line 80
    :pswitch_a
    sget-object v0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$ReturnedFromAppInfoScreen;->INSTANCE:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$ReturnedFromAppInfoScreen;

    .line 81
    .line 82
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    return-object v8

    .line 86
    :pswitch_b
    sget-object v0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$GoToSettingsClicked;->INSTANCE:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$GoToSettingsClicked;

    .line 87
    .line 88
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    return-object v8

    .line 92
    :pswitch_c
    sget-object v0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$DoneClicked;->INSTANCE:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$DoneClicked;

    .line 93
    .line 94
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    return-object v8

    .line 98
    :pswitch_d
    invoke-interface {p0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    return-object v8

    .line 102
    :pswitch_e
    sget-object v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event$OnNextClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event$OnNextClicked;

    .line 103
    .line 104
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    return-object v8

    .line 108
    :pswitch_f
    invoke-interface {p0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    return-object v8

    .line 112
    :pswitch_10
    sget-object v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event$OnRetryClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event$OnRetryClicked;

    .line 113
    .line 114
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    return-object v8

    .line 118
    :pswitch_11
    invoke-interface {p0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    return-object v8

    .line 122
    :pswitch_12
    sget-object v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnNextClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnNextClicked;

    .line 123
    .line 124
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    return-object v8

    .line 128
    :pswitch_13
    invoke-interface {p0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    return-object v8

    .line 132
    :pswitch_14
    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    return-object v8

    .line 136
    :pswitch_15
    sget-object v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnNextClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnNextClicked;

    .line 137
    .line 138
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    return-object v8

    .line 142
    :pswitch_16
    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    return-object v8

    .line 146
    :pswitch_17
    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    return-object v8

    .line 150
    :pswitch_18
    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    return-object v8

    .line 154
    :pswitch_19
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    return-object v8

    .line 158
    :pswitch_1a
    sget-object v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnEditConfigurationClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnEditConfigurationClicked;

    .line 159
    .line 160
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    return-object v8

    .line 164
    :pswitch_1b
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    return-object v8

    .line 168
    :pswitch_1c
    sget-object v0, Lcom/fsck/k9/ui/settings/AboutContract$Event$OnChangeLogClick;->INSTANCE:Lcom/fsck/k9/ui/settings/AboutContract$Event$OnChangeLogClick;

    .line 169
    .line 170
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    return-object v8

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
