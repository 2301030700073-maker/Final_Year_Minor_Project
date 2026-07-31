.class public final Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public closeButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

.field public closeButtonLabel:Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;

.field public importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

.field public isImportProgressVisible:Z

.field public isLoadingProgressVisible:Z

.field public isPickAppButtonEnabled:Z

.field public isPickAppButtonPermanentlyDisabled:Z

.field public isPickAppButtonVisible:Z

.field public isPickDocumentButtonEnabled:Z

.field public isPickDocumentButtonVisible:Z

.field public isScanQrCodeButtonEnabled:Z

.field public isScanQrCodeButtonVisible:Z

.field public isSettingsListEnabled:Z

.field public isSettingsListVisible:Z

.field public settingsList:Ljava/util/List;

.field public statusText:Lapp/k9mail/feature/settings/import/ui/StatusText;


# virtual methods
.method public final disablePickButtons()V
    .locals 1

    .line 1
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/StatusText;->HIDDEN:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 2
    .line 3
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->statusText:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonEnabled:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonEnabled:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonEnabled:Z

    .line 11
    .line 12
    return-void
.end method

.method public final setSettingsListState(ILapp/k9mail/feature/settings/import/ui/ImportStatus;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 13
    .line 14
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 21
    .line 22
    iget-boolean p1, p2, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->isActionRequired:Z

    .line 23
    .line 24
    iput-boolean p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->enabled:Z

    .line 25
    .line 26
    return-void
.end method

.method public final showActionRequiredText(Lapp/k9mail/feature/settings/import/ui/StatusText;)V
    .locals 1

    .line 1
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/ButtonState;->GONE:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 2
    .line 3
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 4
    .line 5
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/ButtonState;->ENABLED:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 6
    .line 7
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->closeButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 8
    .line 9
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;->LATER:Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;

    .line 10
    .line 11
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->closeButtonLabel:Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isImportProgressVisible:Z

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListEnabled:Z

    .line 18
    .line 19
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->statusText:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 20
    .line 21
    return-void
.end method

.method public final showImportErrorText()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isLoadingProgressVisible:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isImportProgressVisible:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListVisible:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonVisible:Z

    .line 10
    .line 11
    iput-boolean v1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonEnabled:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonVisible:Z

    .line 14
    .line 15
    iput-boolean v1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonEnabled:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonVisible:Z

    .line 18
    .line 19
    iget-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonPermanentlyDisabled:Z

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iput-boolean v1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonEnabled:Z

    .line 24
    .line 25
    :cond_0
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/StatusText;->IMPORT_FAILURE:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 26
    .line 27
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->statusText:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 28
    .line 29
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/ButtonState;->DISABLED:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 30
    .line 31
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 32
    .line 33
    return-void
.end method

.method public final showLoadingProgress()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isLoadingProgressVisible:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonVisible:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonVisible:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonVisible:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListEnabled:Z

    .line 12
    .line 13
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/StatusText;->HIDDEN:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 14
    .line 15
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->statusText:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 16
    .line 17
    return-void
.end method

.method public final updateCloseButtonAndImportStatusText()V
    .locals 8

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_e

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 28
    .line 29
    iget-object v1, v1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 30
    .line 31
    iget-boolean v1, v1, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->isSuccess:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    :cond_2
    move v0, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 64
    .line 65
    iget-object v3, v3, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 66
    .line 67
    sget-object v4, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->IMPORT_SUCCESS_PASSWORD_REQUIRED:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 68
    .line 69
    if-ne v3, v4, :cond_4

    .line 70
    .line 71
    move v0, v1

    .line 72
    :goto_0
    iget-object v3, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 73
    .line 74
    if-eqz v3, :cond_6

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_6

    .line 81
    .line 82
    :cond_5
    move v3, v2

    .line 83
    goto :goto_1

    .line 84
    :cond_6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_5

    .line 93
    .line 94
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 99
    .line 100
    iget-object v4, v4, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 101
    .line 102
    sget-object v5, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->IMPORT_SUCCESS_AUTHORIZATION_REQUIRED:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 103
    .line 104
    if-ne v4, v5, :cond_7

    .line 105
    .line 106
    move v3, v1

    .line 107
    :goto_1
    if-eqz v0, :cond_8

    .line 108
    .line 109
    if-eqz v3, :cond_8

    .line 110
    .line 111
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/StatusText;->IMPORT_SUCCESS_PASSWORD_AND_AUTHORIZATION_REQUIRED:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->showActionRequiredText(Lapp/k9mail/feature/settings/import/ui/StatusText;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_8
    if-eqz v0, :cond_9

    .line 118
    .line 119
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/StatusText;->IMPORT_SUCCESS_PASSWORD_REQUIRED:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->showActionRequiredText(Lapp/k9mail/feature/settings/import/ui/StatusText;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_9
    if-eqz v3, :cond_a

    .line 126
    .line 127
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/StatusText;->IMPORT_SUCCESS_AUTHORIZATION_REQUIRED:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->showActionRequiredText(Lapp/k9mail/feature/settings/import/ui/StatusText;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_a
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 134
    .line 135
    sget-object v3, Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;->OK:Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;

    .line 136
    .line 137
    sget-object v4, Lapp/k9mail/feature/settings/import/ui/ButtonState;->ENABLED:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 138
    .line 139
    sget-object v5, Lapp/k9mail/feature/settings/import/ui/ButtonState;->GONE:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 140
    .line 141
    if-eqz v0, :cond_b

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_b

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_d

    .line 159
    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    check-cast v6, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 165
    .line 166
    iget-object v6, v6, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 167
    .line 168
    sget-object v7, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->IMPORT_FAILURE:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 169
    .line 170
    if-ne v6, v7, :cond_c

    .line 171
    .line 172
    iput-object v5, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 173
    .line 174
    iput-object v4, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->closeButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 175
    .line 176
    iput-object v3, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->closeButtonLabel:Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;

    .line 177
    .line 178
    iput-boolean v2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isImportProgressVisible:Z

    .line 179
    .line 180
    iput-boolean v1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListEnabled:Z

    .line 181
    .line 182
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/StatusText;->IMPORT_PARTIAL_FAILURE:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 183
    .line 184
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->statusText:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 185
    .line 186
    return-void

    .line 187
    :cond_d
    :goto_2
    iput-object v5, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 188
    .line 189
    iput-object v4, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->closeButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 190
    .line 191
    iput-object v3, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->closeButtonLabel:Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;

    .line 192
    .line 193
    iput-boolean v2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isImportProgressVisible:Z

    .line 194
    .line 195
    iput-boolean v1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListEnabled:Z

    .line 196
    .line 197
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/StatusText;->IMPORT_SUCCESS:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 198
    .line 199
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->statusText:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 200
    .line 201
    return-void

    .line 202
    :cond_e
    :goto_3
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->showImportErrorText()V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method public final updateImportButtonFromSelection()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isImportProgressVisible:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 33
    .line 34
    iget-boolean v2, v2, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->selected:Z

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/ButtonState;->ENABLED:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 39
    .line 40
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 41
    .line 42
    iput-boolean v1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isImportProgressVisible:Z

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListEnabled:Z

    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    :goto_0
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/ButtonState;->DISABLED:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 49
    .line 50
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 51
    .line 52
    iput-boolean v1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isImportProgressVisible:Z

    .line 53
    .line 54
    return-void
.end method
