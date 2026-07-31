.class public final Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public synthetic L$1:Ljava/lang/Object;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 11
    .line 12
    check-cast p2, Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 13
    .line 14
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 15
    .line 16
    new-instance v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;

    .line 17
    .line 18
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetMessageListPreferences;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, p0, p3, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p2, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->L$1:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_0
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 34
    .line 35
    check-cast p2, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 36
    .line 37
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 38
    .line 39
    new-instance v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;

    .line 40
    .line 41
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-direct {v0, p0, p3, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 45
    .line 46
    .line 47
    iput-object p1, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    iput-object p2, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_1
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 57
    .line 58
    check-cast p2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 59
    .line 60
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 61
    .line 62
    new-instance v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;

    .line 63
    .line 64
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-direct {v0, p0, p3, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 68
    .line 69
    .line 70
    iput-object p1, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->L$0:Ljava/lang/Object;

    .line 71
    .line 72
    iput-object p2, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->L$1:Ljava/lang/Object;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->L$1:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v4, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 22
    .line 23
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 24
    .line 25
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 26
    .line 27
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 28
    .line 29
    iget-object v6, v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->uiDensity:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 30
    .line 31
    iget-boolean v7, v4, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isThreadedViewEnabled:Z

    .line 32
    .line 33
    iget-boolean v8, v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowCorrespondentNames:Z

    .line 34
    .line 35
    iget-boolean v9, v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowContactPicture:Z

    .line 36
    .line 37
    iget-boolean v10, v4, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowMessageListStars:Z

    .line 38
    .line 39
    iget-boolean v11, v4, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isMessageListSenderAboveSubject:Z

    .line 40
    .line 41
    iget v12, v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->previewLines:I

    .line 42
    .line 43
    iget-object v13, v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->this$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetMessageListPreferences;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance v0, Lkotlin/collections/builders/SetBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-boolean v4, v2, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDelete:Z

    .line 58
    .line 59
    if-eqz v4, :cond_0

    .line 60
    .line 61
    sget-object v4, Lnet/thunderbird/feature/mail/message/list/preferences/ActionRequiringUserConfirmation;->Delete:Lnet/thunderbird/feature/mail/message/list/preferences/ActionRequiringUserConfirmation;

    .line 62
    .line 63
    invoke-virtual {v0, v4}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-boolean v4, v2, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteStarred:Z

    .line 67
    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    sget-object v4, Lnet/thunderbird/feature/mail/message/list/preferences/ActionRequiringUserConfirmation;->DeleteStarred:Lnet/thunderbird/feature/mail/message/list/preferences/ActionRequiringUserConfirmation;

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-boolean v4, v2, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteFromNotification:Z

    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    sget-object v4, Lnet/thunderbird/feature/mail/message/list/preferences/ActionRequiringUserConfirmation;->DeleteFromNotification:Lnet/thunderbird/feature/mail/message/list/preferences/ActionRequiringUserConfirmation;

    .line 80
    .line 81
    invoke-virtual {v0, v4}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-boolean v4, v2, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmSpam:Z

    .line 85
    .line 86
    if-eqz v4, :cond_3

    .line 87
    .line 88
    sget-object v4, Lnet/thunderbird/feature/mail/message/list/preferences/ActionRequiringUserConfirmation;->Spam:Lnet/thunderbird/feature/mail/message/list/preferences/ActionRequiringUserConfirmation;

    .line 89
    .line 90
    invoke-virtual {v0, v4}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_3
    iget-boolean v4, v2, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDiscardMessage:Z

    .line 94
    .line 95
    if-eqz v4, :cond_4

    .line 96
    .line 97
    sget-object v4, Lnet/thunderbird/feature/mail/message/list/preferences/ActionRequiringUserConfirmation;->DiscardMessage:Lnet/thunderbird/feature/mail/message/list/preferences/ActionRequiringUserConfirmation;

    .line 98
    .line 99
    invoke-virtual {v0, v4}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_4
    iget-boolean v2, v2, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmMarkAllRead:Z

    .line 103
    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    sget-object v2, Lnet/thunderbird/feature/mail/message/list/preferences/ActionRequiringUserConfirmation;->MarkAllRead:Lnet/thunderbird/feature/mail/message/list/preferences/ActionRequiringUserConfirmation;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :cond_5
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    instance-of v2, v0, Lkotlinx/collections/immutable/ImmutableSet;

    .line 119
    .line 120
    if-eqz v2, :cond_6

    .line 121
    .line 122
    move-object v3, v0

    .line 123
    check-cast v3, Lkotlinx/collections/immutable/ImmutableSet;

    .line 124
    .line 125
    :cond_6
    if-nez v3, :cond_8

    .line 126
    .line 127
    sget-object v2, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->EMPTY:Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_7

    .line 137
    .line 138
    move-object v3, v2

    .line 139
    goto :goto_0

    .line 140
    :cond_7
    new-instance v3, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;

    .line 141
    .line 142
    invoke-direct {v3, v2}, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;-><init>(Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;->build()Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    move-object v3, v0

    .line 153
    :cond_8
    :goto_0
    move-object v14, v3

    .line 154
    iget-boolean v15, v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isUseBackgroundAsUnreadIndicator:Z

    .line 155
    .line 156
    invoke-direct/range {v5 .. v15}, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;-><init>(Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;ZZZZZILnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;Lkotlinx/collections/immutable/ImmutableSet;Z)V

    .line 157
    .line 158
    .line 159
    return-object v5

    .line 160
    :pswitch_0
    iget-object v1, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->L$0:Ljava/lang/Object;

    .line 161
    .line 162
    move-object v3, v1

    .line 163
    check-cast v3, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 164
    .line 165
    iget-object v1, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->L$1:Ljava/lang/Object;

    .line 166
    .line 167
    move-object v8, v1

    .line 168
    check-cast v8, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 169
    .line 170
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    const/4 v9, 0x0

    .line 174
    const/16 v10, 0x5f

    .line 175
    .line 176
    const/4 v4, 0x0

    .line 177
    const/4 v5, 0x0

    .line 178
    const/4 v6, 0x0

    .line 179
    const/4 v7, 0x0

    .line 180
    invoke-static/range {v3 .. v10}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iget-object v0, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->this$0:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 187
    .line 188
    iget-object v3, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->debugLogConfigurator:Lnet/thunderbird/core/logging/config/DebugLogConfigurator;

    .line 189
    .line 190
    iget-boolean v4, v8, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 191
    .line 192
    iget-object v3, v3, Lnet/thunderbird/core/logging/config/DebugLogConfigurator;->platformInitializer:Lnet/thunderbird/core/logging/config/PlatformInitializer;

    .line 193
    .line 194
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    sget-object v5, Ltimber/log/Timber;->trees:Ljava/util/ArrayList;

    .line 200
    .line 201
    monitor-enter v5

    .line 202
    :try_start_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 203
    .line 204
    .line 205
    new-array v2, v2, [Ltimber/log/Timber$Tree;

    .line 206
    .line 207
    sput-object v2, Ltimber/log/Timber;->treeArray:[Ltimber/log/Timber$Tree;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .line 209
    monitor-exit v5

    .line 210
    if-eqz v4, :cond_9

    .line 211
    .line 212
    new-instance v2, Ltimber/log/Timber$DebugTree;

    .line 213
    .line 214
    invoke-direct {v2}, Ltimber/log/Timber$DebugTree;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v2}, Ltimber/log/Timber$Forest;->plant(Ltimber/log/Timber$DebugTree;)V

    .line 218
    .line 219
    .line 220
    :cond_9
    iget-object v0, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->debugLogConfigurator:Lnet/thunderbird/core/logging/config/DebugLogConfigurator;

    .line 221
    .line 222
    iget-boolean v2, v8, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSyncLoggingEnabled:Z

    .line 223
    .line 224
    iget-object v3, v0, Lnet/thunderbird/core/logging/config/DebugLogConfigurator;->syncDebugFileLogSink:Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 225
    .line 226
    iget-object v0, v0, Lnet/thunderbird/core/logging/config/DebugLogConfigurator;->syncDebugCompositeSink:Lnet/thunderbird/core/logging/composite/CompositeLogSink;

    .line 227
    .line 228
    if-eqz v2, :cond_a

    .line 229
    .line 230
    check-cast v0, Lnet/thunderbird/core/logging/composite/DefaultCompositeLogSink;

    .line 231
    .line 232
    iget-object v0, v0, Lnet/thunderbird/core/logging/composite/DefaultCompositeLogSink;->manager:Lokhttp3/Headers$Builder;

    .line 233
    .line 234
    iget-object v0, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-nez v2, :cond_b

    .line 241
    .line 242
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_a
    check-cast v0, Lnet/thunderbird/core/logging/composite/DefaultCompositeLogSink;

    .line 247
    .line 248
    iget-object v0, v0, Lnet/thunderbird/core/logging/composite/DefaultCompositeLogSink;->manager:Lokhttp3/Headers$Builder;

    .line 249
    .line 250
    iget-object v0, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_b

    .line 257
    .line 258
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    :cond_b
    :goto_1
    return-object v1

    .line 262
    :catchall_0
    move-exception v0

    .line 263
    monitor-exit v5

    .line 264
    throw v0

    .line 265
    :pswitch_1
    iget-object v1, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->L$0:Ljava/lang/Object;

    .line 266
    .line 267
    move-object v4, v1

    .line 268
    check-cast v4, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 269
    .line 270
    iget-object v1, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->L$1:Ljava/lang/Object;

    .line 271
    .line 272
    move-object v11, v1

    .line 273
    check-cast v11, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 274
    .line 275
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    iget-object v0, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;->this$0:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 281
    .line 282
    iget-object v0, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 283
    .line 284
    new-instance v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8$$ExternalSyntheticLambda0;

    .line 285
    .line 286
    invoke-direct {v1, v11, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;I)V

    .line 287
    .line 288
    .line 289
    const/4 v2, 0x3

    .line 290
    invoke-static {v0, v3, v3, v1, v2}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 291
    .line 292
    .line 293
    iget-object v0, v4, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 294
    .line 295
    iget-object v5, v0, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 296
    .line 297
    const/16 v16, 0x0

    .line 298
    .line 299
    const/16 v17, 0x7df

    .line 300
    .line 301
    const/4 v6, 0x0

    .line 302
    const/4 v7, 0x0

    .line 303
    const/4 v8, 0x0

    .line 304
    const/4 v9, 0x0

    .line 305
    const/4 v10, 0x0

    .line 306
    const/4 v12, 0x0

    .line 307
    const/4 v13, 0x0

    .line 308
    const/4 v14, 0x0

    .line 309
    const/4 v15, 0x0

    .line 310
    invoke-static/range {v5 .. v17}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    const/16 v10, 0xb

    .line 315
    .line 316
    const/4 v7, 0x0

    .line 317
    move-object v5, v0

    .line 318
    invoke-static/range {v5 .. v10}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    const/4 v10, 0x0

    .line 323
    const/16 v11, 0x77

    .line 324
    .line 325
    const/4 v5, 0x0

    .line 326
    const/4 v8, 0x0

    .line 327
    invoke-static/range {v4 .. v11}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    return-object v0

    .line 332
    nop

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
