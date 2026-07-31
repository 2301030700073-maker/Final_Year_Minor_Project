.class public final synthetic Lkotlin/text/Regex$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavController$NavControllerNavigatorState;Landroidx/navigation/fragment/FragmentNavigator;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lcom/jcraft/jzlib/Adler32;Ljava/io/InputStream;Lnet/thunderbird/core/common/mail/EmailAddress;)V
    .locals 0

    .line 13
    const/4 p1, 0x7

    iput p1, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method

.method private final invoke$androidx$work$impl$constraints$controllers$BaseConstraintController$track$1$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->tracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    iget-object p0, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/util/LinkedHashSet;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->stopTracking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit v1

    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0

    .line 47
    :goto_1
    monitor-exit v1

    .line 48
    throw p0
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;

    .line 11
    .line 12
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->fontPreferenceKeys:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->bannedKeys:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_0
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroid/content/Context;

    .line 46
    .line 47
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lcom/fsck/k9/ui/settings/Library;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/Library;->url:Ljava/lang/String;

    .line 52
    .line 53
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 54
    .line 55
    const-string v3, "android.intent.action.VIEW"

    .line 56
    .line 57
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-direct {v1, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    const p0, 0x7f1202c4

    .line 69
    .line 70
    .line 71
    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 76
    .line 77
    .line 78
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_1
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 84
    .line 85
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 88
    .line 89
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Lkotlin/collections/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;

    .line 110
    .line 111
    iget-object v1, v1, Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 112
    .line 113
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onSaveAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    .line 119
    return-object p0

    .line 120
    :pswitch_2
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 123
    .line 124
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    .line 129
    .line 130
    if-eqz v0, :cond_2

    .line 131
    .line 132
    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 133
    .line 134
    invoke-virtual {v0, p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onViewAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 135
    .line 136
    .line 137
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 138
    .line 139
    return-object p0

    .line 140
    :pswitch_3
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, Ljava/lang/String;

    .line 143
    .line 144
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p0, Landroid/os/Bundle;

    .line 147
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v2, "SetupArchiveFolderDialogFragment fragment listener triggered with key: "

    .line 151
    .line 152
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v0, " and bundle: "

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0

    .line 171
    :pswitch_4
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v0, Ljava/lang/String;

    .line 174
    .line 175
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast p0, Ljava/lang/String;

    .line 178
    .line 179
    const-string v1, "Loading key \'"

    .line 180
    .line 181
    const-string v2, "\', value = \'"

    .line 182
    .line 183
    const-string v3, "\'"

    .line 184
    .line 185
    invoke-static {v1, v0, v2, p0, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :pswitch_5
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v0, Lcom/fsck/k9/controller/push/AccountPushController;

    .line 193
    .line 194
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast p0, Ljava/util/ArrayList;

    .line 197
    .line 198
    iget-object v0, v0, Lcom/fsck/k9/controller/push/AccountPushController;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 199
    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v2, "Updating push folders for account "

    .line 203
    .line 204
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v0, ": "

    .line 211
    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    return-object p0

    .line 223
    :pswitch_6
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 226
    .line 227
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider$getMessageCountsFlow$1$folderStatusChangedListener$1;

    .line 230
    .line 231
    iget-object v0, v0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->messagingControllerRegistry:Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

    .line 232
    .line 233
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 234
    .line 235
    invoke-virtual {v0, p0}, Lcom/fsck/k9/controller/MessagingController;->removeListener(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 236
    .line 237
    .line 238
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 239
    .line 240
    return-object p0

    .line 241
    :pswitch_7
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

    .line 244
    .line 245
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast p0, Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 248
    .line 249
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 250
    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v2, "drawer = "

    .line 254
    .line 255
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v0, ", localSearch = "

    .line 262
    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    return-object p0

    .line 274
    :pswitch_8
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 277
    .line 278
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1$$ExternalSyntheticLambda0;

    .line 281
    .line 282
    iget-object v0, v0, Lcom/fsck/k9/Preferences;->accountsChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 283
    .line 284
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 288
    .line 289
    return-object p0

    .line 290
    :pswitch_9
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 293
    .line 294
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1$$ExternalSyntheticLambda0;

    .line 297
    .line 298
    iget-object v0, v0, Lcom/fsck/k9/Preferences;->accountsChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 299
    .line 300
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 304
    .line 305
    return-object p0

    .line 306
    :pswitch_a
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v0, Lcoil3/network/DeDupeConcurrentRequestStrategy;

    .line 309
    .line 310
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast p0, Ljava/lang/String;

    .line 313
    .line 314
    invoke-static {v0, p0}, Lcoil3/network/DeDupeConcurrentRequestStrategy;->$r8$lambda$4SopCSRa55i8CzFqqlrXse9Piu8(Lcoil3/network/DeDupeConcurrentRequestStrategy;Ljava/lang/String;)Lkotlin/Unit;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    return-object p0

    .line 319
    :pswitch_b
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v0, Lcoil3/gif/AnimatedImageDecoder;

    .line 322
    .line 323
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 326
    .line 327
    invoke-static {v0, p0}, Lcoil3/gif/AnimatedImageDecoder;->$r8$lambda$0-T76Y8PId9ZheZVUUwGXNgihac(Lcoil3/gif/AnimatedImageDecoder;Lkotlin/jvm/internal/Ref$BooleanRef;)Landroid/graphics/drawable/Drawable;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    return-object p0

    .line 332
    :pswitch_c
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v0, Lcoil3/fetch/Fetcher$Factory;

    .line 335
    .line 336
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast p0, Lkotlin/reflect/KClass;

    .line 339
    .line 340
    invoke-static {v0, p0}, Lcoil3/ComponentRegistry$Builder;->$r8$lambda$v5LFKsxm-LwoPakELz6HjKKusIM(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)Ljava/util/List;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    return-object p0

    .line 345
    :pswitch_d
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 348
    .line 349
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;

    .line 352
    .line 353
    iget-object v0, v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->folderSettingsListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 354
    .line 355
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 359
    .line 360
    return-object p0

    .line 361
    :pswitch_e
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 364
    .line 365
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;

    .line 368
    .line 369
    iget-object v0, v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->folderSettingsListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 370
    .line 371
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 375
    .line 376
    return-object p0

    .line 377
    :pswitch_f
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 380
    .line 381
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 384
    .line 385
    new-instance v1, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;

    .line 386
    .line 387
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object p0

    .line 391
    check-cast p0, Ljava/lang/String;

    .line 392
    .line 393
    invoke-direct {v1, p0}, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v1}, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 400
    .line 401
    return-object p0

    .line 402
    :pswitch_10
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v0, Lapp/k9mail/feature/onboarding/migration/noop/NoOpOnboardingMigrationManager;

    .line 405
    .line 406
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast p0, Landroidx/navigation/NavHostController;

    .line 409
    .line 410
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    const-string v0, "account_setup"

    .line 414
    .line 415
    invoke-static {p0, v0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 419
    .line 420
    return-object p0

    .line 421
    :pswitch_11
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v0, Lapp/k9mail/feature/migration/provider/SettingsProvider;

    .line 424
    .line 425
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast p0, Landroid/os/ParcelFileDescriptor;

    .line 428
    .line 429
    iget-object v1, v0, Lapp/k9mail/feature/migration/provider/SettingsProvider;->accountManager$delegate:Lkotlin/Lazy;

    .line 430
    .line 431
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 436
    .line 437
    check-cast v1, Lcom/fsck/k9/Preferences;

    .line 438
    .line 439
    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 444
    .line 445
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 446
    .line 447
    .line 448
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    if-eqz v3, :cond_3

    .line 457
    .line 458
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 463
    .line 464
    iget-object v3, v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 465
    .line 466
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    goto :goto_3

    .line 470
    :cond_3
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 471
    .line 472
    invoke-direct {v1, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 473
    .line 474
    .line 475
    :try_start_1
    iget-object p0, v0, Lapp/k9mail/feature/migration/provider/SettingsProvider;->settingsExporter$delegate:Lkotlin/Lazy;

    .line 476
    .line 477
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object p0

    .line 481
    check-cast p0, Lcom/fsck/k9/preferences/SettingsExporter;

    .line 482
    .line 483
    const/4 v0, 0x1

    .line 484
    invoke-virtual {p0, v1, v0, v2, v0}, Lcom/fsck/k9/preferences/SettingsExporter;->exportPreferences(Ljava/io/OutputStream;ZLjava/util/Set;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 488
    .line 489
    .line 490
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 491
    .line 492
    return-object p0

    .line 493
    :catchall_0
    move-exception p0

    .line 494
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 495
    :catchall_1
    move-exception v0

    .line 496
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 497
    .line 498
    .line 499
    throw v0

    .line 500
    :pswitch_12
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 501
    .line 502
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 503
    .line 504
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 507
    .line 508
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object p0

    .line 512
    check-cast p0, Ljava/lang/Boolean;

    .line 513
    .line 514
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 515
    .line 516
    .line 517
    move-result p0

    .line 518
    if-eqz p0, :cond_4

    .line 519
    .line 520
    const-string p0, "outgoing-server/validation"

    .line 521
    .line 522
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 523
    .line 524
    const/16 v2, 0x9

    .line 525
    .line 526
    invoke-direct {v1, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, p0, v1}, Landroidx/navigation/NavHostController;->navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 530
    .line 531
    .line 532
    goto :goto_4

    .line 533
    :cond_4
    const-string p0, "outgoing-server/config"

    .line 534
    .line 535
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 536
    .line 537
    const/16 v2, 0xa

    .line 538
    .line 539
    invoke-direct {v1, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v0, p0, v1}, Landroidx/navigation/NavHostController;->navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 543
    .line 544
    .line 545
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 546
    .line 547
    return-object p0

    .line 548
    :pswitch_13
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 549
    .line 550
    check-cast v0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;

    .line 551
    .line 552
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast p0, Lapp/k9mail/core/ui/compose/common/window/FoldableState;

    .line 555
    .line 556
    iget-object v0, v0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->_foldableState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 557
    .line 558
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    .line 563
    .line 564
    const-string v2, "Foldable state changed: "

    .line 565
    .line 566
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    const-string v0, " -> "

    .line 573
    .line 574
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object p0

    .line 584
    return-object p0

    .line 585
    :pswitch_14
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 586
    .line 587
    check-cast v0, Landroidx/window/layout/HardwareFoldingFeature;

    .line 588
    .line 589
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast p0, Lapp/k9mail/core/ui/compose/common/window/FoldableState;

    .line 592
    .line 593
    if-eqz v0, :cond_5

    .line 594
    .line 595
    iget-object v1, v0, Landroidx/window/layout/HardwareFoldingFeature;->state:Landroidx/window/layout/FoldingFeature$State;

    .line 596
    .line 597
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 598
    .line 599
    const-string v3, "Window layout changed: foldingFeature="

    .line 600
    .line 601
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    const-string v0, ", state="

    .line 608
    .line 609
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const-string v0, ", newState="

    .line 616
    .line 617
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object p0

    .line 627
    return-object p0

    .line 628
    :pswitch_15
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 629
    .line 630
    check-cast v0, Ljava/io/InputStream;

    .line 631
    .line 632
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 633
    .line 634
    check-cast p0, Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 635
    .line 636
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    .line 638
    .line 639
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 640
    .line 641
    .line 642
    :try_start_3
    new-instance v1, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;

    .line 643
    .line 644
    invoke-direct {v1, v0, p0}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;-><init>(Ljava/io/InputStream;Lnet/thunderbird/core/common/mail/EmailAddress;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v1}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->parse()Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult;

    .line 648
    .line 649
    .line 650
    move-result-object p0
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException; {:try_start_3 .. :try_end_3} :catch_1

    .line 651
    goto :goto_6

    .line 652
    :catch_1
    move-exception p0

    .line 653
    new-instance v0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult$ParserError;

    .line 654
    .line 655
    invoke-direct {v0, p0}, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult$ParserError;-><init>(Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;)V

    .line 656
    .line 657
    .line 658
    :goto_5
    move-object p0, v0

    .line 659
    goto :goto_6

    .line 660
    :catch_2
    move-exception p0

    .line 661
    new-instance v0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult$ParserError;

    .line 662
    .line 663
    new-instance v1, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 664
    .line 665
    const-string v2, "Error parsing Autoconfig XML"

    .line 666
    .line 667
    invoke-direct {v1, v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 668
    .line 669
    .line 670
    invoke-direct {v0, v1}, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult$ParserError;-><init>(Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;)V

    .line 671
    .line 672
    .line 673
    goto :goto_5

    .line 674
    :goto_6
    return-object p0

    .line 675
    :pswitch_16
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 676
    .line 677
    check-cast v0, Ljava/lang/String;

    .line 678
    .line 679
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 680
    .line 681
    check-cast p0, Landroidx/work/impl/WorkManagerImpl;

    .line 682
    .line 683
    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 684
    .line 685
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 686
    .line 687
    .line 688
    new-instance v2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 689
    .line 690
    const/16 v3, 0xf

    .line 691
    .line 692
    invoke-direct {v2, v1, v0, p0, v3}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    .line 696
    .line 697
    .line 698
    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 699
    .line 700
    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    .line 701
    .line 702
    invoke-static {v0, v1, p0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 703
    .line 704
    .line 705
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 706
    .line 707
    return-object p0

    .line 708
    :pswitch_17
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 709
    .line 710
    check-cast v0, Landroidx/work/impl/WorkManagerImpl;

    .line 711
    .line 712
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 713
    .line 714
    check-cast p0, Ljava/util/UUID;

    .line 715
    .line 716
    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 717
    .line 718
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 719
    .line 720
    .line 721
    new-instance v2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 722
    .line 723
    const/4 v3, 0x7

    .line 724
    invoke-direct {v2, v3, v0, p0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    .line 728
    .line 729
    .line 730
    iget-object p0, v0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 731
    .line 732
    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 733
    .line 734
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    .line 735
    .line 736
    invoke-static {p0, v1, v0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 737
    .line 738
    .line 739
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 740
    .line 741
    return-object p0

    .line 742
    :pswitch_18
    invoke-direct {p0}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->invoke$androidx$work$impl$constraints$controllers$BaseConstraintController$track$1$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object p0

    .line 746
    return-object p0

    .line 747
    :pswitch_19
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 748
    .line 749
    check-cast v0, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 750
    .line 751
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 752
    .line 753
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 754
    .line 755
    sget-object v3, Landroidx/work/impl/constraints/SharedNetworkCallback;->requestsLock:Ljava/lang/Object;

    .line 756
    .line 757
    monitor-enter v3

    .line 758
    :try_start_4
    sget-object v4, Landroidx/work/impl/constraints/SharedNetworkCallback;->requests:Ljava/util/LinkedHashMap;

    .line 759
    .line 760
    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 764
    .line 765
    .line 766
    move-result v0

    .line 767
    if-eqz v0, :cond_6

    .line 768
    .line 769
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    sget-object v4, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 774
    .line 775
    const-string v5, "NetworkRequestConstraintController unregister shared callback"

    .line 776
    .line 777
    invoke-virtual {v0, v4, v5}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    sget-object v0, Landroidx/work/impl/constraints/SharedNetworkCallback;->INSTANCE:Landroidx/work/impl/constraints/SharedNetworkCallback;

    .line 781
    .line 782
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 783
    .line 784
    .line 785
    sput-object v1, Landroidx/work/impl/constraints/SharedNetworkCallback;->isBlocked:Ljava/lang/Boolean;

    .line 786
    .line 787
    sput-object v1, Landroidx/work/impl/constraints/SharedNetworkCallback;->cachedCapabilities:Landroid/net/NetworkCapabilities;

    .line 788
    .line 789
    sput-boolean v2, Landroidx/work/impl/constraints/SharedNetworkCallback;->capabilitiesInitialized:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 790
    .line 791
    goto :goto_7

    .line 792
    :catchall_2
    move-exception p0

    .line 793
    goto :goto_8

    .line 794
    :cond_6
    :goto_7
    monitor-exit v3

    .line 795
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 796
    .line 797
    return-object p0

    .line 798
    :goto_8
    monitor-exit v3

    .line 799
    throw p0

    .line 800
    :pswitch_1a
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 801
    .line 802
    check-cast v0, Landroidx/window/layout/FoldingFeature$State;

    .line 803
    .line 804
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 805
    .line 806
    check-cast p0, Landroidx/camera/view/TextureViewImplementation$$ExternalSyntheticLambda3;

    .line 807
    .line 808
    iget-object v0, v0, Landroidx/window/layout/FoldingFeature$State;->description:Ljava/lang/Object;

    .line 809
    .line 810
    check-cast v0, Landroidx/window/layout/adapter/WindowBackend;

    .line 811
    .line 812
    invoke-interface {v0, p0}, Landroidx/window/layout/adapter/WindowBackend;->unregisterLayoutChangeCallback(Landroidx/core/util/Consumer;)V

    .line 813
    .line 814
    .line 815
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 816
    .line 817
    return-object p0

    .line 818
    :pswitch_1b
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 819
    .line 820
    check-cast v0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 821
    .line 822
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 823
    .line 824
    check-cast p0, Landroidx/fragment/app/Fragment;

    .line 825
    .line 826
    iget-object v1, v0, Landroidx/navigation/NavController$NavControllerNavigatorState;->transitionsInProgress:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 827
    .line 828
    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 829
    .line 830
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v1

    .line 834
    check-cast v1, Ljava/lang/Iterable;

    .line 835
    .line 836
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 841
    .line 842
    .line 843
    move-result v2

    .line 844
    if-eqz v2, :cond_8

    .line 845
    .line 846
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v2

    .line 850
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 851
    .line 852
    invoke-static {}, Landroidx/navigation/fragment/FragmentNavigator;->isLoggingEnabled()Z

    .line 853
    .line 854
    .line 855
    move-result v3

    .line 856
    if-eqz v3, :cond_7

    .line 857
    .line 858
    const-string v3, "FragmentNavigator"

    .line 859
    .line 860
    new-instance v4, Ljava/lang/StringBuilder;

    .line 861
    .line 862
    const-string v5, "Marking transition complete for entry "

    .line 863
    .line 864
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    const-string v5, " due to fragment "

    .line 871
    .line 872
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    const-string v5, " viewmodel being cleared"

    .line 879
    .line 880
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v4

    .line 887
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    .line 889
    .line 890
    :cond_7
    invoke-virtual {v0, v2}, Landroidx/navigation/NavController$NavControllerNavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    .line 891
    .line 892
    .line 893
    goto :goto_9

    .line 894
    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 895
    .line 896
    return-object p0

    .line 897
    :pswitch_1c
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 898
    .line 899
    check-cast v0, Lkotlin/text/Regex;

    .line 900
    .line 901
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 902
    .line 903
    check-cast p0, Ljava/lang/CharSequence;

    .line 904
    .line 905
    invoke-virtual {v0, v2, p0}, Lkotlin/text/Regex;->find(ILjava/lang/CharSequence;)Lkotlin/text/MatcherMatchResult;

    .line 906
    .line 907
    .line 908
    move-result-object p0

    .line 909
    return-object p0

    .line 910
    nop

    .line 911
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
