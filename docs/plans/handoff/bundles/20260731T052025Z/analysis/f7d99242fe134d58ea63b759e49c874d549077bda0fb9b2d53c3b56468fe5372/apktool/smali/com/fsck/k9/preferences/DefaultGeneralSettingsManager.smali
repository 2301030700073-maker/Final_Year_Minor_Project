.class public final Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/preference/GeneralSettingsManager;


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final changePublisher:Lnet/thunderbird/core/preference/PreferenceChangePublisher;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final debugLogConfigurator:Lnet/thunderbird/core/logging/config/DebugLogConfigurator;

.field public final debuggingSettingsPreferenceManager:Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;

.field public final displayCoreSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

.field public final displayInboxSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;

.field public final displayMiscSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;

.field public final displaySettingsSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;

.field public final displayVisualSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

.field public final generalSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final interactionSettingsPreferenceManager:Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

.field public final mutex:Lkotlinx/coroutines/sync/MutexImpl;

.field public final networkSettingsPreferenceManager:Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;

.field public final notificationPreferenceManager:Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

.field public final platformConfigProvider:Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

.field public final preferences:Lcom/fsck/k9/Preferences;

.field public final privacySettingsPreferenceManager:Lnet/thunderbird/core/preference/privacy/DefaultPrivacySettingsPreferenceManager;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/Preferences;Lkotlinx/coroutines/CoroutineScope;Lnet/thunderbird/core/preference/PreferenceChangePublisher;Lnet/thunderbird/core/preference/privacy/DefaultPrivacySettingsPreferenceManager;Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;Lnet/thunderbird/core/logging/config/DebugLogConfigurator;Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;Lnet/thunderbird/core/logging/Logger;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    move-object/from16 v5, p7

    .line 12
    .line 13
    move-object/from16 v6, p8

    .line 14
    .line 15
    move-object/from16 v7, p9

    .line 16
    .line 17
    move-object/from16 v8, p10

    .line 18
    .line 19
    move-object/from16 v9, p11

    .line 20
    .line 21
    move-object/from16 v10, p12

    .line 22
    .line 23
    move-object/from16 v11, p13

    .line 24
    .line 25
    move-object/from16 v12, p14

    .line 26
    .line 27
    move-object/from16 v13, p16

    .line 28
    .line 29
    sget-object v14, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 30
    .line 31
    sget-object v14, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 32
    .line 33
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    move-object/from16 v15, p1

    .line 40
    .line 41
    iput-object v15, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->preferences:Lcom/fsck/k9/Preferences;

    .line 42
    .line 43
    iput-object v1, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 44
    .line 45
    move-object/from16 v15, p3

    .line 46
    .line 47
    iput-object v15, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->changePublisher:Lnet/thunderbird/core/preference/PreferenceChangePublisher;

    .line 48
    .line 49
    iput-object v2, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->privacySettingsPreferenceManager:Lnet/thunderbird/core/preference/privacy/DefaultPrivacySettingsPreferenceManager;

    .line 50
    .line 51
    iput-object v3, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->notificationPreferenceManager:Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

    .line 52
    .line 53
    iput-object v4, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->displaySettingsSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;

    .line 54
    .line 55
    iput-object v5, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->displayCoreSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

    .line 56
    .line 57
    iput-object v6, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->displayInboxSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;

    .line 58
    .line 59
    iput-object v7, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->displayVisualSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 60
    .line 61
    iput-object v8, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 62
    .line 63
    iput-object v9, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->displayMiscSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;

    .line 64
    .line 65
    iput-object v10, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->networkSettingsPreferenceManager:Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;

    .line 66
    .line 67
    iput-object v11, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->debuggingSettingsPreferenceManager:Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;

    .line 68
    .line 69
    iput-object v12, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->interactionSettingsPreferenceManager:Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 70
    .line 71
    move-object/from16 v15, p15

    .line 72
    .line 73
    iput-object v15, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->debugLogConfigurator:Lnet/thunderbird/core/logging/config/DebugLogConfigurator;

    .line 74
    .line 75
    iput-object v14, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 76
    .line 77
    iput-object v13, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->platformConfigProvider:Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

    .line 78
    .line 79
    move-object/from16 v14, p17

    .line 80
    .line 81
    iput-object v14, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 82
    .line 83
    new-instance v14, Lkotlinx/coroutines/sync/MutexImpl;

    .line 84
    .line 85
    invoke-direct {v14}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v14, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 89
    .line 90
    iget-object v2, v2, Lnet/thunderbird/core/preference/privacy/DefaultPrivacySettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 91
    .line 92
    new-instance v14, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;

    .line 93
    .line 94
    const/4 v15, 0x1

    .line 95
    invoke-direct {v14, v15, v2, v0}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    new-instance v15, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 99
    .line 100
    const/4 v7, 0x3

    .line 101
    const/4 v1, 0x0

    .line 102
    const/4 v13, 0x0

    .line 103
    invoke-direct {v15, v7, v1, v13}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 104
    .line 105
    .line 106
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 107
    .line 108
    invoke-direct {v1, v14, v2, v15, v13}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 109
    .line 110
    .line 111
    iget-object v2, v3, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 112
    .line 113
    new-instance v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 114
    .line 115
    const/4 v14, 0x4

    .line 116
    const/4 v15, 0x0

    .line 117
    invoke-direct {v3, v7, v15, v14}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 118
    .line 119
    .line 120
    new-instance v14, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 121
    .line 122
    invoke-direct {v14, v1, v2, v3, v13}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v4, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 126
    .line 127
    new-instance v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 128
    .line 129
    const/4 v3, 0x5

    .line 130
    invoke-direct {v2, v7, v15, v3}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 131
    .line 132
    .line 133
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 134
    .line 135
    invoke-direct {v3, v14, v1, v2, v13}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v5, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 139
    .line 140
    new-instance v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 141
    .line 142
    const/4 v4, 0x6

    .line 143
    invoke-direct {v2, v7, v15, v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 144
    .line 145
    .line 146
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 147
    .line 148
    invoke-direct {v4, v3, v1, v2, v13}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v6, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 152
    .line 153
    new-instance v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 154
    .line 155
    const/4 v3, 0x7

    .line 156
    invoke-direct {v2, v7, v15, v3}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 157
    .line 158
    .line 159
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 160
    .line 161
    invoke-direct {v3, v4, v1, v2, v13}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 162
    .line 163
    .line 164
    move-object/from16 v1, p9

    .line 165
    .line 166
    check-cast v1, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;

    .line 167
    .line 168
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 169
    .line 170
    new-instance v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 171
    .line 172
    const/16 v4, 0x8

    .line 173
    .line 174
    invoke-direct {v2, v7, v15, v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 175
    .line 176
    .line 177
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 178
    .line 179
    invoke-direct {v4, v3, v1, v2, v13}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v8, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->preferences:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 183
    .line 184
    new-instance v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;

    .line 185
    .line 186
    invoke-direct {v2, v0, v15, v13}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 187
    .line 188
    .line 189
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 190
    .line 191
    invoke-direct {v3, v4, v1, v2, v13}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 192
    .line 193
    .line 194
    iget-object v1, v9, Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 195
    .line 196
    new-instance v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 197
    .line 198
    const/16 v4, 0x9

    .line 199
    .line 200
    invoke-direct {v2, v7, v15, v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 201
    .line 202
    .line 203
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 204
    .line 205
    invoke-direct {v4, v3, v1, v2, v13}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v10, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 209
    .line 210
    new-instance v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 211
    .line 212
    const/4 v3, 0x2

    .line 213
    invoke-direct {v2, v7, v15, v3}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 214
    .line 215
    .line 216
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 217
    .line 218
    invoke-direct {v3, v4, v1, v2, v13}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 219
    .line 220
    .line 221
    iget-object v1, v11, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 222
    .line 223
    new-instance v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;

    .line 224
    .line 225
    const/4 v4, 0x1

    .line 226
    invoke-direct {v2, v0, v15, v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 227
    .line 228
    .line 229
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 230
    .line 231
    invoke-direct {v4, v3, v1, v2, v13}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 232
    .line 233
    .line 234
    iget-object v1, v12, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 235
    .line 236
    new-instance v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 237
    .line 238
    invoke-direct {v2, v7, v15, v7}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 239
    .line 240
    .line 241
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 242
    .line 243
    invoke-direct {v3, v4, v1, v2, v13}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 244
    .line 245
    .line 246
    new-instance v1, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 247
    .line 248
    const-wide v4, 0x7fffffffffffffffL

    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    invoke-direct {v1, v4, v5}, Lkotlinx/coroutines/flow/StartedWhileSubscribed;-><init>(J)V

    .line 254
    .line 255
    .line 256
    new-instance v2, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 257
    .line 258
    const/16 v4, 0x7e

    .line 259
    .line 260
    move-object/from16 v13, p16

    .line 261
    .line 262
    invoke-direct {v2, v13, v15, v4}, Lnet/thunderbird/core/preference/GeneralSettings;-><init>(Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;Lnet/thunderbird/core/preference/privacy/PrivacySettings;I)V

    .line 263
    .line 264
    .line 265
    move-object/from16 v4, p2

    .line 266
    .line 267
    invoke-static {v3, v4, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    iput-object v1, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->generalSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 272
    .line 273
    return-void
.end method


# virtual methods
.method public final getConfig()Lnet/thunderbird/core/preference/GeneralSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->generalSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    .line 3
    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 10
    .line 11
    return-object p0
.end method

.method public final declared-synchronized getSettings()Lnet/thunderbird/core/preference/GeneralSettings;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->generalSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 3
    .line 4
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 5
    .line 6
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v0
.end method

.method public final save(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 2
    .line 3
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 4
    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, p0, p1, v2, v1}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    iget-object v1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 15
    .line 16
    invoke-static {v1, p0, v2, v0, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 17
    .line 18
    .line 19
    return-void
.end method
