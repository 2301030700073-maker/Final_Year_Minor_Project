.class public final Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;
.super Lcom/mikepenz/fastadapter/listeners/ClickEventHook;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;->this$0:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 1

    .line 1
    iget p0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    instance-of p0, p1, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    :cond_0
    return-object v0

    .line 14
    :pswitch_0
    instance-of p0, p1, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem$ViewHolder;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 19
    .line 20
    :cond_1
    return-object v0

    .line 21
    :pswitch_1
    instance-of p0, p1, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    check-cast p1, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;

    .line 26
    .line 27
    iget-object v0, p1, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;->menuAddContact:Landroid/view/View;

    .line 28
    .line 29
    :cond_2
    return-object v0

    .line 30
    :pswitch_2
    instance-of p0, p1, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;

    .line 31
    .line 32
    if-eqz p0, :cond_3

    .line 33
    .line 34
    check-cast p1, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;->menuOverflow:Landroid/view/View;

    .line 37
    .line 38
    :cond_3
    return-object v0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/items/AbstractItem;)V
    .locals 3

    .line 1
    iget p2, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    const/high16 v1, 0x10080000

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;->this$0:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;

    .line 8
    .line 9
    packed-switch p2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p4, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;

    .line 13
    .line 14
    iget-object p1, p4, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;->participant:Lcom/fsck/k9/ui/messagedetails/Participant;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/fsck/k9/ui/messagedetails/Participant;->contactLookupUri:Landroid/net/Uri;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p2, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->showContactLauncher$delegate:Lkotlin/Lazy;

    .line 22
    .line 23
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lcom/fsck/k9/ui/messagedetails/ShowContactLauncher;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance p2, Landroid/content/Intent;

    .line 37
    .line 38
    const-string p3, "android.intent.action.VIEW"

    .line 39
    .line 40
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :pswitch_0
    check-cast p4, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem;

    .line 54
    .line 55
    iget-object p1, p4, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem;->cryptoDetails:Lcom/fsck/k9/ui/messagedetails/CryptoDetails;

    .line 56
    .line 57
    iget-boolean p1, p1, Lcom/fsck/k9/ui/messagedetails/CryptoDetails;->isClickable:Z

    .line 58
    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->getViewModel()Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    iget-object p1, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->cryptoResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    sget-object p2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->Companion:Lcom/fsck/k9/view/MessageCryptoDisplayStatus$Companion;

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus$Companion;->fromResultAnnotation(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 80
    .line 81
    .line 82
    move-result p4

    .line 83
    const/4 v1, 0x3

    .line 84
    const/4 v2, 0x0

    .line 85
    packed-switch p4, :pswitch_data_1

    .line 86
    .line 87
    .line 88
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    const/4 p4, 0x7

    .line 93
    if-eq p2, p4, :cond_2

    .line 94
    .line 95
    const/16 p4, 0xe

    .line 96
    .line 97
    if-eq p2, p4, :cond_2

    .line 98
    .line 99
    iget-object p1, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpInsecureWarningPendingIntent:Landroid/app/PendingIntent;

    .line 100
    .line 101
    if-eqz p1, :cond_5

    .line 102
    .line 103
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance p2, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel$onCryptoStatusClicked$2;

    .line 108
    .line 109
    invoke-direct {p2, p0, v2, v0}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel$onCryptoStatusClicked$2;-><init>(Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 110
    .line 111
    .line 112
    invoke-static {p1, v2, v2, p2, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-instance p2, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel$onCryptoStatusClicked$2;

    .line 121
    .line 122
    invoke-direct {p2, p0, v2, p3}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel$onCryptoStatusClicked$2;-><init>(Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1, v2, v2, p2, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :pswitch_2
    iget-object p2, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 130
    .line 131
    iget-object p3, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 132
    .line 133
    const/4 p4, -0x1

    .line 134
    if-eqz p3, :cond_3

    .line 135
    .line 136
    iget p3, p3, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    .line 137
    .line 138
    if-eq p3, p4, :cond_3

    .line 139
    .line 140
    iget-object p1, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpPendingIntent:Landroid/app/PendingIntent;

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    if-eqz p2, :cond_4

    .line 144
    .line 145
    iget-object p1, p2, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 146
    .line 147
    if-eqz p1, :cond_4

    .line 148
    .line 149
    iget p1, p1, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    .line 150
    .line 151
    if-eq p1, p4, :cond_4

    .line 152
    .line 153
    iget-object p1, p2, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpPendingIntent:Landroid/app/PendingIntent;

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_4
    move-object p1, v2

    .line 157
    :goto_1
    if-eqz p1, :cond_5

    .line 158
    .line 159
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    new-instance p3, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 164
    .line 165
    const/16 p4, 0x9

    .line 166
    .line 167
    invoke-direct {p3, p0, p1, v2, p4}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 168
    .line 169
    .line 170
    invoke-static {p2, v2, v2, p3, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 171
    .line 172
    .line 173
    :cond_5
    :goto_2
    return-void

    .line 174
    :pswitch_3
    check-cast p4, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;

    .line 175
    .line 176
    iget-object p1, p4, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;->participant:Lcom/fsck/k9/ui/messagedetails/Participant;

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagedetails/Participant;->getAddress()Lcom/fsck/k9/mail/Address;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object p2, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->addToContactsLauncher$delegate:Lkotlin/Lazy;

    .line 183
    .line 184
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    check-cast p2, Lcom/fsck/k9/ui/messagedetails/AddToContactsLauncher;

    .line 189
    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    iget-object p3, p1, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 195
    .line 196
    iget-object p1, p1, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    new-instance p2, Landroid/content/Intent;

    .line 205
    .line 206
    const-string p4, "android.intent.action.INSERT_OR_EDIT"

    .line 207
    .line 208
    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string/jumbo p4, "vnd.android.cursor.item/contact"

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    .line 216
    .line 217
    const-string p4, "email"

    .line 218
    .line 219
    invoke-virtual {p2, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    .line 221
    .line 222
    if-eqz p3, :cond_6

    .line 223
    .line 224
    const-string p1, "name"

    .line 225
    .line 226
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    .line 228
    .line 229
    :cond_6
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :pswitch_4
    check-cast p4, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;

    .line 237
    .line 238
    iget-object p2, p4, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;->participant:Lcom/fsck/k9/ui/messagedetails/Participant;

    .line 239
    .line 240
    new-instance p4, Landroidx/appcompat/widget/PopupMenu;

    .line 241
    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-direct {p4, v1, p1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 247
    .line 248
    .line 249
    new-instance p1, Landroidx/appcompat/view/SupportMenuInflater;

    .line 250
    .line 251
    invoke-direct {p1, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    .line 252
    .line 253
    .line 254
    const v1, 0x7f0e000f

    .line 255
    .line 256
    .line 257
    iget-object v2, p4, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 258
    .line 259
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/view/SupportMenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    iput-boolean v0, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    .line 266
    .line 267
    invoke-virtual {p2}, Lcom/fsck/k9/ui/messagedetails/Participant;->getAddress()Lcom/fsck/k9/mail/Address;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    iget-object p1, p1, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 272
    .line 273
    if-nez p1, :cond_7

    .line 274
    .line 275
    const p1, 0x7f09015e

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 283
    .line 284
    .line 285
    :cond_7
    new-instance p1, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;

    .line 286
    .line 287
    const/16 v0, 0x12

    .line 288
    .line 289
    invoke-direct {p1, v0, p0, p2}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    iput-object p1, p4, Landroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    .line 293
    .line 294
    iget-object p0, p4, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 295
    .line 296
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-eqz p1, :cond_8

    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_8
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 304
    .line 305
    if-eqz p1, :cond_9

    .line 306
    .line 307
    invoke-virtual {p0, p3, p3, p3, p3}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 308
    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_9
    const-string p0, "MenuPopupHelper cannot be used without an anchor"

    .line 312
    .line 313
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    :goto_3
    return-void

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
