.class public final Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final $matched:Ljava/lang/Object;

.field public final $predicate:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final $this_flow:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 27
    iput p4, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$r8$classId:I

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$matched:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$this_flow:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$predicate:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/fsck/k9/ui/messagelist/MessageListFragment;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$r8$classId:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$this_flow:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$matched:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$predicate:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$matched:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p2}, Lkotlinx/coroutines/internal/InlineList;->threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$this_flow:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p2, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const/16 v1, 0x14

    .line 19
    .line 20
    invoke-direct {p2, p1, v0, v1}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$predicate:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$r8$classId:I

    .line 8
    .line 9
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    const/high16 v5, -0x80000000

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    .line 16
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    iget-object v9, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$matched:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$this_flow:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v11, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$predicate:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v12, 0x0

    .line 25
    packed-switch v3, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    check-cast v11, Lnet/thunderbird/feature/account/AccountId;

    .line 29
    .line 30
    check-cast v10, Landroid/content/Context;

    .line 31
    .line 32
    move-object v0, v1

    .line 33
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Effect;

    .line 34
    .line 35
    instance-of v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Effect$NavigateBack;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    instance-of v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Effect$NavigateToIncomingServerSettings;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    sget v0, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 50
    .line 51
    new-instance v0, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountEditIncomingSettings;

    .line 52
    .line 53
    iget-object v1, v11, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountEditIncomingSettings;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v10, v0}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    instance-of v0, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Effect$NavigateToAdvancedFetchingMailSettings;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    sget v0, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 71
    .line 72
    new-instance v0, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountAdvancedFetchingMailSettings;

    .line 73
    .line 74
    iget-object v1, v11, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-direct {v0, v1}, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountAdvancedFetchingMailSettings;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v10, v0}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 88
    .line 89
    .line 90
    move-object v8, v12

    .line 91
    :goto_0
    return-object v8

    .line 92
    :pswitch_0
    check-cast v9, Lkotlin/coroutines/CoroutineContext;

    .line 93
    .line 94
    check-cast v11, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 95
    .line 96
    invoke-static {v9, v1, v10, v11, v2}, Lkotlinx/coroutines/flow/internal/CombineKt;->withContextUndispatched(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-ne v0, v7, :cond_3

    .line 101
    .line 102
    move-object v8, v0

    .line 103
    :cond_3
    return-object v8

    .line 104
    :pswitch_1
    check-cast v9, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 105
    .line 106
    instance-of v3, v2, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$2$1;

    .line 107
    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    move-object v3, v2

    .line 111
    check-cast v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$2$1;

    .line 112
    .line 113
    iget v13, v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$2$1;->label:I

    .line 114
    .line 115
    and-int v14, v13, v5

    .line 116
    .line 117
    if-eqz v14, :cond_4

    .line 118
    .line 119
    sub-int/2addr v13, v5

    .line 120
    iput v13, v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$2$1;->label:I

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$2$1;

    .line 124
    .line 125
    invoke-direct {v3, v0, v2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;Lkotlin/coroutines/Continuation;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    iget-object v0, v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 129
    .line 130
    iget v2, v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$2$1;->label:I

    .line 131
    .line 132
    if-eqz v2, :cond_6

    .line 133
    .line 134
    if-ne v2, v6, :cond_5

    .line 135
    .line 136
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_5

    .line 140
    .line 141
    :cond_5
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    move-object v7, v12

    .line 145
    goto/16 :goto_6

    .line 146
    .line 147
    :cond_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    check-cast v10, Lkotlinx/coroutines/flow/FlowCollector;

    .line 151
    .line 152
    move-object v0, v1

    .line 153
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListInfo;

    .line 154
    .line 155
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListInfo;->messageListItems:Ljava/util/List;

    .line 156
    .line 157
    new-instance v1, Ljava/util/ArrayList;

    .line 158
    .line 159
    const/16 v2, 0xa

    .line 160
    .line 161
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_b

    .line 177
    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    move-object v13, v2

    .line 183
    check-cast v13, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 184
    .line 185
    iget-object v2, v9, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->contactRepository$delegate:Lkotlin/Lazy;

    .line 186
    .line 187
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    check-cast v2, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 192
    .line 193
    iget-object v4, v13, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayAddress:Lcom/fsck/k9/mail/Address;

    .line 194
    .line 195
    if-eqz v4, :cond_7

    .line 196
    .line 197
    iget-object v4, v4, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 198
    .line 199
    if-nez v4, :cond_8

    .line 200
    .line 201
    :cond_7
    const-string v4, ""

    .line 202
    .line 203
    :cond_8
    check-cast v2, Lapp/k9mail/core/android/common/contact/CachingContactRepository;

    .line 204
    .line 205
    invoke-virtual {v2, v4}, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->getPhotoUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iget-object v4, v9, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->avatarMonogramCreator$delegate:Lkotlin/Lazy;

    .line 210
    .line 211
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    check-cast v4, Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

    .line 216
    .line 217
    iget-object v5, v13, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayName:Ljava/lang/CharSequence;

    .line 218
    .line 219
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    iget-object v14, v13, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayAddress:Lcom/fsck/k9/mail/Address;

    .line 224
    .line 225
    if-eqz v14, :cond_9

    .line 226
    .line 227
    iget-object v14, v14, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_9
    move-object v14, v12

    .line 231
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-static {v5, v14}, Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;->create(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v17

    .line 238
    move-object v4, v11

    .line 239
    check-cast v4, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 240
    .line 241
    iget-boolean v14, v4, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showMessageAvatar:Z

    .line 242
    .line 243
    invoke-virtual {v13}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    iget-object v5, v9, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 248
    .line 249
    invoke-virtual {v4, v5}, Lapp/k9mail/legacy/message/controller/MessageReference;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v16

    .line 253
    if-eqz v2, :cond_a

    .line 254
    .line 255
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    move-object/from16 v18, v2

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_a
    move-object/from16 v18, v12

    .line 263
    .line 264
    :goto_4
    const/4 v15, 0x0

    .line 265
    invoke-static/range {v13 .. v18}, Lorg/jsoup/helper/Validate;->toMessageItemUi(Lcom/fsck/k9/ui/messagelist/MessageListItem;ZZZLjava/lang/String;Ljava/lang/String;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_b
    iput v6, v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$2$1;->label:I

    .line 274
    .line 275
    invoke-interface {v10, v1, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    if-ne v0, v7, :cond_c

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_c
    :goto_5
    move-object v7, v8

    .line 283
    :goto_6
    return-object v7

    .line 284
    :pswitch_2
    move-object v0, v1

    .line 285
    check-cast v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Effect;

    .line 286
    .line 287
    sget-object v1, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Effect$RequestContactsPermission;->INSTANCE:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Effect$RequestContactsPermission;

    .line 288
    .line 289
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_d

    .line 294
    .line 295
    check-cast v9, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 296
    .line 297
    const-string v0, "android.permission.READ_CONTACTS"

    .line 298
    .line 299
    invoke-virtual {v9, v0}, Landroidx/activity/compose/ManagedActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_d
    sget-object v1, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Effect$RequestNotificationsPermission;->INSTANCE:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Effect$RequestNotificationsPermission;

    .line 304
    .line 305
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_e

    .line 310
    .line 311
    check-cast v10, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 312
    .line 313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 314
    .line 315
    const/16 v1, 0x21

    .line 316
    .line 317
    if-lt v0, v1, :cond_10

    .line 318
    .line 319
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 320
    .line 321
    invoke-virtual {v10, v0}, Landroidx/activity/compose/ManagedActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_e
    sget-object v1, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Effect$NavigateNext;->INSTANCE:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Effect$NavigateNext;

    .line 326
    .line 327
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_f

    .line 332
    .line 333
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 334
    .line 335
    invoke-interface {v11}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    goto :goto_7

    .line 339
    :cond_f
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 340
    .line 341
    .line 342
    move-object v8, v12

    .line 343
    :cond_10
    :goto_7
    return-object v8

    .line 344
    :pswitch_3
    move-object v0, v1

    .line 345
    check-cast v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Effect;

    .line 346
    .line 347
    instance-of v1, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Effect$NavigateNext;

    .line 348
    .line 349
    if-eqz v1, :cond_11

    .line 350
    .line 351
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 352
    .line 353
    check-cast v10, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;

    .line 354
    .line 355
    iget-object v0, v10, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 356
    .line 357
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 358
    .line 359
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    goto :goto_8

    .line 367
    :cond_11
    instance-of v0, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Effect$NavigateBack;

    .line 368
    .line 369
    if-eqz v0, :cond_12

    .line 370
    .line 371
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 372
    .line 373
    invoke-interface {v11}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_12
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 378
    .line 379
    .line 380
    move-object v8, v12

    .line 381
    :goto_8
    return-object v8

    .line 382
    :pswitch_4
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 383
    .line 384
    instance-of v3, v2, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$2$1$emit$1;

    .line 385
    .line 386
    if-eqz v3, :cond_13

    .line 387
    .line 388
    move-object v3, v2

    .line 389
    check-cast v3, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$2$1$emit$1;

    .line 390
    .line 391
    iget v13, v3, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$2$1$emit$1;->label:I

    .line 392
    .line 393
    and-int v14, v13, v5

    .line 394
    .line 395
    if-eqz v14, :cond_13

    .line 396
    .line 397
    sub-int/2addr v13, v5

    .line 398
    iput v13, v3, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$2$1$emit$1;->label:I

    .line 399
    .line 400
    goto :goto_9

    .line 401
    :cond_13
    new-instance v3, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$2$1$emit$1;

    .line 402
    .line 403
    invoke-direct {v3, v0, v2}, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$2$1$emit$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;Lkotlin/coroutines/Continuation;)V

    .line 404
    .line 405
    .line 406
    :goto_9
    iget-object v0, v3, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$2$1$emit$1;->result:Ljava/lang/Object;

    .line 407
    .line 408
    iget v2, v3, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$2$1$emit$1;->label:I

    .line 409
    .line 410
    if-eqz v2, :cond_15

    .line 411
    .line 412
    if-ne v2, v6, :cond_14

    .line 413
    .line 414
    iget-object v1, v3, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$2$1$emit$1;->L$0:Ljava/lang/Object;

    .line 415
    .line 416
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    goto :goto_a

    .line 420
    :cond_14
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    move-object v7, v12

    .line 424
    goto :goto_b

    .line 425
    :cond_15
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 431
    .line 432
    if-eqz v0, :cond_16

    .line 433
    .line 434
    new-instance v2, Landroidx/compose/material3/internal/AnchoredDragFinishedSignal;

    .line 435
    .line 436
    invoke-direct {v2}, Landroidx/compose/material3/internal/AnchoredDragFinishedSignal;-><init>()V

    .line 437
    .line 438
    .line 439
    invoke-interface {v0, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 440
    .line 441
    .line 442
    iput-object v1, v3, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$2$1$emit$1;->L$0:Ljava/lang/Object;

    .line 443
    .line 444
    iput v6, v3, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$2$1$emit$1;->label:I

    .line 445
    .line 446
    invoke-interface {v0, v3}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    if-ne v0, v7, :cond_16

    .line 451
    .line 452
    goto :goto_b

    .line 453
    :cond_16
    :goto_a
    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    .line 454
    .line 455
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;

    .line 456
    .line 457
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 458
    .line 459
    invoke-direct {v0, v11, v1, v10, v12}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    .line 460
    .line 461
    .line 462
    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 463
    .line 464
    invoke-static {v10, v12, v1, v0, v6}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 469
    .line 470
    move-object v7, v8

    .line 471
    :goto_b
    return-object v7

    .line 472
    :pswitch_5
    move-object v0, v1

    .line 473
    check-cast v0, Ljava/lang/Boolean;

    .line 474
    .line 475
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    check-cast v10, Landroidx/compose/animation/core/Transition;

    .line 480
    .line 481
    check-cast v9, Landroidx/compose/runtime/ProduceStateScope;

    .line 482
    .line 483
    if-eqz v0, :cond_17

    .line 484
    .line 485
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 486
    .line 487
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 492
    .line 493
    iget-object v1, v10, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 494
    .line 495
    invoke-virtual {v1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    iget-object v2, v10, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 500
    .line 501
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    check-cast v0, Ljava/lang/Boolean;

    .line 510
    .line 511
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    goto :goto_c

    .line 516
    :cond_17
    const/4 v0, 0x0

    .line 517
    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    check-cast v9, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 522
    .line 523
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ProduceStateScopeImpl;->setValue(Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    return-object v8

    .line 527
    :pswitch_6
    check-cast v10, Lkotlinx/coroutines/flow/FlowCollector;

    .line 528
    .line 529
    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 530
    .line 531
    instance-of v3, v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;

    .line 532
    .line 533
    if-eqz v3, :cond_18

    .line 534
    .line 535
    move-object v3, v2

    .line 536
    check-cast v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;

    .line 537
    .line 538
    iget v13, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    .line 539
    .line 540
    and-int v14, v13, v5

    .line 541
    .line 542
    if-eqz v14, :cond_18

    .line 543
    .line 544
    sub-int/2addr v13, v5

    .line 545
    iput v13, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    .line 546
    .line 547
    goto :goto_d

    .line 548
    :cond_18
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;

    .line 549
    .line 550
    invoke-direct {v3, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;Lkotlin/coroutines/Continuation;)V

    .line 551
    .line 552
    .line 553
    :goto_d
    iget-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->result:Ljava/lang/Object;

    .line 554
    .line 555
    iget v2, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    .line 556
    .line 557
    const/4 v5, 0x3

    .line 558
    const/4 v13, 0x2

    .line 559
    if-eqz v2, :cond_1d

    .line 560
    .line 561
    if-eq v2, v6, :cond_19

    .line 562
    .line 563
    if-eq v2, v13, :cond_1c

    .line 564
    .line 565
    if-ne v2, v5, :cond_1b

    .line 566
    .line 567
    :cond_19
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    :cond_1a
    move-object v7, v8

    .line 571
    goto :goto_f

    .line 572
    :cond_1b
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    move-object v7, v12

    .line 576
    goto :goto_f

    .line 577
    :cond_1c
    iget-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$0:Ljava/lang/Object;

    .line 578
    .line 579
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    goto :goto_e

    .line 583
    :cond_1d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    iget-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 587
    .line 588
    if-eqz v0, :cond_1e

    .line 589
    .line 590
    iput-object v12, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$0:Ljava/lang/Object;

    .line 591
    .line 592
    iput v6, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    .line 593
    .line 594
    invoke-interface {v10, v1, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    if-ne v0, v7, :cond_1a

    .line 599
    .line 600
    goto :goto_f

    .line 601
    :cond_1e
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 602
    .line 603
    iput-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$0:Ljava/lang/Object;

    .line 604
    .line 605
    iput v13, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    .line 606
    .line 607
    invoke-interface {v11, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    if-ne v0, v7, :cond_1f

    .line 612
    .line 613
    goto :goto_f

    .line 614
    :cond_1f
    :goto_e
    check-cast v0, Ljava/lang/Boolean;

    .line 615
    .line 616
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    if-nez v0, :cond_1a

    .line 621
    .line 622
    iput-boolean v6, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 623
    .line 624
    iput-object v12, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$0:Ljava/lang/Object;

    .line 625
    .line 626
    iput v5, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    .line 627
    .line 628
    invoke-interface {v10, v1, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    if-ne v0, v7, :cond_1a

    .line 633
    .line 634
    :goto_f
    return-object v7

    .line 635
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
