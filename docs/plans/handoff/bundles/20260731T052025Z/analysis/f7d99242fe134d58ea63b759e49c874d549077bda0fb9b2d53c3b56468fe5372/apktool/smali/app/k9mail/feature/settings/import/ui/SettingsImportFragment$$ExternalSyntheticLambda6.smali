.class public final synthetic Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda6;->f$0:Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda6;->f$0:Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->onSettingsListItemClicked(I)V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :pswitch_0
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/Action;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    instance-of v0, p1, Lapp/k9mail/feature/settings/import/ui/Action$Close;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/Action$Close;

    .line 36
    .line 37
    iget-boolean p1, p1, Lapp/k9mail/feature/settings/import/ui/Action$Close;->importSuccess:Z

    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v0, Lkotlin/Pair;

    .line 44
    .line 45
    const-string v4, "accountImported"

    .line 46
    .line 47
    invoke-direct {v0, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-array p1, v3, [Lkotlin/Pair;

    .line 51
    .line 52
    aput-object v0, p1, v2

    .line 53
    .line 54
    invoke-static {p1}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v0, "settings_import"

    .line 59
    .line 60
    invoke-static {p0, v0, p1}, Lorg/slf4j/helpers/Util;->setFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    :try_start_0
    invoke-static {p0}, Lkotlin/math/MathKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavHostController;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_0
    instance-of v0, p1, Lapp/k9mail/feature/settings/import/ui/Action$PickDocument;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->pickDocumentLauncher:Landroidx/fragment/app/Fragment$10;

    .line 77
    .line 78
    const-string p1, "*/*"

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_1
    instance-of v0, p1, Lapp/k9mail/feature/settings/import/ui/Action$ScanQrCode;

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->qrCodeScannerLauncher:Landroidx/fragment/app/Fragment$10;

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_2
    instance-of v0, p1, Lapp/k9mail/feature/settings/import/ui/Action$PickApp;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;

    .line 101
    .line 102
    invoke-direct {p1}, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const-string v0, "pick_app"

    .line 110
    .line 111
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :cond_3
    instance-of v0, p1, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;

    .line 117
    .line 118
    const/4 v4, 0x2

    .line 119
    const/4 v5, 0x0

    .line 120
    const-string v6, "accountUuid"

    .line 121
    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;

    .line 125
    .line 126
    iget-object v0, p1, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;->accountUuid:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v7, p1, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;->accountName:Ljava/lang/String;

    .line 129
    .line 130
    iget-boolean v8, p1, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;->inputIncomingServerPassword:Z

    .line 131
    .line 132
    iget-object v9, p1, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;->incomingServerName:Ljava/lang/String;

    .line 133
    .line 134
    iget-boolean v10, p1, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;->inputOutgoingServerPassword:Z

    .line 135
    .line 136
    iget-object p1, p1, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;->outgoingServerName:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    new-instance v11, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;

    .line 142
    .line 143
    invoke-direct {v11}, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;-><init>()V

    .line 144
    .line 145
    .line 146
    new-instance v12, Lkotlin/Pair;

    .line 147
    .line 148
    invoke-direct {v12, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Lkotlin/Pair;

    .line 152
    .line 153
    const-string v6, "accountName"

    .line 154
    .line 155
    invoke-direct {v0, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    new-instance v7, Lkotlin/Pair;

    .line 163
    .line 164
    const-string v8, "inputIncomingServerPassword"

    .line 165
    .line 166
    invoke-direct {v7, v8, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    new-instance v6, Lkotlin/Pair;

    .line 170
    .line 171
    const-string v8, "incomingServerName"

    .line 172
    .line 173
    invoke-direct {v6, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    new-instance v9, Lkotlin/Pair;

    .line 181
    .line 182
    const-string v10, "inputOutgoingServerPassword"

    .line 183
    .line 184
    invoke-direct {v9, v10, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    new-instance v8, Lkotlin/Pair;

    .line 188
    .line 189
    const-string v10, "outgoingServerName"

    .line 190
    .line 191
    invoke-direct {v8, v10, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    const/4 p1, 0x6

    .line 195
    new-array p1, p1, [Lkotlin/Pair;

    .line 196
    .line 197
    aput-object v12, p1, v2

    .line 198
    .line 199
    aput-object v0, p1, v3

    .line 200
    .line 201
    aput-object v7, p1, v4

    .line 202
    .line 203
    const/4 v0, 0x3

    .line 204
    aput-object v6, p1, v0

    .line 205
    .line 206
    const/4 v0, 0x4

    .line 207
    aput-object v9, p1, v0

    .line 208
    .line 209
    const/4 v0, 0x5

    .line 210
    aput-object v8, p1, v0

    .line 211
    .line 212
    invoke-static {p1}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {v11, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v11, v3, p0}, Landroidx/fragment/app/Fragment;->setTargetFragment(ILandroidx/fragment/app/Fragment;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-virtual {v11, p0, v5}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_4
    instance-of v0, p1, Lapp/k9mail/feature/settings/import/ui/Action$StartAuthorization;

    .line 231
    .line 232
    if-eqz v0, :cond_5

    .line 233
    .line 234
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/Action$StartAuthorization;

    .line 235
    .line 236
    sget v0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->$r8$clinit:I

    .line 237
    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iget-object p1, p1, Lapp/k9mail/feature/settings/import/ui/Action$StartAuthorization;->accountUuid:Ljava/lang/String;

    .line 243
    .line 244
    new-instance v2, Landroid/content/Intent;

    .line 245
    .line 246
    const-class v3, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;

    .line 247
    .line 248
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 255
    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 259
    .line 260
    .line 261
    move-object v1, v5

    .line 262
    :catch_0
    :goto_0
    return-object v1

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
