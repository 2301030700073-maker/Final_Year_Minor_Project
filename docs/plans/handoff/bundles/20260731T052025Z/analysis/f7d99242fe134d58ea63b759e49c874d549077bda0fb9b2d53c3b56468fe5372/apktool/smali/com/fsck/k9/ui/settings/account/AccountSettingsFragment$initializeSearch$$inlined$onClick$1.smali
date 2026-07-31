.class public final Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;->this$0:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 1
    iget p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;->this$0:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget p1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountReadingMailSettings;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getAccountUuid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v1, v2}, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountReadingMailSettings;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->launcherForActivityResult:Landroidx/fragment/app/Fragment$10;

    .line 25
    .line 26
    invoke-static {p1, v1, p0}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroidx/appcompat/app/AppCompatActivity;Lnet/openid/appauth/JsonUtil$Field;Landroidx/fragment/app/Fragment$10;)V

    .line 27
    .line 28
    .line 29
    return v0

    .line 30
    :pswitch_0
    sget p1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountEditOutgoingSettings;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getAccountUuid()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v1, p0}, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountEditOutgoingSettings;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v1}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)V

    .line 46
    .line 47
    .line 48
    return v0

    .line 49
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getAccountUuid()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    sget v1, Lcom/fsck/k9/activity/ManageIdentities;->$r8$clinit:I

    .line 58
    .line 59
    new-instance v1, Landroid/content/Intent;

    .line 60
    .line 61
    const-class v2, Lcom/fsck/k9/activity/ManageIdentities;

    .line 62
    .line 63
    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    const-string v2, "com.fsck.k9.ChooseIdentity_account"

    .line 67
    .line 68
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    return v0

    .line 75
    :pswitch_2
    sget p1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance v1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountEditIncomingSettings;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getAccountUuid()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-direct {v1, p0}, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountEditIncomingSettings;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v1}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)V

    .line 91
    .line 92
    .line 93
    return v0

    .line 94
    :pswitch_3
    sget p1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance v1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountSettings;

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getAccountUuid()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-direct {v1, p0}, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountSettings;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1, v1}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)V

    .line 110
    .line 111
    .line 112
    return v0

    .line 113
    :pswitch_4
    sget p1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance v1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountFetchingMailSettings;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getAccountUuid()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-direct {v1, v2}, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountFetchingMailSettings;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->launcherForActivityResult:Landroidx/fragment/app/Fragment$10;

    .line 129
    .line 130
    invoke-static {p1, v1, p0}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroidx/appcompat/app/AppCompatActivity;Lnet/openid/appauth/JsonUtil$Field;Landroidx/fragment/app/Fragment$10;)V

    .line 131
    .line 132
    .line 133
    return v0

    .line 134
    :pswitch_5
    sget p1, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->$r8$clinit:I

    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getAccountUuid()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    new-instance v1, Landroid/content/Intent;

    .line 145
    .line 146
    const-class v2, Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    .line 147
    .line 148
    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .line 150
    .line 151
    const-string v2, "android.intent.action.EDIT"

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    const-string v2, "account"

    .line 157
    .line 158
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 162
    .line 163
    .line 164
    return v0

    .line 165
    :pswitch_6
    sget p1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 166
    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    new-instance v1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountSearchSettings;

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getAccountUuid()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-direct {v1, v2}, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountSearchSettings;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->launcherForActivityResult:Landroidx/fragment/app/Fragment$10;

    .line 181
    .line 182
    invoke-static {p1, v1, p0}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroidx/appcompat/app/AppCompatActivity;Lnet/openid/appauth/JsonUtil$Field;Landroidx/fragment/app/Fragment$10;)V

    .line 183
    .line 184
    .line 185
    return v0

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
