.class public final synthetic Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;

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
    .locals 7

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "application/zip"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->importExportHelper:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;

    .line 13
    .line 14
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;->requestImportLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 15
    .line 16
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;->context:Landroid/content/Context;

    .line 17
    .line 18
    sget-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->JSON_MIME_TYPE:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p0, v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getPicker(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1, v0, v1, p0}, Lokhttp3/Cookie$Companion;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    return v2

    .line 35
    :pswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->importExportHelper:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;

    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;->onExportSelected()V

    .line 38
    .line 39
    .line 40
    return v2

    .line 41
    :pswitch_1
    sget p1, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->$r8$clinit:I

    .line 42
    .line 43
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    const v0, 0x7f130421

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 59
    .line 60
    .line 61
    new-instance v0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    const p0, 0x7f130397

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    .line 72
    .line 73
    new-instance p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;

    .line 74
    .line 75
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;-><init>(I)V

    .line 76
    .line 77
    .line 78
    const v0, 0x7f130076

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 89
    .line 90
    .line 91
    return v2

    .line 92
    :pswitch_2
    iget-object p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->requestExportPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v5, "NewPipeData-"

    .line 101
    .line 102
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v5, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->exportDateFormat:Ljava/text/SimpleDateFormat;

    .line 106
    .line 107
    new-instance v6, Ljava/util/Date;

    .line 108
    .line 109
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v5, ".zip"

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    iget-object v5, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 129
    .line 130
    iget-object v6, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->importExportDataPathKey:Ljava/lang/String;

    .line 131
    .line 132
    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-eqz v6, :cond_0

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    :goto_0
    invoke-static {v3, v4, v1, v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getNewPicker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {p1, v0, v1, p0}, Lokhttp3/Cookie$Companion;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V

    .line 158
    .line 159
    .line 160
    return v2

    .line 161
    :pswitch_3
    iget-object p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->requestImportPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 162
    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    iget-object v4, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 168
    .line 169
    iget-object v5, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->importExportDataPathKey:Ljava/lang/String;

    .line 170
    .line 171
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_1

    .line 180
    .line 181
    move-object v4, v0

    .line 182
    goto :goto_1

    .line 183
    :cond_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    :goto_1
    invoke-static {v3, v1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getPicker(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v3, v1, v4, v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->applyInitialPathToPickerIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-static {p1, v0, v1, p0}, Lokhttp3/Cookie$Companion;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V

    .line 202
    .line 203
    .line 204
    return v2

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
