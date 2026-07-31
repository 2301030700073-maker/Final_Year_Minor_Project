.class public final Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;
.super Landroidx/compose/ui/unit/IntRectKt;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final appLanguageManager:Lcom/fsck/k9/ui/base/AppLanguageManager;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final jobManager:Lcom/fsck/k9/job/K9JobManager;

.field public skipSaveSettings:Z


# direct methods
.method public constructor <init>(Lcom/fsck/k9/job/K9JobManager;Lcom/fsck/k9/ui/base/AppLanguageManager;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lapp/k9mail/feature/telemetry/noop/NoOpTelemetryManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->jobManager:Lcom/fsck/k9/job/K9JobManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->appLanguageManager:Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 9
    .line 10
    return-void
.end method

.method public static stringToSubTheme(Ljava/lang/String;)Lnet/thunderbird/core/preference/SubTheme;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, -0x4a16fc5d

    .line 8
    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const v1, 0x2eef76

    .line 13
    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const v1, 0x6233516

    .line 18
    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    const-string v0, "light"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    sget-object p0, Lnet/thunderbird/core/preference/SubTheme;->LIGHT:Lnet/thunderbird/core/preference/SubTheme;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    const-string v0, "dark"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    sget-object p0, Lnet/thunderbird/core/preference/SubTheme;->DARK:Lnet/thunderbird/core/preference/SubTheme;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_1
    const-string v0, "global"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    sget-object p0, Lnet/thunderbird/core/preference/SubTheme;->USE_GLOBAL:Lnet/thunderbird/core/preference/SubTheme;

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    .line 56
    .line 57
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public static swipeActionToString(Lnet/thunderbird/core/common/action/SwipeAction;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    const-string p0, "move"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_1
    const-string p0, "spam"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_2
    const-string p0, "delete"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_3
    const-string p0, "archive"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_4
    const-string p0, "toggle_star"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_5
    const-string p0, "toggle_read"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_6
    const-string p0, "toggle_selection"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_7
    const-string p0, "none"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 5
    .line 6
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object v0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 13
    .line 14
    iget-object v1, v0, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 15
    .line 16
    iget-object v2, p0, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 17
    .line 18
    iget-object v3, v0, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 19
    .line 20
    iget-object v4, p0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 21
    .line 22
    iget-object v5, p0, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 23
    .line 24
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->privacy:Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 25
    .line 26
    iget-object v0, v0, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 27
    .line 28
    iget-object v6, v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    sparse-switch v7, :sswitch_data_0

    .line 35
    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :sswitch_0
    const-string p0, "messageview_autofit_width"

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_0

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_0
    iget-boolean p0, v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isAutoFitWidth:Z

    .line 50
    .line 51
    return p0

    .line 52
    :sswitch_1
    const-string p0, "show_compose_button"

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_1

    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :cond_1
    iget-boolean p0, v3, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowComposeButtonOnMessageList:Z

    .line 63
    .line 64
    return p0

    .line 65
    :sswitch_2
    const-string p0, "sensitive_logging"

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_2

    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_2
    iget-boolean p0, v2, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 76
    .line 77
    return p0

    .line 78
    :sswitch_3
    const-string p0, "messagelist_show_contact_picture"

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_3

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_3
    iget-boolean p0, v6, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowContactPicture:Z

    .line 89
    .line 90
    return p0

    .line 91
    :sswitch_4
    const-string/jumbo p0, "volume_navigation"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-nez p0, :cond_4

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :cond_4
    iget-boolean p0, v4, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->useVolumeKeysForNavigation:Z

    .line 103
    .line 104
    return p0

    .line 105
    :sswitch_5
    const-string p0, "fixed_message_view_theme"

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-nez p0, :cond_5

    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :cond_5
    iget-boolean p0, v1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->fixedMessageViewTheme:Z

    .line 116
    .line 117
    return p0

    .line 118
    :sswitch_6
    const-string p0, "enable_telemetry"

    .line 119
    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-nez p0, :cond_6

    .line 125
    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :cond_6
    sget-boolean p0, Lcom/fsck/k9/K9;->isTelemetryEnabled:Z

    .line 129
    .line 130
    return p0

    .line 131
    :sswitch_7
    const-string p0, "messagelist_sender_above_subject"

    .line 132
    .line 133
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-nez p0, :cond_7

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_7
    iget-boolean p0, v3, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isMessageListSenderAboveSubject:Z

    .line 142
    .line 143
    return p0

    .line 144
    :sswitch_8
    const-string p0, "show_unified_inbox"

    .line 145
    .line 146
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    if-nez p0, :cond_8

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_8
    iget-boolean p0, v3, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowUnifiedInbox:Z

    .line 155
    .line 156
    return p0

    .line 157
    :sswitch_9
    const-string p0, "notification_summary_delete"

    .line 158
    .line 159
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-nez p0, :cond_9

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_9
    iget-boolean p0, v5, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isSummaryDeleteActionEnabled:Z

    .line 168
    .line 169
    return p0

    .line 170
    :sswitch_a
    const-string p0, "threaded_view"

    .line 171
    .line 172
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    if-nez p0, :cond_a

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_a
    iget-boolean p0, v3, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isThreadedViewEnabled:Z

    .line 181
    .line 182
    return p0

    .line 183
    :sswitch_b
    const-string p0, "debug_logging"

    .line 184
    .line 185
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    if-nez p0, :cond_b

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_b
    iget-boolean p0, v2, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 194
    .line 195
    return p0

    .line 196
    :sswitch_c
    const-string p0, "notification_show_contact_picture"

    .line 197
    .line 198
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-nez p0, :cond_c

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_c
    iget-boolean p0, v5, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isShowContactPictureInNotification:Z

    .line 207
    .line 208
    return p0

    .line 209
    :sswitch_d
    const-string p0, "sync_debug_logging"

    .line 210
    .line 211
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    if-nez p0, :cond_d

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_d
    iget-boolean p0, v2, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSyncLoggingEnabled:Z

    .line 220
    .line 221
    return p0

    .line 222
    :sswitch_e
    const-string p0, "messagelist_colorize_missing_contact_pictures"

    .line 223
    .line 224
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    if-nez p0, :cond_e

    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_e
    iget-boolean p0, v6, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isColorizeMissingContactPictures:Z

    .line 233
    .line 234
    return p0

    .line 235
    :sswitch_f
    const-string v0, "privacy_hide_useragent"

    .line 236
    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-nez p1, :cond_f

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_f
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/privacy/PrivacySettings;->isHideUserAgent:Z

    .line 246
    .line 247
    return p0

    .line 248
    :sswitch_10
    const-string p0, "messagelist_change_contact_name_color"

    .line 249
    .line 250
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    if-nez p0, :cond_10

    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :cond_10
    iget-boolean p0, v6, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isChangeContactNameColor:Z

    .line 259
    .line 260
    return p0

    .line 261
    :sswitch_11
    const-string p0, "messageview_fixedwidth_font"

    .line 262
    .line 263
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    if-nez p0, :cond_11

    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :cond_11
    iget-boolean p0, v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isUseMessageViewFixedWidthFont:Z

    .line 272
    .line 273
    return p0

    .line 274
    :sswitch_12
    const-string v0, "privacy_hide_timezone"

    .line 275
    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    if-nez p1, :cond_12

    .line 281
    .line 282
    goto :goto_0

    .line 283
    :cond_12
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/privacy/PrivacySettings;->isHideTimeZone:Z

    .line 284
    .line 285
    return p0

    .line 286
    :sswitch_13
    const-string p0, "messagelist_background_as_unread_indicator"

    .line 287
    .line 288
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result p0

    .line 292
    if-nez p0, :cond_13

    .line 293
    .line 294
    goto :goto_0

    .line 295
    :cond_13
    iget-boolean p0, v6, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isUseBackgroundAsUnreadIndicator:Z

    .line 296
    .line 297
    return p0

    .line 298
    :sswitch_14
    const-string p0, "disable_notifications_during_quiet_time"

    .line 299
    .line 300
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result p0

    .line 304
    if-nez p0, :cond_14

    .line 305
    .line 306
    goto :goto_0

    .line 307
    :cond_14
    iget-boolean p0, v5, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isNotificationDuringQuietTimeEnabled:Z

    .line 308
    .line 309
    if-nez p0, :cond_15

    .line 310
    .line 311
    const/4 p0, 0x1

    .line 312
    return p0

    .line 313
    :cond_15
    const/4 p0, 0x0

    .line 314
    return p0

    .line 315
    :sswitch_15
    const-string p0, "quiet_time_enabled"

    .line 316
    .line 317
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result p0

    .line 321
    if-nez p0, :cond_16

    .line 322
    .line 323
    goto :goto_0

    .line 324
    :cond_16
    iget-boolean p0, v5, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isQuietTimeEnabled:Z

    .line 325
    .line 326
    return p0

    .line 327
    :sswitch_16
    const-string p0, "drawerExpandAllFolder"

    .line 328
    .line 329
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result p0

    .line 333
    if-nez p0, :cond_17

    .line 334
    .line 335
    goto :goto_0

    .line 336
    :cond_17
    iget-boolean p0, v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->drawerExpandAllFolder:Z

    .line 337
    .line 338
    return p0

    .line 339
    :sswitch_17
    const-string p0, "messagelist_show_contact_name"

    .line 340
    .line 341
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p0

    .line 345
    if-nez p0, :cond_18

    .line 346
    .line 347
    goto :goto_0

    .line 348
    :cond_18
    iget-boolean p0, v6, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowContactName:Z

    .line 349
    .line 350
    return p0

    .line 351
    :sswitch_18
    const-string p0, "show_starred_count"

    .line 352
    .line 353
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result p0

    .line 357
    if-nez p0, :cond_19

    .line 358
    .line 359
    goto :goto_0

    .line 360
    :cond_19
    iget-boolean p0, v3, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowStarredCount:Z

    .line 361
    .line 362
    return p0

    .line 363
    :sswitch_19
    const-string p0, "messagelist_show_correspondent_names"

    .line 364
    .line 365
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result p0

    .line 369
    if-nez p0, :cond_1a

    .line 370
    .line 371
    goto :goto_0

    .line 372
    :cond_1a
    iget-boolean p0, v6, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowCorrespondentNames:Z

    .line 373
    .line 374
    return p0

    .line 375
    :sswitch_1a
    const-string p0, "messagelist_stars"

    .line 376
    .line 377
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result p0

    .line 381
    if-nez p0, :cond_1b

    .line 382
    .line 383
    :goto_0
    return p2

    .line 384
    :cond_1b
    iget-boolean p0, v3, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowMessageListStars:Z

    .line 385
    .line 386
    return p0

    .line 387
    :sswitch_data_0
    .sparse-switch
        -0x7465b339 -> :sswitch_1a
        -0x6e6762e3 -> :sswitch_19
        -0x602fdff3 -> :sswitch_18
        -0x53332b4e -> :sswitch_17
        -0x50e24d3c -> :sswitch_16
        -0x4d44a006 -> :sswitch_15
        -0x4bfe4238 -> :sswitch_14
        -0x41ca4c4b -> :sswitch_13
        -0x2a0e7221 -> :sswitch_12
        -0x1eaa3977 -> :sswitch_11
        -0x8afdb7d -> :sswitch_10
        -0x7168b0c -> :sswitch_f
        -0x2f1f0ff -> :sswitch_e
        0xd88c6cf -> :sswitch_d
        0xfb48171 -> :sswitch_c
        0x21e10573 -> :sswitch_b
        0x332ae4fb -> :sswitch_a
        0x4690a638 -> :sswitch_9
        0x4c4c7fd7 -> :sswitch_8
        0x4e777cda -> :sswitch_7
        0x50f67bfd -> :sswitch_6
        0x5dd7c192 -> :sswitch_5
        0x663de459 -> :sswitch_4
        0x67527d77 -> :sswitch_3
        0x699ecab6 -> :sswitch_2
        0x6bb4c401 -> :sswitch_1
        0x70b2d776 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    const-string v0, "messagelist_contact_name_color"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 10
    .line 11
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 18
    .line 19
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 20
    .line 21
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 22
    .line 23
    iget p0, p0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->contactNameColor:I

    .line 24
    .line 25
    return p0

    .line 26
    :cond_0
    const-string p0, "message_view_content_font_slider"

    .line 27
    .line 28
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    sget-object p0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 35
    .line 36
    iget p0, p0, Lcom/fsck/k9/FontSizes;->messageViewContentAsPercent:I

    .line 37
    .line 38
    return p0

    .line 39
    :cond_1
    return p2
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 5
    .line 6
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, v0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 13
    .line 14
    iget-object v2, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 15
    .line 16
    iget-object v3, v0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 17
    .line 18
    iget-object v4, v0, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 19
    .line 20
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->network:Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 21
    .line 22
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 23
    .line 24
    iget-object v5, v1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/4 v7, 0x0

    .line 31
    const-string v8, "global"

    .line 32
    .line 33
    const-string v9, "light"

    .line 34
    .line 35
    const-string v10, "dark"

    .line 36
    .line 37
    const/4 v11, 0x2

    .line 38
    const/4 v12, 0x1

    .line 39
    sparse-switch v6, :sswitch_data_0

    .line 40
    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :sswitch_0
    const-string p0, "splitview_mode"

    .line 45
    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_0

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_0
    iget-object p0, v2, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :sswitch_1
    const-string p0, "messageViewTheme"

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-nez p0, :cond_1

    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_1
    iget-object p0, v2, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_4

    .line 78
    .line 79
    if-eq p0, v12, :cond_3

    .line 80
    .line 81
    if-ne p0, v11, :cond_2

    .line 82
    .line 83
    return-object v8

    .line 84
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 85
    .line 86
    .line 87
    return-object v7

    .line 88
    :cond_3
    return-object v10

    .line 89
    :cond_4
    return-object v9

    .line 90
    :sswitch_2
    const-string p0, "lock_screen_notification_visibility"

    .line 91
    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-nez p0, :cond_5

    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_5
    iget-object p0, v4, Lnet/thunderbird/core/preference/notification/NotificationPreference;->lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :sswitch_3
    const-string p0, "message_compose_theme"

    .line 108
    .line 109
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-nez p0, :cond_6

    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_6
    iget-object p0, v2, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageComposeTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-eqz p0, :cond_9

    .line 124
    .line 125
    if-eq p0, v12, :cond_8

    .line 126
    .line 127
    if-ne p0, v11, :cond_7

    .line 128
    .line 129
    return-object v8

    .line 130
    :cond_7
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 131
    .line 132
    .line 133
    return-object v7

    .line 134
    :cond_8
    return-object v10

    .line 135
    :cond_9
    return-object v9

    .line 136
    :sswitch_4
    const-string p0, "background_ops"

    .line 137
    .line 138
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-nez p0, :cond_a

    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_a
    iget-object p0, v0, Lnet/thunderbird/core/preference/network/NetworkSettings;->backgroundOps:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0

    .line 153
    :sswitch_5
    const-string p0, "messageview_body_content_type"

    .line 154
    .line 155
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    if-nez p0, :cond_b

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_b
    iget-object p0, v1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->bodyContentType:Lnet/thunderbird/core/preference/BodyContentType;

    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    return-object p0

    .line 170
    :sswitch_6
    const-string p0, "post_remove_navigation"

    .line 171
    .line 172
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    if-nez p0, :cond_c

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_c
    iget-object p0, v3, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostRemoveNavigation:Ljava/lang/String;

    .line 181
    .line 182
    return-object p0

    .line 183
    :sswitch_7
    const-string p0, "message_list_sender_font"

    .line 184
    .line 185
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    if-nez p0, :cond_d

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_d
    sget-object p0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 194
    .line 195
    iget p0, p0, Lcom/fsck/k9/FontSizes;->messageListSender:I

    .line 196
    .line 197
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    return-object p0

    .line 202
    :sswitch_8
    const-string p0, "message_compose_input_font"

    .line 203
    .line 204
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-nez p0, :cond_e

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_e
    sget-object p0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 213
    .line 214
    iget p0, p0, Lcom/fsck/k9/FontSizes;->messageComposeInput:I

    .line 215
    .line 216
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    return-object p0

    .line 221
    :sswitch_9
    const-string p0, "notification_quick_delete"

    .line 222
    .line 223
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    if-nez p0, :cond_f

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_f
    iget-object p0, v4, Lnet/thunderbird/core/preference/notification/NotificationPreference;->notificationQuickDeleteBehaviour:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 232
    .line 233
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    return-object p0

    .line 238
    :sswitch_a
    const-string p0, "message_list_date_time_format"

    .line 239
    .line 240
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result p0

    .line 244
    if-nez p0, :cond_10

    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_10
    iget-object p0, v5, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 249
    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    return-object p0

    .line 255
    :sswitch_b
    const-string p0, "swipe_action_left"

    .line 256
    .line 257
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result p0

    .line 261
    if-nez p0, :cond_11

    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_11
    iget-object p0, v3, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->swipeActions:Lnet/thunderbird/core/common/action/SwipeActions;

    .line 266
    .line 267
    iget-object p0, p0, Lnet/thunderbird/core/common/action/SwipeActions;->leftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 268
    .line 269
    invoke-static {p0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->swipeActionToString(Lnet/thunderbird/core/common/action/SwipeAction;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    return-object p0

    .line 274
    :sswitch_c
    const-string p0, "animations"

    .line 275
    .line 276
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result p0

    .line 280
    if-nez p0, :cond_12

    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_12
    iget-object p0, v1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->animationPreference:Lnet/thunderbird/core/preference/AnimationPreference;

    .line 285
    .line 286
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    if-eqz p0, :cond_15

    .line 291
    .line 292
    if-eq p0, v12, :cond_14

    .line 293
    .line 294
    if-ne p0, v11, :cond_13

    .line 295
    .line 296
    const-string p0, "FOLLOW_SYSTEM"

    .line 297
    .line 298
    return-object p0

    .line 299
    :cond_13
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 300
    .line 301
    .line 302
    return-object v7

    .line 303
    :cond_14
    const-string p0, "OFF"

    .line 304
    .line 305
    return-object p0

    .line 306
    :cond_15
    const-string p0, "ON"

    .line 307
    .line 308
    return-object p0

    .line 309
    :sswitch_d
    const-string p0, "message_view_recipients_font"

    .line 310
    .line 311
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result p0

    .line 315
    if-nez p0, :cond_16

    .line 316
    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :cond_16
    sget-object p0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 320
    .line 321
    iget p0, p0, Lcom/fsck/k9/FontSizes;->messageViewRecipients:I

    .line 322
    .line 323
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    return-object p0

    .line 328
    :sswitch_e
    const-string p0, "theme"

    .line 329
    .line 330
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result p0

    .line 334
    if-nez p0, :cond_17

    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :cond_17
    iget-object p0, v2, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appTheme:Lnet/thunderbird/core/preference/AppTheme;

    .line 339
    .line 340
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 341
    .line 342
    .line 343
    move-result p0

    .line 344
    if-eqz p0, :cond_1a

    .line 345
    .line 346
    if-eq p0, v12, :cond_19

    .line 347
    .line 348
    if-ne p0, v11, :cond_18

    .line 349
    .line 350
    const-string p0, "follow_system"

    .line 351
    .line 352
    return-object p0

    .line 353
    :cond_18
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 354
    .line 355
    .line 356
    return-object v7

    .line 357
    :cond_19
    return-object v10

    .line 358
    :cond_1a
    return-object v9

    .line 359
    :sswitch_f
    const-string p0, "message_list_preview_font"

    .line 360
    .line 361
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result p0

    .line 365
    if-nez p0, :cond_1b

    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :cond_1b
    sget-object p0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 370
    .line 371
    iget p0, p0, Lcom/fsck/k9/FontSizes;->messageListPreview:I

    .line 372
    .line 373
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    return-object p0

    .line 378
    :sswitch_10
    const-string p0, "message_list_subject_font"

    .line 379
    .line 380
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result p0

    .line 384
    if-nez p0, :cond_1c

    .line 385
    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :cond_1c
    sget-object p0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 389
    .line 390
    iget p0, p0, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    .line 391
    .line 392
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    return-object p0

    .line 397
    :sswitch_11
    const-string p0, "quiet_time_ends"

    .line 398
    .line 399
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result p0

    .line 403
    if-nez p0, :cond_1d

    .line 404
    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :cond_1d
    iget-object p0, v4, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeEnds:Ljava/lang/String;

    .line 408
    .line 409
    return-object p0

    .line 410
    :sswitch_12
    const-string p0, "post_mark_as_unread_navigation"

    .line 411
    .line 412
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result p0

    .line 416
    if-nez p0, :cond_1e

    .line 417
    .line 418
    goto/16 :goto_0

    .line 419
    .line 420
    :cond_1e
    iget-object p0, v3, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostMarkAsUnreadNavigation:Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

    .line 421
    .line 422
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    return-object p0

    .line 427
    :sswitch_13
    const-string p0, "message_view_subject_font"

    .line 428
    .line 429
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result p0

    .line 433
    if-nez p0, :cond_1f

    .line 434
    .line 435
    goto/16 :goto_0

    .line 436
    .line 437
    :cond_1f
    sget-object p0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 438
    .line 439
    iget p0, p0, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    .line 440
    .line 441
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p0

    .line 445
    return-object p0

    .line 446
    :sswitch_14
    const-string p0, "quiet_time_starts"

    .line 447
    .line 448
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result p0

    .line 452
    if-nez p0, :cond_20

    .line 453
    .line 454
    goto/16 :goto_0

    .line 455
    .line 456
    :cond_20
    iget-object p0, v4, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeStarts:Ljava/lang/String;

    .line 457
    .line 458
    return-object p0

    .line 459
    :sswitch_15
    const-string p0, "message_view_date_font"

    .line 460
    .line 461
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result p0

    .line 465
    if-nez p0, :cond_21

    .line 466
    .line 467
    goto/16 :goto_0

    .line 468
    .line 469
    :cond_21
    sget-object p0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 470
    .line 471
    iget p0, p0, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    .line 472
    .line 473
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object p0

    .line 477
    return-object p0

    .line 478
    :sswitch_16
    const-string p0, "message_list_density"

    .line 479
    .line 480
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result p0

    .line 484
    if-nez p0, :cond_22

    .line 485
    .line 486
    goto :goto_0

    .line 487
    :cond_22
    iget-object p0, v5, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->uiDensity:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 488
    .line 489
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object p0

    .line 493
    return-object p0

    .line 494
    :sswitch_17
    const-string p0, "swipe_action_right"

    .line 495
    .line 496
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result p0

    .line 500
    if-nez p0, :cond_23

    .line 501
    .line 502
    goto :goto_0

    .line 503
    :cond_23
    iget-object p0, v3, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->swipeActions:Lnet/thunderbird/core/common/action/SwipeActions;

    .line 504
    .line 505
    iget-object p0, p0, Lnet/thunderbird/core/common/action/SwipeActions;->rightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 506
    .line 507
    invoke-static {p0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->swipeActionToString(Lnet/thunderbird/core/common/action/SwipeAction;)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object p0

    .line 511
    return-object p0

    .line 512
    :sswitch_18
    const-string p0, "message_view_account_name_font"

    .line 513
    .line 514
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result p0

    .line 518
    if-nez p0, :cond_24

    .line 519
    .line 520
    goto :goto_0

    .line 521
    :cond_24
    sget-object p0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 522
    .line 523
    iget p0, p0, Lcom/fsck/k9/FontSizes;->messageViewAccountName:I

    .line 524
    .line 525
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object p0

    .line 529
    return-object p0

    .line 530
    :sswitch_19
    const-string v0, "language"

    .line 531
    .line 532
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result p1

    .line 536
    if-nez p1, :cond_25

    .line 537
    .line 538
    goto :goto_0

    .line 539
    :cond_25
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->appLanguageManager:Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 540
    .line 541
    iget-object p0, p0, Lcom/fsck/k9/ui/base/AppLanguageManager;->displayCoreSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

    .line 542
    .line 543
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object p0

    .line 547
    check-cast p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 548
    .line 549
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appLanguage:Ljava/lang/String;

    .line 550
    .line 551
    return-object p0

    .line 552
    :sswitch_1a
    const-string p0, "messagelist_preview_lines"

    .line 553
    .line 554
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    move-result p0

    .line 558
    if-nez p0, :cond_26

    .line 559
    .line 560
    goto :goto_0

    .line 561
    :cond_26
    iget p0, v5, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->previewLines:I

    .line 562
    .line 563
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object p0

    .line 567
    return-object p0

    .line 568
    :sswitch_1b
    const-string p0, "message_list_date_font"

    .line 569
    .line 570
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result p0

    .line 574
    if-nez p0, :cond_27

    .line 575
    .line 576
    goto :goto_0

    .line 577
    :cond_27
    sget-object p0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 578
    .line 579
    iget p0, p0, Lcom/fsck/k9/FontSizes;->messageListDate:I

    .line 580
    .line 581
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object p0

    .line 585
    return-object p0

    .line 586
    :sswitch_1c
    const-string p0, "message_view_sender_font"

    .line 587
    .line 588
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result p0

    .line 592
    if-nez p0, :cond_28

    .line 593
    .line 594
    :goto_0
    return-object p2

    .line 595
    :cond_28
    sget-object p0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 596
    .line 597
    iget p0, p0, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    .line 598
    .line 599
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object p0

    .line 603
    return-object p0

    .line 604
    nop

    .line 605
    :sswitch_data_0
    .sparse-switch
        -0x7818e149 -> :sswitch_1c
        -0x66bf10e9 -> :sswitch_1b
        -0x62039dd2 -> :sswitch_1a
        -0x602d6ca8 -> :sswitch_19
        -0x55def9f1 -> :sswitch_18
        -0x51512448 -> :sswitch_17
        -0x4d7fa481 -> :sswitch_16
        -0x411e23a2 -> :sswitch_15
        -0x34980788 -> :sswitch_14
        -0x2c9d3b5c -> :sswitch_13
        -0x292faad6 -> :sswitch_12
        -0x1dea5f21 -> :sswitch_11
        -0xed974b5 -> :sswitch_10
        -0x61b41d1 -> :sswitch_f
        0x69375c9 -> :sswitch_e
        0x1228ab92 -> :sswitch_d
        0x12b8556f -> :sswitch_c
        0x1623e2eb -> :sswitch_b
        0x23023de1 -> :sswitch_a
        0x36943f11 -> :sswitch_9
        0x42a373a9 -> :sswitch_8
        0x46cc6730 -> :sswitch_7
        0x470646d0 -> :sswitch_6
        0x489b346a -> :sswitch_5
        0x551aec21 -> :sswitch_4
        0x5b850ea4 -> :sswitch_3
        0x5b93e5a7 -> :sswitch_2
        0x668661dd -> :sswitch_1
        0x74355923 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 5
    .line 6
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 13
    .line 14
    iget-object v0, v0, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 15
    .line 16
    const-string v1, "confirm_actions"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, "spam"

    .line 23
    .line 24
    const-string v3, "delete"

    .line 25
    .line 26
    if-eqz v1, :cond_6

    .line 27
    .line 28
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 38
    .line 39
    iget-boolean p2, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDelete:Z

    .line 40
    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-boolean p2, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteStarred:Z

    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    const-string p2, "delete_starred"

    .line 51
    .line 52
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-boolean p2, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteFromNotification:Z

    .line 56
    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    const-string p2, "delete_notif"

    .line 60
    .line 61
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-boolean p2, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmSpam:Z

    .line 65
    .line 66
    if-eqz p2, :cond_3

    .line 67
    .line 68
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-boolean p2, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDiscardMessage:Z

    .line 72
    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    const-string p2, "discard"

    .line 76
    .line 77
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmMarkAllRead:Z

    .line 81
    .line 82
    if-eqz p0, :cond_5

    .line 83
    .line 84
    const-string p0, "mark_all_read"

    .line 85
    .line 86
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_5
    return-object p1

    .line 90
    :cond_6
    const-string p0, "messageview_visible_refile_actions"

    .line 91
    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_c

    .line 97
    .line 98
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 99
    .line 100
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-boolean p1, v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewDeleteActionVisible:Z

    .line 104
    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    :cond_7
    iget-boolean p1, v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewArchiveActionVisible:Z

    .line 111
    .line 112
    if-eqz p1, :cond_8

    .line 113
    .line 114
    const-string p1, "archive"

    .line 115
    .line 116
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_8
    iget-boolean p1, v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewMoveActionVisible:Z

    .line 120
    .line 121
    if-eqz p1, :cond_9

    .line 122
    .line 123
    const-string p1, "move"

    .line 124
    .line 125
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :cond_9
    iget-boolean p1, v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewCopyActionVisible:Z

    .line 129
    .line 130
    if-eqz p1, :cond_a

    .line 131
    .line 132
    const-string p1, "copy"

    .line 133
    .line 134
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_a
    iget-boolean p1, v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewSpamActionVisible:Z

    .line 138
    .line 139
    if-eqz p1, :cond_b

    .line 140
    .line 141
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :cond_b
    return-object p0

    .line 145
    :cond_c
    return-object p2
.end method

.method public final putBoolean(Ljava/lang/String;Z)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v14, 0x0

    .line 13
    iget-object v3, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    sparse-switch v2, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :sswitch_0
    const-string v2, "messageview_autofit_width"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_0
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 32
    .line 33
    move-object v15, v3

    .line 34
    check-cast v15, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 35
    .line 36
    invoke-virtual {v15}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, v1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 41
    .line 42
    move-object v3, v1

    .line 43
    iget-object v1, v2, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 44
    .line 45
    const/4 v12, 0x0

    .line 46
    const/16 v13, 0x7fb

    .line 47
    .line 48
    move-object v4, v2

    .line 49
    const/4 v2, 0x0

    .line 50
    move-object v5, v3

    .line 51
    const/4 v3, 0x0

    .line 52
    move-object v6, v5

    .line 53
    const/4 v5, 0x0

    .line 54
    move-object v7, v6

    .line 55
    const/4 v6, 0x0

    .line 56
    move-object v8, v7

    .line 57
    const/4 v7, 0x0

    .line 58
    move-object v9, v8

    .line 59
    const/4 v8, 0x0

    .line 60
    move-object v10, v9

    .line 61
    const/4 v9, 0x0

    .line 62
    move-object v11, v10

    .line 63
    const/4 v10, 0x0

    .line 64
    move-object/from16 v16, v11

    .line 65
    .line 66
    const/4 v11, 0x0

    .line 67
    move-object/from16 v17, v4

    .line 68
    .line 69
    move/from16 v4, p2

    .line 70
    .line 71
    invoke-static/range {v1 .. v13}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const/4 v6, 0x0

    .line 76
    const/16 v7, 0xb

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    const/4 v4, 0x0

    .line 80
    move-object/from16 v2, v17

    .line 81
    .line 82
    invoke-static/range {v2 .. v7}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const/4 v7, 0x0

    .line 87
    const/16 v8, 0x77

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    const/4 v5, 0x0

    .line 91
    move-object/from16 v1, v16

    .line 92
    .line 93
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v15, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :sswitch_1
    const-string v2, "show_compose_button"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_1

    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :cond_1
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 113
    .line 114
    move-object v9, v3

    .line 115
    check-cast v9, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 116
    .line 117
    invoke-virtual {v9}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    iget-object v11, v10, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 122
    .line 123
    iget-object v1, v11, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 124
    .line 125
    const/4 v7, 0x0

    .line 126
    const/16 v8, 0x2f

    .line 127
    .line 128
    const/4 v2, 0x0

    .line 129
    const/4 v3, 0x0

    .line 130
    const/4 v4, 0x0

    .line 131
    const/4 v5, 0x0

    .line 132
    move/from16 v6, p2

    .line 133
    .line 134
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->copy$default(Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;ZZZZZZI)Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    const/4 v5, 0x0

    .line 139
    const/16 v6, 0xd

    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    const/4 v4, 0x0

    .line 143
    move-object v1, v11

    .line 144
    invoke-static/range {v1 .. v6}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    const/4 v7, 0x0

    .line 149
    const/16 v8, 0x77

    .line 150
    .line 151
    const/4 v3, 0x0

    .line 152
    const/4 v6, 0x0

    .line 153
    move-object v1, v10

    .line 154
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v9, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_1

    .line 162
    .line 163
    :sswitch_2
    move/from16 v2, p2

    .line 164
    .line 165
    const-string v5, "sensitive_logging"

    .line 166
    .line 167
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_2

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_2
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 176
    .line 177
    check-cast v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    iget-object v1, v4, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 184
    .line 185
    const/4 v5, 0x3

    .line 186
    invoke-static {v1, v14, v14, v2, v5}, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->copy$default(Lnet/thunderbird/core/preference/debugging/DebuggingSettings;ZZZI)Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    const/4 v10, 0x0

    .line 191
    const/16 v11, 0x5f

    .line 192
    .line 193
    const/4 v5, 0x0

    .line 194
    const/4 v6, 0x0

    .line 195
    const/4 v7, 0x0

    .line 196
    const/4 v8, 0x0

    .line 197
    invoke-static/range {v4 .. v11}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v3, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :sswitch_3
    move/from16 v2, p2

    .line 207
    .line 208
    const-string v5, "messagelist_show_contact_picture"

    .line 209
    .line 210
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-nez v1, :cond_3

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_3
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 219
    .line 220
    move-object v13, v3

    .line 221
    check-cast v13, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 222
    .line 223
    invoke-virtual {v13}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 224
    .line 225
    .line 226
    move-result-object v15

    .line 227
    iget-object v1, v15, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 228
    .line 229
    iget-object v3, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 230
    .line 231
    move-object v4, v1

    .line 232
    iget-object v1, v3, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 233
    .line 234
    const/4 v11, 0x0

    .line 235
    const/16 v12, 0x3fb

    .line 236
    .line 237
    const/4 v2, 0x0

    .line 238
    move-object/from16 v16, v3

    .line 239
    .line 240
    const/4 v3, 0x0

    .line 241
    const/4 v5, 0x0

    .line 242
    const/4 v6, 0x0

    .line 243
    const/4 v7, 0x0

    .line 244
    const/4 v8, 0x0

    .line 245
    const/4 v9, 0x0

    .line 246
    const/4 v10, 0x0

    .line 247
    move-object/from16 v29, v4

    .line 248
    .line 249
    move/from16 v4, p2

    .line 250
    .line 251
    invoke-static/range {v1 .. v12}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZZILnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;ILnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;I)Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 252
    .line 253
    .line 254
    move-result-object v22

    .line 255
    const/16 v27, 0x0

    .line 256
    .line 257
    const/16 v28, 0x7df

    .line 258
    .line 259
    const/16 v17, 0x0

    .line 260
    .line 261
    const/16 v18, 0x0

    .line 262
    .line 263
    const/16 v19, 0x0

    .line 264
    .line 265
    const/16 v20, 0x0

    .line 266
    .line 267
    const/16 v21, 0x0

    .line 268
    .line 269
    const/16 v23, 0x0

    .line 270
    .line 271
    const/16 v24, 0x0

    .line 272
    .line 273
    const/16 v25, 0x0

    .line 274
    .line 275
    const/16 v26, 0x0

    .line 276
    .line 277
    invoke-static/range {v16 .. v28}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    const/4 v5, 0x0

    .line 282
    const/16 v6, 0xb

    .line 283
    .line 284
    const/4 v2, 0x0

    .line 285
    const/4 v3, 0x0

    .line 286
    move-object/from16 v1, v29

    .line 287
    .line 288
    invoke-static/range {v1 .. v6}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    const/4 v7, 0x0

    .line 293
    const/16 v8, 0x77

    .line 294
    .line 295
    const/4 v6, 0x0

    .line 296
    move-object v1, v15

    .line 297
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v13, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :sswitch_4
    const-string/jumbo v2, "volume_navigation"

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-nez v1, :cond_4

    .line 314
    .line 315
    goto/16 :goto_0

    .line 316
    .line 317
    :cond_4
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 318
    .line 319
    move-object v13, v3

    .line 320
    check-cast v13, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 321
    .line 322
    invoke-virtual {v13}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 323
    .line 324
    .line 325
    move-result-object v15

    .line 326
    iget-object v1, v15, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 327
    .line 328
    const/4 v11, 0x0

    .line 329
    const/16 v12, 0x3fe

    .line 330
    .line 331
    const/4 v3, 0x0

    .line 332
    const/4 v4, 0x0

    .line 333
    const/4 v5, 0x0

    .line 334
    const/4 v6, 0x0

    .line 335
    const/4 v7, 0x0

    .line 336
    const/4 v8, 0x0

    .line 337
    const/4 v9, 0x0

    .line 338
    const/4 v10, 0x0

    .line 339
    move/from16 v2, p2

    .line 340
    .line 341
    invoke-static/range {v1 .. v12}, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->copy$default(Lnet/thunderbird/core/preference/interaction/InteractionSettings;ZLjava/lang/String;Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;Lnet/thunderbird/core/common/action/SwipeActions;ZZZZZZI)Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 342
    .line 343
    .line 344
    move-result-object v7

    .line 345
    const/16 v8, 0x3f

    .line 346
    .line 347
    const/4 v2, 0x0

    .line 348
    const/4 v6, 0x0

    .line 349
    move-object v1, v15

    .line 350
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {v13, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_1

    .line 358
    .line 359
    :sswitch_5
    const-string v2, "fixed_message_view_theme"

    .line 360
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    if-nez v1, :cond_5

    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :cond_5
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 370
    .line 371
    move-object v9, v3

    .line 372
    check-cast v9, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 373
    .line 374
    invoke-virtual {v9}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 375
    .line 376
    .line 377
    move-result-object v10

    .line 378
    iget-object v11, v10, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 379
    .line 380
    iget-object v1, v11, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 381
    .line 382
    const/4 v7, 0x0

    .line 383
    const/16 v8, 0x3e

    .line 384
    .line 385
    const/4 v3, 0x0

    .line 386
    const/4 v4, 0x0

    .line 387
    const/4 v5, 0x0

    .line 388
    const/4 v6, 0x0

    .line 389
    move/from16 v2, p2

    .line 390
    .line 391
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->copy$default(Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;ZLnet/thunderbird/core/preference/AppTheme;Lnet/thunderbird/core/preference/SubTheme;Lnet/thunderbird/core/preference/SubTheme;Ljava/lang/String;Lnet/thunderbird/core/preference/SplitViewMode;I)Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    const/16 v6, 0xe

    .line 396
    .line 397
    move-object v1, v11

    .line 398
    invoke-static/range {v1 .. v6}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    const/16 v8, 0x77

    .line 403
    .line 404
    const/4 v2, 0x0

    .line 405
    const/4 v6, 0x0

    .line 406
    move-object v1, v10

    .line 407
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-virtual {v9, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_1

    .line 415
    .line 416
    :sswitch_6
    const-string v2, "enable_telemetry"

    .line 417
    .line 418
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    if-nez v1, :cond_6

    .line 423
    .line 424
    goto/16 :goto_0

    .line 425
    .line 426
    :cond_6
    sput-boolean p2, Lcom/fsck/k9/K9;->isTelemetryEnabled:Z

    .line 427
    .line 428
    goto/16 :goto_1

    .line 429
    .line 430
    :sswitch_7
    const-string v2, "messagelist_sender_above_subject"

    .line 431
    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    if-nez v1, :cond_7

    .line 437
    .line 438
    goto/16 :goto_0

    .line 439
    .line 440
    :cond_7
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 441
    .line 442
    move-object v9, v3

    .line 443
    check-cast v9, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 444
    .line 445
    invoke-virtual {v9}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 446
    .line 447
    .line 448
    move-result-object v10

    .line 449
    iget-object v11, v10, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 450
    .line 451
    iget-object v1, v11, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 452
    .line 453
    const/4 v7, 0x0

    .line 454
    const/16 v8, 0x37

    .line 455
    .line 456
    const/4 v2, 0x0

    .line 457
    const/4 v3, 0x0

    .line 458
    const/4 v4, 0x0

    .line 459
    const/4 v6, 0x0

    .line 460
    move/from16 v5, p2

    .line 461
    .line 462
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->copy$default(Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;ZZZZZZI)Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    const/4 v5, 0x0

    .line 467
    const/16 v6, 0xd

    .line 468
    .line 469
    const/4 v2, 0x0

    .line 470
    const/4 v4, 0x0

    .line 471
    move-object v1, v11

    .line 472
    invoke-static/range {v1 .. v6}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    const/4 v7, 0x0

    .line 477
    const/16 v8, 0x77

    .line 478
    .line 479
    const/4 v3, 0x0

    .line 480
    const/4 v6, 0x0

    .line 481
    move-object v1, v10

    .line 482
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-virtual {v9, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    goto/16 :goto_1

    .line 490
    .line 491
    :sswitch_8
    const-string v2, "show_unified_inbox"

    .line 492
    .line 493
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    if-nez v1, :cond_8

    .line 498
    .line 499
    goto/16 :goto_0

    .line 500
    .line 501
    :cond_8
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 502
    .line 503
    move-object v9, v3

    .line 504
    check-cast v9, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 505
    .line 506
    invoke-virtual {v9}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 507
    .line 508
    .line 509
    move-result-object v10

    .line 510
    iget-object v11, v10, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 511
    .line 512
    iget-object v1, v11, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 513
    .line 514
    const/4 v7, 0x0

    .line 515
    const/16 v8, 0x3e

    .line 516
    .line 517
    const/4 v3, 0x0

    .line 518
    const/4 v4, 0x0

    .line 519
    const/4 v5, 0x0

    .line 520
    const/4 v6, 0x0

    .line 521
    move/from16 v2, p2

    .line 522
    .line 523
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->copy$default(Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;ZZZZZZI)Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    const/4 v5, 0x0

    .line 528
    const/16 v6, 0xd

    .line 529
    .line 530
    const/4 v2, 0x0

    .line 531
    const/4 v4, 0x0

    .line 532
    move-object v1, v11

    .line 533
    invoke-static/range {v1 .. v6}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 534
    .line 535
    .line 536
    move-result-object v4

    .line 537
    const/4 v7, 0x0

    .line 538
    const/16 v8, 0x77

    .line 539
    .line 540
    const/4 v3, 0x0

    .line 541
    const/4 v6, 0x0

    .line 542
    move-object v1, v10

    .line 543
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-virtual {v9, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 548
    .line 549
    .line 550
    goto/16 :goto_1

    .line 551
    .line 552
    :sswitch_9
    const-string v2, "notification_summary_delete"

    .line 553
    .line 554
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    if-nez v1, :cond_9

    .line 559
    .line 560
    goto/16 :goto_0

    .line 561
    .line 562
    :cond_9
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 563
    .line 564
    move-object v12, v3

    .line 565
    check-cast v12, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 566
    .line 567
    invoke-virtual {v12}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 568
    .line 569
    .line 570
    move-result-object v13

    .line 571
    iget-object v1, v13, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 572
    .line 573
    const/4 v10, 0x0

    .line 574
    const/16 v11, 0x3bf

    .line 575
    .line 576
    const/4 v2, 0x0

    .line 577
    const/4 v3, 0x0

    .line 578
    const/4 v4, 0x0

    .line 579
    const/4 v5, 0x0

    .line 580
    const/4 v6, 0x0

    .line 581
    const/4 v7, 0x0

    .line 582
    const/4 v9, 0x0

    .line 583
    move/from16 v8, p2

    .line 584
    .line 585
    invoke-static/range {v1 .. v11}, Lnet/thunderbird/core/preference/notification/NotificationPreference;->copy$default(Lnet/thunderbird/core/preference/notification/NotificationPreference;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;IZZLnet/thunderbird/core/preference/LockScreenNotificationVisibility;I)Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    const/4 v7, 0x0

    .line 590
    const/16 v8, 0x7b

    .line 591
    .line 592
    const/4 v2, 0x0

    .line 593
    const/4 v5, 0x0

    .line 594
    move-object v1, v13

    .line 595
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    invoke-virtual {v12, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 600
    .line 601
    .line 602
    goto/16 :goto_1

    .line 603
    .line 604
    :sswitch_a
    const-string v2, "threaded_view"

    .line 605
    .line 606
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    move-result v1

    .line 610
    if-nez v1, :cond_a

    .line 611
    .line 612
    goto/16 :goto_0

    .line 613
    .line 614
    :cond_a
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 615
    .line 616
    move-object v9, v3

    .line 617
    check-cast v9, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 618
    .line 619
    invoke-virtual {v9}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 620
    .line 621
    .line 622
    move-result-object v10

    .line 623
    iget-object v11, v10, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 624
    .line 625
    iget-object v1, v11, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 626
    .line 627
    const/4 v6, 0x0

    .line 628
    const/16 v8, 0x1f

    .line 629
    .line 630
    const/4 v2, 0x0

    .line 631
    const/4 v3, 0x0

    .line 632
    const/4 v4, 0x0

    .line 633
    const/4 v5, 0x0

    .line 634
    move/from16 v7, p2

    .line 635
    .line 636
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->copy$default(Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;ZZZZZZI)Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    const/4 v5, 0x0

    .line 641
    const/16 v6, 0xd

    .line 642
    .line 643
    const/4 v2, 0x0

    .line 644
    const/4 v4, 0x0

    .line 645
    move-object v1, v11

    .line 646
    invoke-static/range {v1 .. v6}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 647
    .line 648
    .line 649
    move-result-object v4

    .line 650
    const/4 v7, 0x0

    .line 651
    const/16 v8, 0x77

    .line 652
    .line 653
    const/4 v3, 0x0

    .line 654
    const/4 v6, 0x0

    .line 655
    move-object v1, v10

    .line 656
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-virtual {v9, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 661
    .line 662
    .line 663
    goto/16 :goto_1

    .line 664
    .line 665
    :sswitch_b
    move/from16 v2, p2

    .line 666
    .line 667
    const-string v5, "debug_logging"

    .line 668
    .line 669
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-nez v1, :cond_b

    .line 674
    .line 675
    goto/16 :goto_0

    .line 676
    .line 677
    :cond_b
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 678
    .line 679
    check-cast v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 680
    .line 681
    invoke-virtual {v3}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 682
    .line 683
    .line 684
    move-result-object v4

    .line 685
    iget-object v1, v4, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 686
    .line 687
    const/4 v5, 0x6

    .line 688
    invoke-static {v1, v2, v14, v14, v5}, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->copy$default(Lnet/thunderbird/core/preference/debugging/DebuggingSettings;ZZZI)Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 689
    .line 690
    .line 691
    move-result-object v9

    .line 692
    const/4 v10, 0x0

    .line 693
    const/16 v11, 0x5f

    .line 694
    .line 695
    const/4 v5, 0x0

    .line 696
    const/4 v6, 0x0

    .line 697
    const/4 v7, 0x0

    .line 698
    const/4 v8, 0x0

    .line 699
    invoke-static/range {v4 .. v11}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    invoke-virtual {v3, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 704
    .line 705
    .line 706
    goto/16 :goto_1

    .line 707
    .line 708
    :sswitch_c
    move/from16 v2, p2

    .line 709
    .line 710
    const-string v5, "notification_show_contact_picture"

    .line 711
    .line 712
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result v1

    .line 716
    if-nez v1, :cond_c

    .line 717
    .line 718
    goto/16 :goto_0

    .line 719
    .line 720
    :cond_c
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 721
    .line 722
    move-object v12, v3

    .line 723
    check-cast v12, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 724
    .line 725
    invoke-virtual {v12}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 726
    .line 727
    .line 728
    move-result-object v13

    .line 729
    iget-object v1, v13, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 730
    .line 731
    const/4 v10, 0x0

    .line 732
    const/16 v11, 0x37f

    .line 733
    .line 734
    const/4 v2, 0x0

    .line 735
    const/4 v3, 0x0

    .line 736
    const/4 v4, 0x0

    .line 737
    const/4 v5, 0x0

    .line 738
    const/4 v6, 0x0

    .line 739
    const/4 v7, 0x0

    .line 740
    const/4 v8, 0x0

    .line 741
    move/from16 v9, p2

    .line 742
    .line 743
    invoke-static/range {v1 .. v11}, Lnet/thunderbird/core/preference/notification/NotificationPreference;->copy$default(Lnet/thunderbird/core/preference/notification/NotificationPreference;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;IZZLnet/thunderbird/core/preference/LockScreenNotificationVisibility;I)Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 744
    .line 745
    .line 746
    move-result-object v3

    .line 747
    const/4 v7, 0x0

    .line 748
    const/16 v8, 0x7b

    .line 749
    .line 750
    const/4 v2, 0x0

    .line 751
    const/4 v5, 0x0

    .line 752
    move-object v1, v13

    .line 753
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    invoke-virtual {v12, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 758
    .line 759
    .line 760
    goto/16 :goto_1

    .line 761
    .line 762
    :sswitch_d
    move/from16 v2, p2

    .line 763
    .line 764
    const-string v5, "sync_debug_logging"

    .line 765
    .line 766
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 767
    .line 768
    .line 769
    move-result v1

    .line 770
    if-nez v1, :cond_d

    .line 771
    .line 772
    goto/16 :goto_0

    .line 773
    .line 774
    :cond_d
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 775
    .line 776
    check-cast v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 777
    .line 778
    invoke-virtual {v3}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 779
    .line 780
    .line 781
    move-result-object v4

    .line 782
    iget-object v1, v4, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 783
    .line 784
    const/4 v5, 0x5

    .line 785
    invoke-static {v1, v14, v2, v14, v5}, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->copy$default(Lnet/thunderbird/core/preference/debugging/DebuggingSettings;ZZZI)Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 786
    .line 787
    .line 788
    move-result-object v9

    .line 789
    const/4 v10, 0x0

    .line 790
    const/16 v11, 0x5f

    .line 791
    .line 792
    const/4 v5, 0x0

    .line 793
    const/4 v6, 0x0

    .line 794
    const/4 v7, 0x0

    .line 795
    const/4 v8, 0x0

    .line 796
    invoke-static/range {v4 .. v11}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    invoke-virtual {v3, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 801
    .line 802
    .line 803
    goto/16 :goto_1

    .line 804
    .line 805
    :sswitch_e
    move/from16 v2, p2

    .line 806
    .line 807
    const-string v5, "messagelist_colorize_missing_contact_pictures"

    .line 808
    .line 809
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    move-result v1

    .line 813
    if-nez v1, :cond_e

    .line 814
    .line 815
    goto/16 :goto_0

    .line 816
    .line 817
    :cond_e
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 818
    .line 819
    move-object v13, v3

    .line 820
    check-cast v13, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 821
    .line 822
    invoke-virtual {v13}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 823
    .line 824
    .line 825
    move-result-object v15

    .line 826
    iget-object v1, v15, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 827
    .line 828
    iget-object v3, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 829
    .line 830
    move-object v4, v1

    .line 831
    iget-object v1, v3, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 832
    .line 833
    const/4 v11, 0x0

    .line 834
    const/16 v12, 0x3ef

    .line 835
    .line 836
    const/4 v2, 0x0

    .line 837
    move-object/from16 v16, v3

    .line 838
    .line 839
    const/4 v3, 0x0

    .line 840
    move-object v5, v4

    .line 841
    const/4 v4, 0x0

    .line 842
    move-object v6, v5

    .line 843
    const/4 v5, 0x0

    .line 844
    const/4 v7, 0x0

    .line 845
    const/4 v8, 0x0

    .line 846
    const/4 v9, 0x0

    .line 847
    const/4 v10, 0x0

    .line 848
    move-object/from16 v29, v6

    .line 849
    .line 850
    move/from16 v6, p2

    .line 851
    .line 852
    invoke-static/range {v1 .. v12}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZZILnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;ILnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;I)Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 853
    .line 854
    .line 855
    move-result-object v22

    .line 856
    const/16 v27, 0x0

    .line 857
    .line 858
    const/16 v28, 0x7df

    .line 859
    .line 860
    const/16 v17, 0x0

    .line 861
    .line 862
    const/16 v18, 0x0

    .line 863
    .line 864
    const/16 v19, 0x0

    .line 865
    .line 866
    const/16 v20, 0x0

    .line 867
    .line 868
    const/16 v21, 0x0

    .line 869
    .line 870
    const/16 v23, 0x0

    .line 871
    .line 872
    const/16 v24, 0x0

    .line 873
    .line 874
    const/16 v25, 0x0

    .line 875
    .line 876
    const/16 v26, 0x0

    .line 877
    .line 878
    invoke-static/range {v16 .. v28}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 879
    .line 880
    .line 881
    move-result-object v4

    .line 882
    const/4 v5, 0x0

    .line 883
    const/16 v6, 0xb

    .line 884
    .line 885
    const/4 v2, 0x0

    .line 886
    const/4 v3, 0x0

    .line 887
    move-object/from16 v1, v29

    .line 888
    .line 889
    invoke-static/range {v1 .. v6}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 890
    .line 891
    .line 892
    move-result-object v4

    .line 893
    const/4 v7, 0x0

    .line 894
    const/16 v8, 0x77

    .line 895
    .line 896
    const/4 v6, 0x0

    .line 897
    move-object v1, v15

    .line 898
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    invoke-virtual {v13, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 903
    .line 904
    .line 905
    goto/16 :goto_1

    .line 906
    .line 907
    :sswitch_f
    move/from16 v2, p2

    .line 908
    .line 909
    const-string v5, "privacy_hide_useragent"

    .line 910
    .line 911
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    move-result v1

    .line 915
    if-nez v1, :cond_f

    .line 916
    .line 917
    goto/16 :goto_0

    .line 918
    .line 919
    :cond_f
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 920
    .line 921
    check-cast v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 922
    .line 923
    invoke-virtual {v3}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 924
    .line 925
    .line 926
    move-result-object v4

    .line 927
    iget-object v1, v4, Lnet/thunderbird/core/preference/GeneralSettings;->privacy:Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 928
    .line 929
    iget-boolean v5, v1, Lnet/thunderbird/core/preference/privacy/PrivacySettings;->isHideTimeZone:Z

    .line 930
    .line 931
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 932
    .line 933
    .line 934
    new-instance v8, Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 935
    .line 936
    invoke-direct {v8, v5, v2}, Lnet/thunderbird/core/preference/privacy/PrivacySettings;-><init>(ZZ)V

    .line 937
    .line 938
    .line 939
    const/4 v10, 0x0

    .line 940
    const/16 v11, 0x6f

    .line 941
    .line 942
    const/4 v5, 0x0

    .line 943
    const/4 v6, 0x0

    .line 944
    const/4 v7, 0x0

    .line 945
    const/4 v9, 0x0

    .line 946
    invoke-static/range {v4 .. v11}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    invoke-virtual {v3, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 951
    .line 952
    .line 953
    goto/16 :goto_1

    .line 954
    .line 955
    :sswitch_10
    move/from16 v2, p2

    .line 956
    .line 957
    const-string v5, "messagelist_change_contact_name_color"

    .line 958
    .line 959
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 960
    .line 961
    .line 962
    move-result v1

    .line 963
    if-nez v1, :cond_10

    .line 964
    .line 965
    goto/16 :goto_0

    .line 966
    .line 967
    :cond_10
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 968
    .line 969
    move-object v13, v3

    .line 970
    check-cast v13, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 971
    .line 972
    invoke-virtual {v13}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 973
    .line 974
    .line 975
    move-result-object v15

    .line 976
    iget-object v1, v15, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 977
    .line 978
    iget-object v3, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 979
    .line 980
    move-object v4, v1

    .line 981
    iget-object v1, v3, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 982
    .line 983
    const/4 v11, 0x0

    .line 984
    const/16 v12, 0x3f7

    .line 985
    .line 986
    const/4 v2, 0x0

    .line 987
    move-object/from16 v16, v3

    .line 988
    .line 989
    const/4 v3, 0x0

    .line 990
    move-object v5, v4

    .line 991
    const/4 v4, 0x0

    .line 992
    const/4 v6, 0x0

    .line 993
    const/4 v7, 0x0

    .line 994
    const/4 v8, 0x0

    .line 995
    const/4 v9, 0x0

    .line 996
    const/4 v10, 0x0

    .line 997
    move-object/from16 v29, v5

    .line 998
    .line 999
    move/from16 v5, p2

    .line 1000
    .line 1001
    invoke-static/range {v1 .. v12}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZZILnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;ILnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;I)Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v22

    .line 1005
    const/16 v27, 0x0

    .line 1006
    .line 1007
    const/16 v28, 0x7df

    .line 1008
    .line 1009
    const/16 v17, 0x0

    .line 1010
    .line 1011
    const/16 v18, 0x0

    .line 1012
    .line 1013
    const/16 v19, 0x0

    .line 1014
    .line 1015
    const/16 v20, 0x0

    .line 1016
    .line 1017
    const/16 v21, 0x0

    .line 1018
    .line 1019
    const/16 v23, 0x0

    .line 1020
    .line 1021
    const/16 v24, 0x0

    .line 1022
    .line 1023
    const/16 v25, 0x0

    .line 1024
    .line 1025
    const/16 v26, 0x0

    .line 1026
    .line 1027
    invoke-static/range {v16 .. v28}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v4

    .line 1031
    const/4 v5, 0x0

    .line 1032
    const/16 v6, 0xb

    .line 1033
    .line 1034
    const/4 v2, 0x0

    .line 1035
    const/4 v3, 0x0

    .line 1036
    move-object/from16 v1, v29

    .line 1037
    .line 1038
    invoke-static/range {v1 .. v6}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v4

    .line 1042
    const/4 v7, 0x0

    .line 1043
    const/16 v8, 0x77

    .line 1044
    .line 1045
    const/4 v6, 0x0

    .line 1046
    move-object v1, v15

    .line 1047
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v1

    .line 1051
    invoke-virtual {v13, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 1052
    .line 1053
    .line 1054
    goto/16 :goto_1

    .line 1055
    .line 1056
    :sswitch_11
    const-string v2, "messageview_fixedwidth_font"

    .line 1057
    .line 1058
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1059
    .line 1060
    .line 1061
    move-result v1

    .line 1062
    if-nez v1, :cond_11

    .line 1063
    .line 1064
    goto/16 :goto_0

    .line 1065
    .line 1066
    :cond_11
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1067
    .line 1068
    move-object v15, v3

    .line 1069
    check-cast v15, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1070
    .line 1071
    invoke-virtual {v15}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v1

    .line 1075
    iget-object v2, v1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1076
    .line 1077
    move-object v3, v1

    .line 1078
    iget-object v1, v2, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1079
    .line 1080
    const/4 v12, 0x0

    .line 1081
    const/16 v13, 0x7fd

    .line 1082
    .line 1083
    move-object v4, v2

    .line 1084
    const/4 v2, 0x0

    .line 1085
    move-object v5, v4

    .line 1086
    const/4 v4, 0x0

    .line 1087
    move-object v6, v5

    .line 1088
    const/4 v5, 0x0

    .line 1089
    move-object v7, v6

    .line 1090
    const/4 v6, 0x0

    .line 1091
    move-object v8, v7

    .line 1092
    const/4 v7, 0x0

    .line 1093
    move-object v9, v8

    .line 1094
    const/4 v8, 0x0

    .line 1095
    move-object v10, v9

    .line 1096
    const/4 v9, 0x0

    .line 1097
    move-object v11, v10

    .line 1098
    const/4 v10, 0x0

    .line 1099
    move-object/from16 v16, v11

    .line 1100
    .line 1101
    const/4 v11, 0x0

    .line 1102
    move-object/from16 v17, v16

    .line 1103
    .line 1104
    move-object/from16 v16, v3

    .line 1105
    .line 1106
    move/from16 v3, p2

    .line 1107
    .line 1108
    invoke-static/range {v1 .. v13}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v5

    .line 1112
    const/4 v6, 0x0

    .line 1113
    const/16 v7, 0xb

    .line 1114
    .line 1115
    const/4 v3, 0x0

    .line 1116
    const/4 v4, 0x0

    .line 1117
    move-object/from16 v2, v17

    .line 1118
    .line 1119
    invoke-static/range {v2 .. v7}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v4

    .line 1123
    const/4 v7, 0x0

    .line 1124
    const/16 v8, 0x77

    .line 1125
    .line 1126
    const/4 v2, 0x0

    .line 1127
    const/4 v5, 0x0

    .line 1128
    move-object/from16 v1, v16

    .line 1129
    .line 1130
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v1

    .line 1134
    invoke-virtual {v15, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 1135
    .line 1136
    .line 1137
    goto/16 :goto_1

    .line 1138
    .line 1139
    :sswitch_12
    move/from16 v2, p2

    .line 1140
    .line 1141
    const-string v5, "privacy_hide_timezone"

    .line 1142
    .line 1143
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result v1

    .line 1147
    if-nez v1, :cond_12

    .line 1148
    .line 1149
    goto/16 :goto_0

    .line 1150
    .line 1151
    :cond_12
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1152
    .line 1153
    check-cast v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1154
    .line 1155
    invoke-virtual {v3}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v4

    .line 1159
    iget-object v1, v4, Lnet/thunderbird/core/preference/GeneralSettings;->privacy:Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 1160
    .line 1161
    iget-boolean v5, v1, Lnet/thunderbird/core/preference/privacy/PrivacySettings;->isHideUserAgent:Z

    .line 1162
    .line 1163
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1164
    .line 1165
    .line 1166
    new-instance v8, Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 1167
    .line 1168
    invoke-direct {v8, v2, v5}, Lnet/thunderbird/core/preference/privacy/PrivacySettings;-><init>(ZZ)V

    .line 1169
    .line 1170
    .line 1171
    const/4 v10, 0x0

    .line 1172
    const/16 v11, 0x6f

    .line 1173
    .line 1174
    const/4 v5, 0x0

    .line 1175
    const/4 v6, 0x0

    .line 1176
    const/4 v7, 0x0

    .line 1177
    const/4 v9, 0x0

    .line 1178
    invoke-static/range {v4 .. v11}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v1

    .line 1182
    invoke-virtual {v3, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 1183
    .line 1184
    .line 1185
    goto/16 :goto_1

    .line 1186
    .line 1187
    :sswitch_13
    move/from16 v2, p2

    .line 1188
    .line 1189
    const-string v5, "messagelist_background_as_unread_indicator"

    .line 1190
    .line 1191
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1192
    .line 1193
    .line 1194
    move-result v1

    .line 1195
    if-nez v1, :cond_13

    .line 1196
    .line 1197
    goto/16 :goto_0

    .line 1198
    .line 1199
    :cond_13
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1200
    .line 1201
    move-object v13, v3

    .line 1202
    check-cast v13, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1203
    .line 1204
    invoke-virtual {v13}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v15

    .line 1208
    iget-object v1, v15, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1209
    .line 1210
    iget-object v3, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1211
    .line 1212
    move-object v4, v1

    .line 1213
    iget-object v1, v3, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 1214
    .line 1215
    const/4 v11, 0x0

    .line 1216
    const/16 v12, 0x3df

    .line 1217
    .line 1218
    const/4 v2, 0x0

    .line 1219
    move-object/from16 v16, v3

    .line 1220
    .line 1221
    const/4 v3, 0x0

    .line 1222
    move-object v5, v4

    .line 1223
    const/4 v4, 0x0

    .line 1224
    move-object v6, v5

    .line 1225
    const/4 v5, 0x0

    .line 1226
    move-object v7, v6

    .line 1227
    const/4 v6, 0x0

    .line 1228
    const/4 v8, 0x0

    .line 1229
    const/4 v9, 0x0

    .line 1230
    const/4 v10, 0x0

    .line 1231
    move-object/from16 v29, v7

    .line 1232
    .line 1233
    move/from16 v7, p2

    .line 1234
    .line 1235
    invoke-static/range {v1 .. v12}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZZILnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;ILnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;I)Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v22

    .line 1239
    const/16 v27, 0x0

    .line 1240
    .line 1241
    const/16 v28, 0x7df

    .line 1242
    .line 1243
    const/16 v17, 0x0

    .line 1244
    .line 1245
    const/16 v18, 0x0

    .line 1246
    .line 1247
    const/16 v19, 0x0

    .line 1248
    .line 1249
    const/16 v20, 0x0

    .line 1250
    .line 1251
    const/16 v21, 0x0

    .line 1252
    .line 1253
    const/16 v23, 0x0

    .line 1254
    .line 1255
    const/16 v24, 0x0

    .line 1256
    .line 1257
    const/16 v25, 0x0

    .line 1258
    .line 1259
    const/16 v26, 0x0

    .line 1260
    .line 1261
    invoke-static/range {v16 .. v28}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v4

    .line 1265
    const/4 v5, 0x0

    .line 1266
    const/16 v6, 0xb

    .line 1267
    .line 1268
    const/4 v2, 0x0

    .line 1269
    const/4 v3, 0x0

    .line 1270
    move-object/from16 v1, v29

    .line 1271
    .line 1272
    invoke-static/range {v1 .. v6}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v4

    .line 1276
    const/4 v7, 0x0

    .line 1277
    const/16 v8, 0x77

    .line 1278
    .line 1279
    const/4 v6, 0x0

    .line 1280
    move-object v1, v15

    .line 1281
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v1

    .line 1285
    invoke-virtual {v13, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 1286
    .line 1287
    .line 1288
    goto/16 :goto_1

    .line 1289
    .line 1290
    :sswitch_14
    const-string v2, "disable_notifications_during_quiet_time"

    .line 1291
    .line 1292
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1293
    .line 1294
    .line 1295
    move-result v1

    .line 1296
    if-nez v1, :cond_14

    .line 1297
    .line 1298
    goto/16 :goto_0

    .line 1299
    .line 1300
    :cond_14
    xor-int/lit8 v19, p2, 0x1

    .line 1301
    .line 1302
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1303
    .line 1304
    check-cast v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1305
    .line 1306
    invoke-virtual {v3}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v4

    .line 1310
    iget-object v15, v4, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 1311
    .line 1312
    const/16 v24, 0x0

    .line 1313
    .line 1314
    const/16 v25, 0x3f7

    .line 1315
    .line 1316
    const/16 v16, 0x0

    .line 1317
    .line 1318
    const/16 v17, 0x0

    .line 1319
    .line 1320
    const/16 v18, 0x0

    .line 1321
    .line 1322
    const/16 v20, 0x0

    .line 1323
    .line 1324
    const/16 v21, 0x0

    .line 1325
    .line 1326
    const/16 v22, 0x0

    .line 1327
    .line 1328
    const/16 v23, 0x0

    .line 1329
    .line 1330
    invoke-static/range {v15 .. v25}, Lnet/thunderbird/core/preference/notification/NotificationPreference;->copy$default(Lnet/thunderbird/core/preference/notification/NotificationPreference;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;IZZLnet/thunderbird/core/preference/LockScreenNotificationVisibility;I)Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v6

    .line 1334
    const/4 v10, 0x0

    .line 1335
    const/16 v11, 0x7b

    .line 1336
    .line 1337
    const/4 v5, 0x0

    .line 1338
    const/4 v7, 0x0

    .line 1339
    const/4 v8, 0x0

    .line 1340
    const/4 v9, 0x0

    .line 1341
    invoke-static/range {v4 .. v11}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v1

    .line 1345
    invoke-virtual {v3, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 1346
    .line 1347
    .line 1348
    goto/16 :goto_1

    .line 1349
    .line 1350
    :sswitch_15
    const-string v2, "quiet_time_enabled"

    .line 1351
    .line 1352
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1353
    .line 1354
    .line 1355
    move-result v1

    .line 1356
    if-nez v1, :cond_15

    .line 1357
    .line 1358
    goto/16 :goto_0

    .line 1359
    .line 1360
    :cond_15
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1361
    .line 1362
    move-object v12, v3

    .line 1363
    check-cast v12, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1364
    .line 1365
    invoke-virtual {v12}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v13

    .line 1369
    iget-object v1, v13, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 1370
    .line 1371
    const/4 v10, 0x0

    .line 1372
    const/16 v11, 0x3fe

    .line 1373
    .line 1374
    const/4 v3, 0x0

    .line 1375
    const/4 v4, 0x0

    .line 1376
    const/4 v5, 0x0

    .line 1377
    const/4 v6, 0x0

    .line 1378
    const/4 v7, 0x0

    .line 1379
    const/4 v8, 0x0

    .line 1380
    const/4 v9, 0x0

    .line 1381
    move/from16 v2, p2

    .line 1382
    .line 1383
    invoke-static/range {v1 .. v11}, Lnet/thunderbird/core/preference/notification/NotificationPreference;->copy$default(Lnet/thunderbird/core/preference/notification/NotificationPreference;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;IZZLnet/thunderbird/core/preference/LockScreenNotificationVisibility;I)Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v3

    .line 1387
    const/4 v7, 0x0

    .line 1388
    const/16 v8, 0x7b

    .line 1389
    .line 1390
    const/4 v2, 0x0

    .line 1391
    const/4 v5, 0x0

    .line 1392
    move-object v1, v13

    .line 1393
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v1

    .line 1397
    invoke-virtual {v12, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 1398
    .line 1399
    .line 1400
    goto/16 :goto_1

    .line 1401
    .line 1402
    :sswitch_16
    const-string v2, "drawerExpandAllFolder"

    .line 1403
    .line 1404
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1405
    .line 1406
    .line 1407
    move-result v1

    .line 1408
    if-nez v1, :cond_16

    .line 1409
    .line 1410
    goto/16 :goto_0

    .line 1411
    .line 1412
    :cond_16
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1413
    .line 1414
    move-object v15, v3

    .line 1415
    check-cast v15, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1416
    .line 1417
    invoke-virtual {v15}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v1

    .line 1421
    iget-object v2, v1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1422
    .line 1423
    move-object v3, v1

    .line 1424
    iget-object v1, v2, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1425
    .line 1426
    const/4 v12, 0x0

    .line 1427
    const/16 v13, 0x7ef

    .line 1428
    .line 1429
    move-object v4, v2

    .line 1430
    const/4 v2, 0x0

    .line 1431
    move-object v5, v3

    .line 1432
    const/4 v3, 0x0

    .line 1433
    move-object v6, v4

    .line 1434
    const/4 v4, 0x0

    .line 1435
    move-object v7, v5

    .line 1436
    const/4 v5, 0x0

    .line 1437
    move-object v8, v7

    .line 1438
    const/4 v7, 0x0

    .line 1439
    move-object v9, v8

    .line 1440
    const/4 v8, 0x0

    .line 1441
    move-object v10, v9

    .line 1442
    const/4 v9, 0x0

    .line 1443
    move-object v11, v10

    .line 1444
    const/4 v10, 0x0

    .line 1445
    move-object/from16 v16, v11

    .line 1446
    .line 1447
    const/4 v11, 0x0

    .line 1448
    move-object/from16 v17, v6

    .line 1449
    .line 1450
    move/from16 v6, p2

    .line 1451
    .line 1452
    invoke-static/range {v1 .. v13}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v5

    .line 1456
    const/4 v6, 0x0

    .line 1457
    const/16 v7, 0xb

    .line 1458
    .line 1459
    const/4 v3, 0x0

    .line 1460
    const/4 v4, 0x0

    .line 1461
    move-object/from16 v2, v17

    .line 1462
    .line 1463
    invoke-static/range {v2 .. v7}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v4

    .line 1467
    const/4 v7, 0x0

    .line 1468
    const/16 v8, 0x77

    .line 1469
    .line 1470
    const/4 v2, 0x0

    .line 1471
    const/4 v5, 0x0

    .line 1472
    move-object/from16 v1, v16

    .line 1473
    .line 1474
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v1

    .line 1478
    invoke-virtual {v15, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 1479
    .line 1480
    .line 1481
    goto/16 :goto_1

    .line 1482
    .line 1483
    :sswitch_17
    const-string v2, "messagelist_show_contact_name"

    .line 1484
    .line 1485
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1486
    .line 1487
    .line 1488
    move-result v1

    .line 1489
    if-nez v1, :cond_17

    .line 1490
    .line 1491
    goto/16 :goto_0

    .line 1492
    .line 1493
    :cond_17
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1494
    .line 1495
    move-object v13, v3

    .line 1496
    check-cast v13, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1497
    .line 1498
    invoke-virtual {v13}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v15

    .line 1502
    iget-object v1, v15, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1503
    .line 1504
    iget-object v2, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1505
    .line 1506
    move-object v3, v1

    .line 1507
    iget-object v1, v2, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 1508
    .line 1509
    const/4 v11, 0x0

    .line 1510
    const/16 v12, 0x3fd

    .line 1511
    .line 1512
    move-object/from16 v16, v2

    .line 1513
    .line 1514
    const/4 v2, 0x0

    .line 1515
    const/4 v4, 0x0

    .line 1516
    const/4 v5, 0x0

    .line 1517
    const/4 v6, 0x0

    .line 1518
    const/4 v7, 0x0

    .line 1519
    const/4 v8, 0x0

    .line 1520
    const/4 v9, 0x0

    .line 1521
    const/4 v10, 0x0

    .line 1522
    move-object/from16 v29, v3

    .line 1523
    .line 1524
    move/from16 v3, p2

    .line 1525
    .line 1526
    invoke-static/range {v1 .. v12}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZZILnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;ILnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;I)Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v22

    .line 1530
    const/16 v27, 0x0

    .line 1531
    .line 1532
    const/16 v28, 0x7df

    .line 1533
    .line 1534
    const/16 v17, 0x0

    .line 1535
    .line 1536
    const/16 v18, 0x0

    .line 1537
    .line 1538
    const/16 v19, 0x0

    .line 1539
    .line 1540
    const/16 v20, 0x0

    .line 1541
    .line 1542
    const/16 v21, 0x0

    .line 1543
    .line 1544
    const/16 v23, 0x0

    .line 1545
    .line 1546
    const/16 v24, 0x0

    .line 1547
    .line 1548
    const/16 v25, 0x0

    .line 1549
    .line 1550
    const/16 v26, 0x0

    .line 1551
    .line 1552
    invoke-static/range {v16 .. v28}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v4

    .line 1556
    const/4 v5, 0x0

    .line 1557
    const/16 v6, 0xb

    .line 1558
    .line 1559
    const/4 v2, 0x0

    .line 1560
    const/4 v3, 0x0

    .line 1561
    move-object/from16 v1, v29

    .line 1562
    .line 1563
    invoke-static/range {v1 .. v6}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v4

    .line 1567
    const/4 v7, 0x0

    .line 1568
    const/16 v8, 0x77

    .line 1569
    .line 1570
    const/4 v6, 0x0

    .line 1571
    move-object v1, v15

    .line 1572
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v1

    .line 1576
    invoke-virtual {v13, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 1577
    .line 1578
    .line 1579
    goto/16 :goto_1

    .line 1580
    .line 1581
    :sswitch_18
    const-string v2, "show_starred_count"

    .line 1582
    .line 1583
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1584
    .line 1585
    .line 1586
    move-result v1

    .line 1587
    if-nez v1, :cond_18

    .line 1588
    .line 1589
    goto/16 :goto_0

    .line 1590
    .line 1591
    :cond_18
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1592
    .line 1593
    move-object v9, v3

    .line 1594
    check-cast v9, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1595
    .line 1596
    invoke-virtual {v9}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v10

    .line 1600
    iget-object v11, v10, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1601
    .line 1602
    iget-object v1, v11, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 1603
    .line 1604
    const/4 v7, 0x0

    .line 1605
    const/16 v8, 0x3d

    .line 1606
    .line 1607
    const/4 v2, 0x0

    .line 1608
    const/4 v4, 0x0

    .line 1609
    const/4 v5, 0x0

    .line 1610
    const/4 v6, 0x0

    .line 1611
    move/from16 v3, p2

    .line 1612
    .line 1613
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->copy$default(Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;ZZZZZZI)Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v3

    .line 1617
    const/4 v5, 0x0

    .line 1618
    const/16 v6, 0xd

    .line 1619
    .line 1620
    const/4 v2, 0x0

    .line 1621
    const/4 v4, 0x0

    .line 1622
    move-object v1, v11

    .line 1623
    invoke-static/range {v1 .. v6}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v4

    .line 1627
    const/4 v7, 0x0

    .line 1628
    const/16 v8, 0x77

    .line 1629
    .line 1630
    const/4 v3, 0x0

    .line 1631
    const/4 v6, 0x0

    .line 1632
    move-object v1, v10

    .line 1633
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v1

    .line 1637
    invoke-virtual {v9, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 1638
    .line 1639
    .line 1640
    goto/16 :goto_1

    .line 1641
    .line 1642
    :sswitch_19
    const-string v2, "messagelist_show_correspondent_names"

    .line 1643
    .line 1644
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1645
    .line 1646
    .line 1647
    move-result v1

    .line 1648
    if-nez v1, :cond_19

    .line 1649
    .line 1650
    goto/16 :goto_0

    .line 1651
    .line 1652
    :cond_19
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1653
    .line 1654
    move-object v13, v3

    .line 1655
    check-cast v13, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1656
    .line 1657
    invoke-virtual {v13}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v15

    .line 1661
    iget-object v1, v15, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1662
    .line 1663
    iget-object v2, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1664
    .line 1665
    move-object v3, v1

    .line 1666
    iget-object v1, v2, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 1667
    .line 1668
    const/4 v11, 0x0

    .line 1669
    const/16 v12, 0x3fe

    .line 1670
    .line 1671
    move-object v4, v3

    .line 1672
    const/4 v3, 0x0

    .line 1673
    move-object v5, v4

    .line 1674
    const/4 v4, 0x0

    .line 1675
    move-object v6, v5

    .line 1676
    const/4 v5, 0x0

    .line 1677
    move-object v7, v6

    .line 1678
    const/4 v6, 0x0

    .line 1679
    move-object v8, v7

    .line 1680
    const/4 v7, 0x0

    .line 1681
    move-object v9, v8

    .line 1682
    const/4 v8, 0x0

    .line 1683
    move-object v10, v9

    .line 1684
    const/4 v9, 0x0

    .line 1685
    move-object/from16 v16, v10

    .line 1686
    .line 1687
    const/4 v10, 0x0

    .line 1688
    move-object/from16 v29, v16

    .line 1689
    .line 1690
    move-object/from16 v16, v2

    .line 1691
    .line 1692
    move/from16 v2, p2

    .line 1693
    .line 1694
    invoke-static/range {v1 .. v12}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZZILnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;ILnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;I)Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v22

    .line 1698
    const/16 v27, 0x0

    .line 1699
    .line 1700
    const/16 v28, 0x7df

    .line 1701
    .line 1702
    const/16 v17, 0x0

    .line 1703
    .line 1704
    const/16 v18, 0x0

    .line 1705
    .line 1706
    const/16 v19, 0x0

    .line 1707
    .line 1708
    const/16 v20, 0x0

    .line 1709
    .line 1710
    const/16 v21, 0x0

    .line 1711
    .line 1712
    const/16 v23, 0x0

    .line 1713
    .line 1714
    const/16 v24, 0x0

    .line 1715
    .line 1716
    const/16 v25, 0x0

    .line 1717
    .line 1718
    const/16 v26, 0x0

    .line 1719
    .line 1720
    invoke-static/range {v16 .. v28}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v4

    .line 1724
    const/4 v5, 0x0

    .line 1725
    const/16 v6, 0xb

    .line 1726
    .line 1727
    const/4 v2, 0x0

    .line 1728
    const/4 v3, 0x0

    .line 1729
    move-object/from16 v1, v29

    .line 1730
    .line 1731
    invoke-static/range {v1 .. v6}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v4

    .line 1735
    const/4 v7, 0x0

    .line 1736
    const/16 v8, 0x77

    .line 1737
    .line 1738
    const/4 v6, 0x0

    .line 1739
    move-object v1, v15

    .line 1740
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v1

    .line 1744
    invoke-virtual {v13, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 1745
    .line 1746
    .line 1747
    goto :goto_1

    .line 1748
    :sswitch_1a
    const-string v2, "messagelist_stars"

    .line 1749
    .line 1750
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1751
    .line 1752
    .line 1753
    move-result v1

    .line 1754
    if-nez v1, :cond_1a

    .line 1755
    .line 1756
    :goto_0
    return-void

    .line 1757
    :cond_1a
    iput-boolean v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1758
    .line 1759
    move-object v9, v3

    .line 1760
    check-cast v9, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1761
    .line 1762
    invoke-virtual {v9}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v10

    .line 1766
    iget-object v11, v10, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1767
    .line 1768
    iget-object v1, v11, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 1769
    .line 1770
    const/4 v7, 0x0

    .line 1771
    const/16 v8, 0x3b

    .line 1772
    .line 1773
    const/4 v2, 0x0

    .line 1774
    const/4 v3, 0x0

    .line 1775
    const/4 v5, 0x0

    .line 1776
    const/4 v6, 0x0

    .line 1777
    move/from16 v4, p2

    .line 1778
    .line 1779
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->copy$default(Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;ZZZZZZI)Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v3

    .line 1783
    const/4 v5, 0x0

    .line 1784
    const/16 v6, 0xd

    .line 1785
    .line 1786
    const/4 v2, 0x0

    .line 1787
    const/4 v4, 0x0

    .line 1788
    move-object v1, v11

    .line 1789
    invoke-static/range {v1 .. v6}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v4

    .line 1793
    const/4 v7, 0x0

    .line 1794
    const/16 v8, 0x77

    .line 1795
    .line 1796
    const/4 v3, 0x0

    .line 1797
    const/4 v6, 0x0

    .line 1798
    move-object v1, v10

    .line 1799
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v1

    .line 1803
    invoke-virtual {v9, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 1804
    .line 1805
    .line 1806
    :goto_1
    iget-boolean v1, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1807
    .line 1808
    if-eqz v1, :cond_1b

    .line 1809
    .line 1810
    iput-boolean v14, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1811
    .line 1812
    return-void

    .line 1813
    :cond_1b
    invoke-static {}, Lcom/fsck/k9/K9;->saveSettingsAsync()V

    .line 1814
    .line 1815
    .line 1816
    return-void

    .line 1817
    :sswitch_data_0
    .sparse-switch
        -0x7465b339 -> :sswitch_1a
        -0x6e6762e3 -> :sswitch_19
        -0x602fdff3 -> :sswitch_18
        -0x53332b4e -> :sswitch_17
        -0x50e24d3c -> :sswitch_16
        -0x4d44a006 -> :sswitch_15
        -0x4bfe4238 -> :sswitch_14
        -0x41ca4c4b -> :sswitch_13
        -0x2a0e7221 -> :sswitch_12
        -0x1eaa3977 -> :sswitch_11
        -0x8afdb7d -> :sswitch_10
        -0x7168b0c -> :sswitch_f
        -0x2f1f0ff -> :sswitch_e
        0xd88c6cf -> :sswitch_d
        0xfb48171 -> :sswitch_c
        0x21e10573 -> :sswitch_b
        0x332ae4fb -> :sswitch_a
        0x4690a638 -> :sswitch_9
        0x4c4c7fd7 -> :sswitch_8
        0x4e777cda -> :sswitch_7
        0x50f67bfd -> :sswitch_6
        0x5dd7c192 -> :sswitch_5
        0x663de459 -> :sswitch_4
        0x67527d77 -> :sswitch_3
        0x699ecab6 -> :sswitch_2
        0x6bb4c401 -> :sswitch_1
        0x70b2d776 -> :sswitch_0
    .end sparse-switch
.end method

.method public final putInt(Ljava/lang/String;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "messagelist_contact_name_color"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 15
    .line 16
    iget-object v1, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 17
    .line 18
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, v2, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 25
    .line 26
    iget-object v4, v3, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 27
    .line 28
    iget-object v5, v4, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 29
    .line 30
    const/4 v15, 0x0

    .line 31
    const/16 v16, 0x2ff

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    const/4 v10, 0x0

    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v12, 0x0

    .line 40
    const/4 v13, 0x0

    .line 41
    move/from16 v14, p2

    .line 42
    .line 43
    invoke-static/range {v5 .. v16}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZZILnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;ILnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;I)Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    const/4 v15, 0x0

    .line 48
    const/16 v16, 0x7df

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v13, 0x0

    .line 53
    const/4 v14, 0x0

    .line 54
    invoke-static/range {v4 .. v16}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    const/4 v7, 0x0

    .line 59
    const/16 v8, 0xb

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-static/range {v3 .. v8}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const/4 v8, 0x0

    .line 67
    const/16 v9, 0x77

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-static/range {v2 .. v9}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const-string v2, "message_view_content_font_slider"

    .line 80
    .line 81
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    sget-object v1, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 88
    .line 89
    move/from16 v14, p2

    .line 90
    .line 91
    iput v14, v1, Lcom/fsck/k9/FontSizes;->messageViewContentAsPercent:I

    .line 92
    .line 93
    :goto_0
    iget-boolean v1, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 94
    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    iput-boolean v1, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 99
    .line 100
    return-void

    .line 101
    :cond_1
    invoke-static {}, Lcom/fsck/k9/K9;->saveSettingsAsync()V

    .line 102
    .line 103
    .line 104
    :cond_2
    return-void
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v4, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    sparse-switch v2, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :sswitch_0
    const-string v2, "splitview_mode"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lnet/thunderbird/core/preference/SplitViewMode;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/SplitViewMode;

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 50
    .line 51
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-object v5, v1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 58
    .line 59
    iget-object v6, v5, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 60
    .line 61
    const/4 v11, 0x0

    .line 62
    const/16 v13, 0x1f

    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    invoke-static/range {v6 .. v13}, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->copy$default(Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;ZLnet/thunderbird/core/preference/AppTheme;Lnet/thunderbird/core/preference/SubTheme;Lnet/thunderbird/core/preference/SubTheme;Ljava/lang/String;Lnet/thunderbird/core/preference/SplitViewMode;I)Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    const/16 v10, 0xe

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    invoke-static/range {v5 .. v10}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 76
    .line 77
    .line 78
    move-result-object v16

    .line 79
    const/16 v19, 0x0

    .line 80
    .line 81
    const/16 v20, 0x77

    .line 82
    .line 83
    const/4 v14, 0x0

    .line 84
    const/4 v15, 0x0

    .line 85
    const/16 v17, 0x0

    .line 86
    .line 87
    const/16 v18, 0x0

    .line 88
    .line 89
    move-object v13, v1

    .line 90
    invoke-static/range {v13 .. v20}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v4, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_5

    .line 98
    .line 99
    :sswitch_1
    const-string v2, "messageViewTheme"

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_2

    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_2
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 110
    .line 111
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iget-object v6, v5, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 118
    .line 119
    iget-object v7, v6, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 120
    .line 121
    invoke-static {v3}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->stringToSubTheme(Ljava/lang/String;)Lnet/thunderbird/core/preference/SubTheme;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    const/4 v13, 0x0

    .line 126
    const/16 v14, 0x3b

    .line 127
    .line 128
    const/4 v8, 0x0

    .line 129
    const/4 v9, 0x0

    .line 130
    const/4 v11, 0x0

    .line 131
    const/4 v12, 0x0

    .line 132
    invoke-static/range {v7 .. v14}, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->copy$default(Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;ZLnet/thunderbird/core/preference/AppTheme;Lnet/thunderbird/core/preference/SubTheme;Lnet/thunderbird/core/preference/SubTheme;Ljava/lang/String;Lnet/thunderbird/core/preference/SplitViewMode;I)Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    const/4 v10, 0x0

    .line 137
    const/16 v11, 0xe

    .line 138
    .line 139
    const/4 v8, 0x0

    .line 140
    invoke-static/range {v6 .. v11}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    const/4 v11, 0x0

    .line 145
    const/16 v12, 0x77

    .line 146
    .line 147
    const/4 v6, 0x0

    .line 148
    const/4 v7, 0x0

    .line 149
    invoke-static/range {v5 .. v12}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v4, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_5

    .line 157
    .line 158
    :sswitch_2
    const-string v2, "lock_screen_notification_visibility"

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_3

    .line 165
    .line 166
    goto/16 :goto_4

    .line 167
    .line 168
    :cond_3
    invoke-static {v3}, Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 169
    .line 170
    .line 171
    move-result-object v15

    .line 172
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 173
    .line 174
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 175
    .line 176
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    iget-object v6, v5, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 181
    .line 182
    const/4 v14, 0x0

    .line 183
    const/16 v16, 0x1ff

    .line 184
    .line 185
    const/4 v7, 0x0

    .line 186
    const/4 v8, 0x0

    .line 187
    const/4 v9, 0x0

    .line 188
    const/4 v10, 0x0

    .line 189
    const/4 v11, 0x0

    .line 190
    const/4 v12, 0x0

    .line 191
    const/4 v13, 0x0

    .line 192
    invoke-static/range {v6 .. v16}, Lnet/thunderbird/core/preference/notification/NotificationPreference;->copy$default(Lnet/thunderbird/core/preference/notification/NotificationPreference;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;IZZLnet/thunderbird/core/preference/LockScreenNotificationVisibility;I)Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    const/16 v12, 0x7b

    .line 197
    .line 198
    const/4 v6, 0x0

    .line 199
    const/4 v10, 0x0

    .line 200
    invoke-static/range {v5 .. v12}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v4, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_5

    .line 208
    .line 209
    :sswitch_3
    const-string v2, "message_compose_theme"

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-nez v1, :cond_4

    .line 216
    .line 217
    goto/16 :goto_4

    .line 218
    .line 219
    :cond_4
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 220
    .line 221
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 222
    .line 223
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    iget-object v6, v5, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 228
    .line 229
    iget-object v7, v6, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 230
    .line 231
    invoke-static {v3}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->stringToSubTheme(Ljava/lang/String;)Lnet/thunderbird/core/preference/SubTheme;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    const/4 v13, 0x0

    .line 236
    const/16 v14, 0x37

    .line 237
    .line 238
    const/4 v8, 0x0

    .line 239
    const/4 v9, 0x0

    .line 240
    const/4 v10, 0x0

    .line 241
    const/4 v12, 0x0

    .line 242
    invoke-static/range {v7 .. v14}, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->copy$default(Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;ZLnet/thunderbird/core/preference/AppTheme;Lnet/thunderbird/core/preference/SubTheme;Lnet/thunderbird/core/preference/SubTheme;Ljava/lang/String;Lnet/thunderbird/core/preference/SplitViewMode;I)Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    const/16 v11, 0xe

    .line 247
    .line 248
    const/4 v8, 0x0

    .line 249
    invoke-static/range {v6 .. v11}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    const/4 v11, 0x0

    .line 254
    const/16 v12, 0x77

    .line 255
    .line 256
    const/4 v6, 0x0

    .line 257
    const/4 v7, 0x0

    .line 258
    invoke-static/range {v5 .. v12}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v4, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_5

    .line 266
    .line 267
    :sswitch_4
    const-string v2, "background_ops"

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-nez v1, :cond_5

    .line 274
    .line 275
    goto/16 :goto_4

    .line 276
    .line 277
    :cond_5
    invoke-static {v3}, Lnet/thunderbird/core/preference/BackgroundOps;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/BackgroundOps;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 282
    .line 283
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    iget-object v2, v2, Lnet/thunderbird/core/preference/GeneralSettings;->network:Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 288
    .line 289
    iget-object v2, v2, Lnet/thunderbird/core/preference/network/NetworkSettings;->backgroundOps:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 290
    .line 291
    if-eq v1, v2, :cond_24

    .line 292
    .line 293
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 294
    .line 295
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    iget-object v2, v6, Lnet/thunderbird/core/preference/GeneralSettings;->network:Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 300
    .line 301
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    new-instance v7, Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 308
    .line 309
    invoke-direct {v7, v1}, Lnet/thunderbird/core/preference/network/NetworkSettings;-><init>(Lnet/thunderbird/core/preference/BackgroundOps;)V

    .line 310
    .line 311
    .line 312
    const/4 v12, 0x0

    .line 313
    const/16 v13, 0x7d

    .line 314
    .line 315
    const/4 v8, 0x0

    .line 316
    const/4 v9, 0x0

    .line 317
    const/4 v10, 0x0

    .line 318
    const/4 v11, 0x0

    .line 319
    invoke-static/range {v6 .. v13}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v4, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    iget-object v1, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->jobManager:Lcom/fsck/k9/job/K9JobManager;

    .line 327
    .line 328
    invoke-virtual {v1}, Lcom/fsck/k9/job/K9JobManager;->scheduleAllMailJobs()V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_5

    .line 332
    .line 333
    :sswitch_5
    const-string v2, "messageview_body_content_type"

    .line 334
    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-nez v1, :cond_6

    .line 340
    .line 341
    goto/16 :goto_4

    .line 342
    .line 343
    :cond_6
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 344
    .line 345
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 346
    .line 347
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    iget-object v6, v5, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 352
    .line 353
    iget-object v7, v6, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 354
    .line 355
    invoke-static {v3}, Lnet/thunderbird/core/preference/BodyContentType;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/BodyContentType;

    .line 356
    .line 357
    .line 358
    move-result-object v11

    .line 359
    const/16 v18, 0x0

    .line 360
    .line 361
    const/16 v19, 0x7f7

    .line 362
    .line 363
    const/4 v8, 0x0

    .line 364
    const/4 v9, 0x0

    .line 365
    const/4 v10, 0x0

    .line 366
    const/4 v12, 0x0

    .line 367
    const/4 v13, 0x0

    .line 368
    const/4 v14, 0x0

    .line 369
    const/4 v15, 0x0

    .line 370
    const/16 v16, 0x0

    .line 371
    .line 372
    const/16 v17, 0x0

    .line 373
    .line 374
    invoke-static/range {v7 .. v19}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 375
    .line 376
    .line 377
    move-result-object v9

    .line 378
    const/4 v10, 0x0

    .line 379
    const/16 v11, 0xb

    .line 380
    .line 381
    const/4 v7, 0x0

    .line 382
    invoke-static/range {v6 .. v11}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 383
    .line 384
    .line 385
    move-result-object v8

    .line 386
    const/4 v11, 0x0

    .line 387
    const/16 v12, 0x77

    .line 388
    .line 389
    const/4 v6, 0x0

    .line 390
    const/4 v9, 0x0

    .line 391
    invoke-static/range {v5 .. v12}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {v4, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_5

    .line 399
    .line 400
    :sswitch_6
    const-string v2, "post_remove_navigation"

    .line 401
    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    if-nez v1, :cond_7

    .line 407
    .line 408
    goto/16 :goto_4

    .line 409
    .line 410
    :cond_7
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 411
    .line 412
    move-object v13, v4

    .line 413
    check-cast v13, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 414
    .line 415
    invoke-virtual {v13}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 416
    .line 417
    .line 418
    move-result-object v14

    .line 419
    iget-object v1, v14, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 420
    .line 421
    const/4 v11, 0x0

    .line 422
    const/16 v12, 0x3fd

    .line 423
    .line 424
    const/4 v2, 0x0

    .line 425
    const/4 v4, 0x0

    .line 426
    const/4 v5, 0x0

    .line 427
    const/4 v6, 0x0

    .line 428
    const/4 v7, 0x0

    .line 429
    const/4 v8, 0x0

    .line 430
    const/4 v9, 0x0

    .line 431
    const/4 v10, 0x0

    .line 432
    invoke-static/range {v1 .. v12}, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->copy$default(Lnet/thunderbird/core/preference/interaction/InteractionSettings;ZLjava/lang/String;Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;Lnet/thunderbird/core/common/action/SwipeActions;ZZZZZZI)Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    const/16 v8, 0x3f

    .line 437
    .line 438
    const/4 v2, 0x0

    .line 439
    const/4 v3, 0x0

    .line 440
    const/4 v6, 0x0

    .line 441
    move-object v1, v14

    .line 442
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-virtual {v13, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    goto/16 :goto_5

    .line 450
    .line 451
    :sswitch_7
    const-string v2, "message_list_sender_font"

    .line 452
    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    if-nez v1, :cond_8

    .line 458
    .line 459
    goto/16 :goto_4

    .line 460
    .line 461
    :cond_8
    sget-object v1, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 462
    .line 463
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    iput v2, v1, Lcom/fsck/k9/FontSizes;->messageListSender:I

    .line 468
    .line 469
    goto/16 :goto_5

    .line 470
    .line 471
    :sswitch_8
    const-string v2, "message_compose_input_font"

    .line 472
    .line 473
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    if-nez v1, :cond_9

    .line 478
    .line 479
    goto/16 :goto_4

    .line 480
    .line 481
    :cond_9
    sget-object v1, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 482
    .line 483
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    iput v2, v1, Lcom/fsck/k9/FontSizes;->messageComposeInput:I

    .line 488
    .line 489
    goto/16 :goto_5

    .line 490
    .line 491
    :sswitch_9
    const-string v2, "message_list_date_time_format"

    .line 492
    .line 493
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    if-nez v1, :cond_a

    .line 498
    .line 499
    goto/16 :goto_4

    .line 500
    .line 501
    :cond_a
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 502
    .line 503
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 504
    .line 505
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 506
    .line 507
    .line 508
    move-result-object v5

    .line 509
    iget-object v6, v5, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 510
    .line 511
    iget-object v7, v6, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 512
    .line 513
    iget-object v8, v7, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 514
    .line 515
    invoke-static {v3}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 516
    .line 517
    .line 518
    move-result-object v18

    .line 519
    const/16 v19, 0x1ff

    .line 520
    .line 521
    const/4 v9, 0x0

    .line 522
    const/4 v10, 0x0

    .line 523
    const/4 v11, 0x0

    .line 524
    const/4 v12, 0x0

    .line 525
    const/4 v13, 0x0

    .line 526
    const/4 v14, 0x0

    .line 527
    const/4 v15, 0x0

    .line 528
    const/16 v16, 0x0

    .line 529
    .line 530
    const/16 v17, 0x0

    .line 531
    .line 532
    invoke-static/range {v8 .. v19}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZZILnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;ILnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;I)Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 533
    .line 534
    .line 535
    move-result-object v13

    .line 536
    const/16 v18, 0x0

    .line 537
    .line 538
    const/16 v19, 0x7df

    .line 539
    .line 540
    const/4 v8, 0x0

    .line 541
    const/4 v11, 0x0

    .line 542
    const/16 v16, 0x0

    .line 543
    .line 544
    invoke-static/range {v7 .. v19}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 545
    .line 546
    .line 547
    move-result-object v9

    .line 548
    const/4 v10, 0x0

    .line 549
    const/16 v11, 0xb

    .line 550
    .line 551
    const/4 v7, 0x0

    .line 552
    invoke-static/range {v6 .. v11}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 553
    .line 554
    .line 555
    move-result-object v8

    .line 556
    const/4 v11, 0x0

    .line 557
    const/16 v12, 0x77

    .line 558
    .line 559
    const/4 v6, 0x0

    .line 560
    const/4 v9, 0x0

    .line 561
    invoke-static/range {v5 .. v12}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    invoke-virtual {v4, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    goto/16 :goto_5

    .line 569
    .line 570
    :sswitch_a
    const-string v2, "swipe_action_left"

    .line 571
    .line 572
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v1

    .line 576
    if-nez v1, :cond_b

    .line 577
    .line 578
    goto/16 :goto_4

    .line 579
    .line 580
    :cond_b
    new-instance v1, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 581
    .line 582
    const/16 v2, 0x9

    .line 583
    .line 584
    invoke-direct {v1, v2}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0, v3, v1}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->updateSwipeAction(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 588
    .line 589
    .line 590
    goto/16 :goto_5

    .line 591
    .line 592
    :sswitch_b
    const-string v2, "animations"

    .line 593
    .line 594
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v1

    .line 598
    if-nez v1, :cond_c

    .line 599
    .line 600
    goto/16 :goto_4

    .line 601
    .line 602
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    const v2, -0x6be3a583

    .line 607
    .line 608
    .line 609
    if-eq v1, v2, :cond_e

    .line 610
    .line 611
    const/16 v2, 0x9df

    .line 612
    .line 613
    if-eq v1, v2, :cond_d

    .line 614
    .line 615
    const v2, 0x1314f

    .line 616
    .line 617
    .line 618
    if-ne v1, v2, :cond_f

    .line 619
    .line 620
    const-string v1, "OFF"

    .line 621
    .line 622
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    if-eqz v1, :cond_f

    .line 627
    .line 628
    sget-object v1, Lnet/thunderbird/core/preference/AnimationPreference;->OFF:Lnet/thunderbird/core/preference/AnimationPreference;

    .line 629
    .line 630
    :goto_0
    move-object v7, v1

    .line 631
    goto :goto_1

    .line 632
    :cond_d
    const-string v1, "ON"

    .line 633
    .line 634
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    if-eqz v1, :cond_f

    .line 639
    .line 640
    sget-object v1, Lnet/thunderbird/core/preference/AnimationPreference;->ON:Lnet/thunderbird/core/preference/AnimationPreference;

    .line 641
    .line 642
    goto :goto_0

    .line 643
    :cond_e
    const-string v1, "FOLLOW_SYSTEM"

    .line 644
    .line 645
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    if-eqz v1, :cond_f

    .line 650
    .line 651
    sget-object v1, Lnet/thunderbird/core/preference/AnimationPreference;->FOLLOW_SYSTEM:Lnet/thunderbird/core/preference/AnimationPreference;

    .line 652
    .line 653
    goto :goto_0

    .line 654
    :goto_1
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 655
    .line 656
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 657
    .line 658
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    iget-object v2, v1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 663
    .line 664
    iget-object v6, v2, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 665
    .line 666
    const/16 v17, 0x0

    .line 667
    .line 668
    const/16 v18, 0x7fe

    .line 669
    .line 670
    const/4 v8, 0x0

    .line 671
    const/4 v9, 0x0

    .line 672
    const/4 v10, 0x0

    .line 673
    const/4 v11, 0x0

    .line 674
    const/4 v12, 0x0

    .line 675
    const/4 v13, 0x0

    .line 676
    const/4 v14, 0x0

    .line 677
    const/4 v15, 0x0

    .line 678
    const/16 v16, 0x0

    .line 679
    .line 680
    invoke-static/range {v6 .. v18}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 681
    .line 682
    .line 683
    move-result-object v11

    .line 684
    const/16 v13, 0xb

    .line 685
    .line 686
    const/4 v9, 0x0

    .line 687
    move-object v8, v2

    .line 688
    invoke-static/range {v8 .. v13}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 689
    .line 690
    .line 691
    move-result-object v11

    .line 692
    const/4 v14, 0x0

    .line 693
    const/16 v15, 0x77

    .line 694
    .line 695
    const/4 v13, 0x0

    .line 696
    move-object v8, v1

    .line 697
    invoke-static/range {v8 .. v15}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    invoke-virtual {v4, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 702
    .line 703
    .line 704
    goto/16 :goto_5

    .line 705
    .line 706
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    .line 707
    .line 708
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 709
    .line 710
    .line 711
    throw v0

    .line 712
    :sswitch_c
    const-string v2, "message_view_recipients_font"

    .line 713
    .line 714
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    move-result v1

    .line 718
    if-nez v1, :cond_10

    .line 719
    .line 720
    goto/16 :goto_4

    .line 721
    .line 722
    :cond_10
    sget-object v1, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 723
    .line 724
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 725
    .line 726
    .line 727
    move-result v2

    .line 728
    iput v2, v1, Lcom/fsck/k9/FontSizes;->messageViewRecipients:I

    .line 729
    .line 730
    goto/16 :goto_5

    .line 731
    .line 732
    :sswitch_d
    const-string v2, "theme"

    .line 733
    .line 734
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v1

    .line 738
    if-nez v1, :cond_11

    .line 739
    .line 740
    goto/16 :goto_4

    .line 741
    .line 742
    :cond_11
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 743
    .line 744
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 745
    .line 746
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 747
    .line 748
    .line 749
    move-result-object v5

    .line 750
    iget-object v6, v5, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 751
    .line 752
    iget-object v7, v6, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 753
    .line 754
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    const v2, 0x2eef76

    .line 759
    .line 760
    .line 761
    if-eq v1, v2, :cond_13

    .line 762
    .line 763
    const v2, 0x6233516

    .line 764
    .line 765
    .line 766
    if-eq v1, v2, :cond_12

    .line 767
    .line 768
    const v2, 0x3d96da7d

    .line 769
    .line 770
    .line 771
    if-ne v1, v2, :cond_14

    .line 772
    .line 773
    const-string v1, "follow_system"

    .line 774
    .line 775
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    move-result v1

    .line 779
    if-eqz v1, :cond_14

    .line 780
    .line 781
    sget-object v1, Lnet/thunderbird/core/preference/AppTheme;->FOLLOW_SYSTEM:Lnet/thunderbird/core/preference/AppTheme;

    .line 782
    .line 783
    :goto_2
    move-object v9, v1

    .line 784
    goto :goto_3

    .line 785
    :cond_12
    const-string v1, "light"

    .line 786
    .line 787
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v1

    .line 791
    if-eqz v1, :cond_14

    .line 792
    .line 793
    sget-object v1, Lnet/thunderbird/core/preference/AppTheme;->LIGHT:Lnet/thunderbird/core/preference/AppTheme;

    .line 794
    .line 795
    goto :goto_2

    .line 796
    :cond_13
    const-string v1, "dark"

    .line 797
    .line 798
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    move-result v1

    .line 802
    if-eqz v1, :cond_14

    .line 803
    .line 804
    sget-object v1, Lnet/thunderbird/core/preference/AppTheme;->DARK:Lnet/thunderbird/core/preference/AppTheme;

    .line 805
    .line 806
    goto :goto_2

    .line 807
    :goto_3
    const/4 v13, 0x0

    .line 808
    const/16 v14, 0x3d

    .line 809
    .line 810
    const/4 v8, 0x0

    .line 811
    const/4 v10, 0x0

    .line 812
    const/4 v11, 0x0

    .line 813
    const/4 v12, 0x0

    .line 814
    invoke-static/range {v7 .. v14}, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->copy$default(Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;ZLnet/thunderbird/core/preference/AppTheme;Lnet/thunderbird/core/preference/SubTheme;Lnet/thunderbird/core/preference/SubTheme;Ljava/lang/String;Lnet/thunderbird/core/preference/SplitViewMode;I)Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 815
    .line 816
    .line 817
    move-result-object v7

    .line 818
    const/16 v11, 0xe

    .line 819
    .line 820
    const/4 v8, 0x0

    .line 821
    const/4 v9, 0x0

    .line 822
    invoke-static/range {v6 .. v11}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 823
    .line 824
    .line 825
    move-result-object v8

    .line 826
    const/4 v11, 0x0

    .line 827
    const/16 v12, 0x77

    .line 828
    .line 829
    const/4 v6, 0x0

    .line 830
    const/4 v7, 0x0

    .line 831
    invoke-static/range {v5 .. v12}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    invoke-virtual {v4, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 836
    .line 837
    .line 838
    goto/16 :goto_5

    .line 839
    .line 840
    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    .line 841
    .line 842
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 843
    .line 844
    .line 845
    throw v0

    .line 846
    :sswitch_e
    const-string v2, "message_list_preview_font"

    .line 847
    .line 848
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v1

    .line 852
    if-nez v1, :cond_15

    .line 853
    .line 854
    goto/16 :goto_4

    .line 855
    .line 856
    :cond_15
    sget-object v1, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 857
    .line 858
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 859
    .line 860
    .line 861
    move-result v2

    .line 862
    iput v2, v1, Lcom/fsck/k9/FontSizes;->messageListPreview:I

    .line 863
    .line 864
    goto/16 :goto_5

    .line 865
    .line 866
    :sswitch_f
    const-string v2, "message_list_subject_font"

    .line 867
    .line 868
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 869
    .line 870
    .line 871
    move-result v1

    .line 872
    if-nez v1, :cond_16

    .line 873
    .line 874
    goto/16 :goto_4

    .line 875
    .line 876
    :cond_16
    sget-object v1, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 877
    .line 878
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 879
    .line 880
    .line 881
    move-result v2

    .line 882
    iput v2, v1, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    .line 883
    .line 884
    goto/16 :goto_5

    .line 885
    .line 886
    :sswitch_10
    const-string v2, "quiet_time_ends"

    .line 887
    .line 888
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 889
    .line 890
    .line 891
    move-result v1

    .line 892
    if-nez v1, :cond_17

    .line 893
    .line 894
    goto/16 :goto_4

    .line 895
    .line 896
    :cond_17
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 897
    .line 898
    move-object v12, v4

    .line 899
    check-cast v12, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 900
    .line 901
    invoke-virtual {v12}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 902
    .line 903
    .line 904
    move-result-object v13

    .line 905
    iget-object v1, v13, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 906
    .line 907
    const/4 v10, 0x0

    .line 908
    const/16 v11, 0x3fb

    .line 909
    .line 910
    const/4 v2, 0x0

    .line 911
    const/4 v3, 0x0

    .line 912
    const/4 v5, 0x0

    .line 913
    const/4 v6, 0x0

    .line 914
    const/4 v7, 0x0

    .line 915
    const/4 v8, 0x0

    .line 916
    const/4 v9, 0x0

    .line 917
    move-object/from16 v4, p2

    .line 918
    .line 919
    invoke-static/range {v1 .. v11}, Lnet/thunderbird/core/preference/notification/NotificationPreference;->copy$default(Lnet/thunderbird/core/preference/notification/NotificationPreference;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;IZZLnet/thunderbird/core/preference/LockScreenNotificationVisibility;I)Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 920
    .line 921
    .line 922
    move-result-object v3

    .line 923
    const/4 v7, 0x0

    .line 924
    const/16 v8, 0x7b

    .line 925
    .line 926
    const/4 v2, 0x0

    .line 927
    const/4 v4, 0x0

    .line 928
    const/4 v5, 0x0

    .line 929
    move-object v1, v13

    .line 930
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 931
    .line 932
    .line 933
    move-result-object v1

    .line 934
    invoke-virtual {v12, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 935
    .line 936
    .line 937
    goto/16 :goto_5

    .line 938
    .line 939
    :sswitch_11
    const-string v2, "post_mark_as_unread_navigation"

    .line 940
    .line 941
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 942
    .line 943
    .line 944
    move-result v1

    .line 945
    if-nez v1, :cond_18

    .line 946
    .line 947
    goto/16 :goto_4

    .line 948
    .line 949
    :cond_18
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 950
    .line 951
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 952
    .line 953
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 954
    .line 955
    .line 956
    move-result-object v5

    .line 957
    iget-object v6, v5, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 958
    .line 959
    invoke-static/range {p2 .. p2}, Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

    .line 960
    .line 961
    .line 962
    move-result-object v9

    .line 963
    const/16 v16, 0x0

    .line 964
    .line 965
    const/16 v17, 0x3fb

    .line 966
    .line 967
    const/4 v7, 0x0

    .line 968
    const/4 v8, 0x0

    .line 969
    const/4 v10, 0x0

    .line 970
    const/4 v11, 0x0

    .line 971
    const/4 v12, 0x0

    .line 972
    const/4 v13, 0x0

    .line 973
    const/4 v14, 0x0

    .line 974
    const/4 v15, 0x0

    .line 975
    invoke-static/range {v6 .. v17}, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->copy$default(Lnet/thunderbird/core/preference/interaction/InteractionSettings;ZLjava/lang/String;Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;Lnet/thunderbird/core/common/action/SwipeActions;ZZZZZZI)Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 976
    .line 977
    .line 978
    move-result-object v11

    .line 979
    const/16 v12, 0x3f

    .line 980
    .line 981
    const/4 v6, 0x0

    .line 982
    const/4 v7, 0x0

    .line 983
    const/4 v9, 0x0

    .line 984
    invoke-static/range {v5 .. v12}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    invoke-virtual {v4, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 989
    .line 990
    .line 991
    goto/16 :goto_5

    .line 992
    .line 993
    :sswitch_12
    const-string v2, "message_view_subject_font"

    .line 994
    .line 995
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 996
    .line 997
    .line 998
    move-result v1

    .line 999
    if-nez v1, :cond_19

    .line 1000
    .line 1001
    goto/16 :goto_4

    .line 1002
    .line 1003
    :cond_19
    sget-object v1, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 1004
    .line 1005
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1006
    .line 1007
    .line 1008
    move-result v2

    .line 1009
    iput v2, v1, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    .line 1010
    .line 1011
    goto/16 :goto_5

    .line 1012
    .line 1013
    :sswitch_13
    const-string v2, "quiet_time_starts"

    .line 1014
    .line 1015
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v1

    .line 1019
    if-nez v1, :cond_1a

    .line 1020
    .line 1021
    goto/16 :goto_4

    .line 1022
    .line 1023
    :cond_1a
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1024
    .line 1025
    move-object v12, v4

    .line 1026
    check-cast v12, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1027
    .line 1028
    invoke-virtual {v12}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v13

    .line 1032
    iget-object v1, v13, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 1033
    .line 1034
    const/4 v10, 0x0

    .line 1035
    const/16 v11, 0x3fd

    .line 1036
    .line 1037
    const/4 v2, 0x0

    .line 1038
    const/4 v4, 0x0

    .line 1039
    const/4 v5, 0x0

    .line 1040
    const/4 v6, 0x0

    .line 1041
    const/4 v7, 0x0

    .line 1042
    const/4 v8, 0x0

    .line 1043
    const/4 v9, 0x0

    .line 1044
    move-object/from16 v3, p2

    .line 1045
    .line 1046
    invoke-static/range {v1 .. v11}, Lnet/thunderbird/core/preference/notification/NotificationPreference;->copy$default(Lnet/thunderbird/core/preference/notification/NotificationPreference;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;IZZLnet/thunderbird/core/preference/LockScreenNotificationVisibility;I)Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v3

    .line 1050
    const/4 v7, 0x0

    .line 1051
    const/16 v8, 0x7b

    .line 1052
    .line 1053
    const/4 v2, 0x0

    .line 1054
    const/4 v5, 0x0

    .line 1055
    move-object v1, v13

    .line 1056
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v1

    .line 1060
    invoke-virtual {v12, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 1061
    .line 1062
    .line 1063
    goto/16 :goto_5

    .line 1064
    .line 1065
    :sswitch_14
    const-string v2, "message_view_date_font"

    .line 1066
    .line 1067
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1068
    .line 1069
    .line 1070
    move-result v1

    .line 1071
    if-nez v1, :cond_1b

    .line 1072
    .line 1073
    goto/16 :goto_4

    .line 1074
    .line 1075
    :cond_1b
    sget-object v1, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 1076
    .line 1077
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1078
    .line 1079
    .line 1080
    move-result v2

    .line 1081
    iput v2, v1, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    .line 1082
    .line 1083
    goto/16 :goto_5

    .line 1084
    .line 1085
    :sswitch_15
    const-string v2, "message_list_density"

    .line 1086
    .line 1087
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1088
    .line 1089
    .line 1090
    move-result v1

    .line 1091
    if-nez v1, :cond_1c

    .line 1092
    .line 1093
    goto/16 :goto_4

    .line 1094
    .line 1095
    :cond_1c
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1096
    .line 1097
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1098
    .line 1099
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v5

    .line 1103
    iget-object v6, v5, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1104
    .line 1105
    iget-object v7, v6, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1106
    .line 1107
    iget-object v8, v7, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 1108
    .line 1109
    invoke-static {v3}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v16

    .line 1113
    const/16 v18, 0x0

    .line 1114
    .line 1115
    const/16 v19, 0x37f

    .line 1116
    .line 1117
    const/4 v9, 0x0

    .line 1118
    const/4 v10, 0x0

    .line 1119
    const/4 v11, 0x0

    .line 1120
    const/4 v12, 0x0

    .line 1121
    const/4 v13, 0x0

    .line 1122
    const/4 v14, 0x0

    .line 1123
    const/4 v15, 0x0

    .line 1124
    const/16 v17, 0x0

    .line 1125
    .line 1126
    invoke-static/range {v8 .. v19}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZZILnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;ILnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;I)Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v13

    .line 1130
    const/16 v18, 0x0

    .line 1131
    .line 1132
    const/16 v19, 0x7df

    .line 1133
    .line 1134
    const/4 v8, 0x0

    .line 1135
    const/4 v11, 0x0

    .line 1136
    const/16 v16, 0x0

    .line 1137
    .line 1138
    invoke-static/range {v7 .. v19}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v9

    .line 1142
    const/4 v10, 0x0

    .line 1143
    const/16 v11, 0xb

    .line 1144
    .line 1145
    const/4 v7, 0x0

    .line 1146
    invoke-static/range {v6 .. v11}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v8

    .line 1150
    const/4 v11, 0x0

    .line 1151
    const/16 v12, 0x77

    .line 1152
    .line 1153
    const/4 v6, 0x0

    .line 1154
    const/4 v9, 0x0

    .line 1155
    invoke-static/range {v5 .. v12}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v1

    .line 1159
    invoke-virtual {v4, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 1160
    .line 1161
    .line 1162
    goto/16 :goto_5

    .line 1163
    .line 1164
    :sswitch_16
    const-string v2, "swipe_action_right"

    .line 1165
    .line 1166
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1167
    .line 1168
    .line 1169
    move-result v1

    .line 1170
    if-nez v1, :cond_1d

    .line 1171
    .line 1172
    goto/16 :goto_4

    .line 1173
    .line 1174
    :cond_1d
    new-instance v1, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 1175
    .line 1176
    const/16 v2, 0x8

    .line 1177
    .line 1178
    invoke-direct {v1, v2}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {v0, v3, v1}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->updateSwipeAction(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 1182
    .line 1183
    .line 1184
    goto/16 :goto_5

    .line 1185
    .line 1186
    :sswitch_17
    const-string v2, "message_view_account_name_font"

    .line 1187
    .line 1188
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1189
    .line 1190
    .line 1191
    move-result v1

    .line 1192
    if-nez v1, :cond_1e

    .line 1193
    .line 1194
    goto/16 :goto_4

    .line 1195
    .line 1196
    :cond_1e
    sget-object v1, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 1197
    .line 1198
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1199
    .line 1200
    .line 1201
    move-result v2

    .line 1202
    iput v2, v1, Lcom/fsck/k9/FontSizes;->messageViewAccountName:I

    .line 1203
    .line 1204
    goto/16 :goto_5

    .line 1205
    .line 1206
    :sswitch_18
    const-string v2, "language"

    .line 1207
    .line 1208
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1209
    .line 1210
    .line 1211
    move-result v1

    .line 1212
    if-nez v1, :cond_1f

    .line 1213
    .line 1214
    goto/16 :goto_4

    .line 1215
    .line 1216
    :cond_1f
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1217
    .line 1218
    iget-object v9, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->appLanguageManager:Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 1219
    .line 1220
    iget-object v10, v9, Lcom/fsck/k9/ui/base/AppLanguageManager;->displayCoreSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

    .line 1221
    .line 1222
    invoke-virtual {v10}, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v1

    .line 1226
    check-cast v1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 1227
    .line 1228
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appLanguage:Ljava/lang/String;

    .line 1229
    .line 1230
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1231
    .line 1232
    .line 1233
    move-result v1

    .line 1234
    if-eqz v1, :cond_20

    .line 1235
    .line 1236
    goto/16 :goto_5

    .line 1237
    .line 1238
    :cond_20
    invoke-virtual {v10}, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v1

    .line 1242
    check-cast v1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 1243
    .line 1244
    const/4 v7, 0x0

    .line 1245
    const/16 v8, 0x2f

    .line 1246
    .line 1247
    const/4 v2, 0x0

    .line 1248
    const/4 v3, 0x0

    .line 1249
    const/4 v4, 0x0

    .line 1250
    const/4 v5, 0x0

    .line 1251
    move-object/from16 v6, p2

    .line 1252
    .line 1253
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->copy$default(Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;ZLnet/thunderbird/core/preference/AppTheme;Lnet/thunderbird/core/preference/SubTheme;Lnet/thunderbird/core/preference/SubTheme;Ljava/lang/String;Lnet/thunderbird/core/preference/SplitViewMode;I)Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v1

    .line 1257
    move-object v3, v6

    .line 1258
    invoke-virtual {v10, v1}, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;->save(Ljava/lang/Object;)V

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual {v9, v3}, Lcom/fsck/k9/ui/base/AppLanguageManager;->setLocale(Ljava/lang/String;)V

    .line 1262
    .line 1263
    .line 1264
    goto/16 :goto_5

    .line 1265
    .line 1266
    :sswitch_19
    const-string v2, "messagelist_preview_lines"

    .line 1267
    .line 1268
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1269
    .line 1270
    .line 1271
    move-result v1

    .line 1272
    if-nez v1, :cond_21

    .line 1273
    .line 1274
    goto :goto_4

    .line 1275
    :cond_21
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1276
    .line 1277
    .line 1278
    move-result v13

    .line 1279
    iput-boolean v5, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1280
    .line 1281
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1282
    .line 1283
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v5

    .line 1287
    iget-object v1, v5, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1288
    .line 1289
    iget-object v2, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1290
    .line 1291
    iget-object v6, v2, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 1292
    .line 1293
    const/16 v16, 0x0

    .line 1294
    .line 1295
    const/16 v17, 0x3bf

    .line 1296
    .line 1297
    const/4 v7, 0x0

    .line 1298
    const/4 v8, 0x0

    .line 1299
    const/4 v9, 0x0

    .line 1300
    const/4 v10, 0x0

    .line 1301
    const/4 v11, 0x0

    .line 1302
    const/4 v12, 0x0

    .line 1303
    const/4 v14, 0x0

    .line 1304
    const/4 v15, 0x0

    .line 1305
    invoke-static/range {v6 .. v17}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZZILnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;ILnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;I)Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v20

    .line 1309
    const/16 v25, 0x0

    .line 1310
    .line 1311
    const/16 v26, 0x7df

    .line 1312
    .line 1313
    const/4 v15, 0x0

    .line 1314
    const/16 v16, 0x0

    .line 1315
    .line 1316
    const/16 v17, 0x0

    .line 1317
    .line 1318
    const/16 v18, 0x0

    .line 1319
    .line 1320
    const/16 v19, 0x0

    .line 1321
    .line 1322
    const/16 v21, 0x0

    .line 1323
    .line 1324
    const/16 v22, 0x0

    .line 1325
    .line 1326
    const/16 v23, 0x0

    .line 1327
    .line 1328
    const/16 v24, 0x0

    .line 1329
    .line 1330
    move-object v14, v2

    .line 1331
    invoke-static/range {v14 .. v26}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v9

    .line 1335
    const/4 v10, 0x0

    .line 1336
    const/16 v11, 0xb

    .line 1337
    .line 1338
    const/4 v7, 0x0

    .line 1339
    const/4 v8, 0x0

    .line 1340
    move-object v6, v1

    .line 1341
    invoke-static/range {v6 .. v11}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v8

    .line 1345
    const/4 v11, 0x0

    .line 1346
    const/16 v12, 0x77

    .line 1347
    .line 1348
    const/4 v6, 0x0

    .line 1349
    const/4 v9, 0x0

    .line 1350
    invoke-static/range {v5 .. v12}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v1

    .line 1354
    invoke-virtual {v4, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 1355
    .line 1356
    .line 1357
    goto :goto_5

    .line 1358
    :sswitch_1a
    const-string v2, "message_list_date_font"

    .line 1359
    .line 1360
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1361
    .line 1362
    .line 1363
    move-result v1

    .line 1364
    if-nez v1, :cond_22

    .line 1365
    .line 1366
    goto :goto_4

    .line 1367
    :cond_22
    sget-object v1, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 1368
    .line 1369
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1370
    .line 1371
    .line 1372
    move-result v2

    .line 1373
    iput v2, v1, Lcom/fsck/k9/FontSizes;->messageListDate:I

    .line 1374
    .line 1375
    goto :goto_5

    .line 1376
    :sswitch_1b
    const-string v2, "message_view_sender_font"

    .line 1377
    .line 1378
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1379
    .line 1380
    .line 1381
    move-result v1

    .line 1382
    if-nez v1, :cond_23

    .line 1383
    .line 1384
    :goto_4
    return-void

    .line 1385
    :cond_23
    sget-object v1, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 1386
    .line 1387
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1388
    .line 1389
    .line 1390
    move-result v2

    .line 1391
    iput v2, v1, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    .line 1392
    .line 1393
    :cond_24
    :goto_5
    iget-boolean v1, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1394
    .line 1395
    if-eqz v1, :cond_25

    .line 1396
    .line 1397
    const/4 v1, 0x0

    .line 1398
    iput-boolean v1, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 1399
    .line 1400
    return-void

    .line 1401
    :cond_25
    invoke-static {}, Lcom/fsck/k9/K9;->saveSettingsAsync()V

    .line 1402
    .line 1403
    .line 1404
    return-void

    .line 1405
    :sswitch_data_0
    .sparse-switch
        -0x7818e149 -> :sswitch_1b
        -0x66bf10e9 -> :sswitch_1a
        -0x62039dd2 -> :sswitch_19
        -0x602d6ca8 -> :sswitch_18
        -0x55def9f1 -> :sswitch_17
        -0x51512448 -> :sswitch_16
        -0x4d7fa481 -> :sswitch_15
        -0x411e23a2 -> :sswitch_14
        -0x34980788 -> :sswitch_13
        -0x2c9d3b5c -> :sswitch_12
        -0x292faad6 -> :sswitch_11
        -0x1dea5f21 -> :sswitch_10
        -0xed974b5 -> :sswitch_f
        -0x61b41d1 -> :sswitch_e
        0x69375c9 -> :sswitch_d
        0x1228ab92 -> :sswitch_c
        0x12b8556f -> :sswitch_b
        0x1623e2eb -> :sswitch_a
        0x23023de1 -> :sswitch_9
        0x42a373a9 -> :sswitch_8
        0x46cc6730 -> :sswitch_7
        0x470646d0 -> :sswitch_6
        0x489b346a -> :sswitch_5
        0x551aec21 -> :sswitch_4
        0x5b850ea4 -> :sswitch_3
        0x5b93e5a7 -> :sswitch_2
        0x668661dd -> :sswitch_1
        0x74355923 -> :sswitch_0
    .end sparse-switch
.end method

.method public final putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    sget-object v2, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object/from16 v2, p2

    .line 14
    .line 15
    :goto_0
    const-string v3, "confirm_actions"

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const-string v4, "spam"

    .line 22
    .line 23
    const-string v5, "delete"

    .line 24
    .line 25
    iget-object v6, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    iput-boolean v7, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 31
    .line 32
    check-cast v6, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 33
    .line 34
    invoke-virtual {v6}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    iget-object v8, v7, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 39
    .line 40
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v13

    .line 44
    const-string v1, "delete_starred"

    .line 45
    .line 46
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    const-string v1, "delete_notif"

    .line 51
    .line 52
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v15

    .line 56
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v16

    .line 60
    const-string v1, "discard"

    .line 61
    .line 62
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v17

    .line 66
    const-string v1, "mark_all_read"

    .line 67
    .line 68
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v18

    .line 72
    const/16 v19, 0xf

    .line 73
    .line 74
    const/4 v9, 0x0

    .line 75
    const/4 v10, 0x0

    .line 76
    const/4 v11, 0x0

    .line 77
    const/4 v12, 0x0

    .line 78
    invoke-static/range {v8 .. v19}, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->copy$default(Lnet/thunderbird/core/preference/interaction/InteractionSettings;ZLjava/lang/String;Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;Lnet/thunderbird/core/common/action/SwipeActions;ZZZZZZI)Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 79
    .line 80
    .line 81
    move-result-object v13

    .line 82
    const/16 v14, 0x3f

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v9, 0x0

    .line 86
    invoke-static/range {v7 .. v14}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v6, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    const-string v3, "messageview_visible_refile_actions"

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    iput-boolean v7, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 103
    .line 104
    check-cast v6, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 105
    .line 106
    invoke-virtual {v6}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    iget-object v8, v7, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 111
    .line 112
    iget-object v9, v8, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 113
    .line 114
    const-string v1, "archive"

    .line 115
    .line 116
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v16

    .line 120
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v17

    .line 124
    const-string v1, "move"

    .line 125
    .line 126
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v18

    .line 130
    const-string v1, "copy"

    .line 131
    .line 132
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v19

    .line 136
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v20

    .line 140
    const/16 v21, 0x3f

    .line 141
    .line 142
    const/4 v10, 0x0

    .line 143
    const/4 v11, 0x0

    .line 144
    const/4 v12, 0x0

    .line 145
    const/4 v13, 0x0

    .line 146
    const/4 v14, 0x0

    .line 147
    const/4 v15, 0x0

    .line 148
    invoke-static/range {v9 .. v21}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    const/4 v12, 0x0

    .line 153
    const/16 v13, 0xb

    .line 154
    .line 155
    const/4 v9, 0x0

    .line 156
    invoke-static/range {v8 .. v13}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    const/4 v13, 0x0

    .line 161
    const/16 v14, 0x77

    .line 162
    .line 163
    const/4 v8, 0x0

    .line 164
    const/4 v11, 0x0

    .line 165
    invoke-static/range {v7 .. v14}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v6, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :goto_1
    iget-boolean v1, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 173
    .line 174
    if-eqz v1, :cond_2

    .line 175
    .line 176
    const/4 v1, 0x0

    .line 177
    iput-boolean v1, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 178
    .line 179
    return-void

    .line 180
    :cond_2
    invoke-static {}, Lcom/fsck/k9/K9;->saveSettingsAsync()V

    .line 181
    .line 182
    .line 183
    :cond_3
    return-void
.end method

.method public final updateSwipeAction(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->skipSaveSettings:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 5
    .line 6
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, v0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 13
    .line 14
    iget-object v2, v1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->swipeActions:Lnet/thunderbird/core/common/action/SwipeActions;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sparse-switch v3, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :sswitch_0
    const-string v3, "toggle_selection"

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    sget-object p1, Lnet/thunderbird/core/common/action/SwipeAction;->ToggleSelection:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :sswitch_1
    const-string v3, "spam"

    .line 37
    .line 38
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    sget-object p1, Lnet/thunderbird/core/common/action/SwipeAction;->Spam:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :sswitch_2
    const-string v3, "none"

    .line 48
    .line 49
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    sget-object p1, Lnet/thunderbird/core/common/action/SwipeAction;->None:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :sswitch_3
    const-string v3, "move"

    .line 59
    .line 60
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    sget-object p1, Lnet/thunderbird/core/common/action/SwipeAction;->Move:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :sswitch_4
    const-string v3, "toggle_star"

    .line 70
    .line 71
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    sget-object p1, Lnet/thunderbird/core/common/action/SwipeAction;->ToggleStar:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :sswitch_5
    const-string v3, "toggle_read"

    .line 81
    .line 82
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_0

    .line 87
    .line 88
    sget-object p1, Lnet/thunderbird/core/common/action/SwipeAction;->ToggleRead:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :sswitch_6
    const-string v3, "archive"

    .line 92
    .line 93
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_0

    .line 98
    .line 99
    sget-object p1, Lnet/thunderbird/core/common/action/SwipeAction;->Archive:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :sswitch_7
    const-string v3, "delete"

    .line 103
    .line 104
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_0

    .line 109
    .line 110
    sget-object p1, Lnet/thunderbird/core/common/action/SwipeAction;->Delete:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 111
    .line 112
    :goto_0
    invoke-interface {p2, v2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    move-object v5, p1

    .line 117
    check-cast v5, Lnet/thunderbird/core/common/action/SwipeActions;

    .line 118
    .line 119
    const/4 v11, 0x0

    .line 120
    const/16 v12, 0x3f7

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    const/4 v3, 0x0

    .line 124
    const/4 v4, 0x0

    .line 125
    const/4 v6, 0x0

    .line 126
    const/4 v7, 0x0

    .line 127
    const/4 v8, 0x0

    .line 128
    const/4 v9, 0x0

    .line 129
    const/4 v10, 0x0

    .line 130
    invoke-static/range {v1 .. v12}, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->copy$default(Lnet/thunderbird/core/preference/interaction/InteractionSettings;ZLjava/lang/String;Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;Lnet/thunderbird/core/common/action/SwipeActions;ZZZZZZI)Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    const/16 v7, 0x3f

    .line 135
    .line 136
    const/4 v1, 0x0

    .line 137
    const/4 v2, 0x0

    .line 138
    const/4 v5, 0x0

    .line 139
    invoke-static/range {v0 .. v7}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_0
    :goto_1
    new-instance p0, Ljava/lang/AssertionError;

    .line 148
    .line 149
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_7
        -0x2c971f3e -> :sswitch_6
        -0x267ab45f -> :sswitch_5
        -0x267a07a3 -> :sswitch_4
        0x333bd1 -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x35f749 -> :sswitch_1
        0x41550e61 -> :sswitch_0
    .end sparse-switch
.end method
