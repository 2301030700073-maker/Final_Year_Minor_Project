.class public final synthetic Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const v1, 0x7f120566

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object p0, p0, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    .line 31
    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    check-cast p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 37
    .line 38
    invoke-virtual {p0, v4}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_2
    check-cast p0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;

    .line 43
    .line 44
    iput-boolean v3, p0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mHasStableIds:Z

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mViews:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 49
    .line 50
    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    iget v0, p0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mViewTypeCount:I

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->continueSettlingToState(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    .line 67
    .line 68
    const/4 v2, 0x2

    .line 69
    if-ne v1, v2, :cond_1

    .line 70
    .line 71
    iget p0, p0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mViewTypeCount:I

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    return-void

    .line 77
    :pswitch_3
    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_4
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 84
    .line 85
    invoke-static {p0}, Lcom/google/android/material/button/MaterialButton;->$r8$lambda$082l-6qUlajHJ6tYsmjt9Msiwck(Lcom/google/android/material/button/MaterialButton;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_5
    check-cast p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchPreferenceMenuItem:Landroid/view/MenuItem;

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchPreferenceActionView:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchQuery:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz p0, :cond_2

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SearchView;->setQuery$1(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    const-string p0, "searchQuery"

    .line 111
    .line 112
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v2

    .line 116
    :cond_3
    const-string p0, "searchPreferenceActionView"

    .line 117
    .line 118
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v2

    .line 122
    :cond_4
    const-string p0, "searchPreferenceMenuItem"

    .line 123
    .line 124
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v2

    .line 128
    :pswitch_6
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;

    .line 129
    .line 130
    iget-boolean v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->notificationSettingsChanged:Z

    .line 131
    .line 132
    iget-object v1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 133
    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->notificationChannelManager:Lcom/fsck/k9/notification/NotificationChannelManager;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/fsck/k9/notification/NotificationChannelManager;->recreateMessagesNotificationChannel(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 142
    .line 143
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v2}, Lcom/fsck/k9/notification/NotificationController;->restoreNewMailNotifications(Ljava/util/List;)V

    .line 148
    .line 149
    .line 150
    :cond_5
    iput-boolean v3, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->notificationSettingsChanged:Z

    .line 151
    .line 152
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->preferences:Lcom/fsck/k9/Preferences;

    .line 153
    .line 154
    invoke-virtual {p0, v1}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :pswitch_7
    check-cast p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 159
    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_6

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-virtual {p0, v4}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->forcePostponedTransactions()V

    .line 175
    .line 176
    .line 177
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 178
    .line 179
    const v1, 0x7f090199

    .line 180
    .line 181
    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    new-array v2, v4, [Ljava/lang/Object;

    .line 187
    .line 188
    aput-object v1, v2, v3

    .line 189
    .line 190
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    const-string v2, "dialog-%d"

    .line 195
    .line 196
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    check-cast p0, Landroidx/fragment/app/DialogFragment;

    .line 205
    .line 206
    if-eqz p0, :cond_7

    .line 207
    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 209
    .line 210
    .line 211
    :cond_7
    :goto_1
    return-void

    .line 212
    :pswitch_8
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 213
    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    if-eqz p0, :cond_8

    .line 219
    .line 220
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 225
    .line 226
    .line 227
    :cond_8
    return-void

    .line 228
    :pswitch_9
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 229
    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    if-eqz p0, :cond_9

    .line 235
    .line 236
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 241
    .line 242
    .line 243
    :cond_9
    return-void

    .line 244
    :pswitch_a
    check-cast p0, Lcom/fsck/k9/notification/NotificationChannelManager;

    .line 245
    .line 246
    invoke-static {p0}, Lcom/fsck/k9/notification/NotificationChannelManager;->$r8$lambda$m3LNel5iYKrrYmwu_gXHemecIYY(Lcom/fsck/k9/notification/NotificationChannelManager;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :pswitch_b
    check-cast p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;

    .line 251
    .line 252
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 253
    .line 254
    iget-object v0, v0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v0, Landroid/widget/EditText;

    .line 257
    .line 258
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    const-string v1, "input_method"

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 272
    .line 273
    if-eqz v0, :cond_a

    .line 274
    .line 275
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 276
    .line 277
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast p0, Landroid/widget/EditText;

    .line 280
    .line 281
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 282
    .line 283
    .line 284
    :cond_a
    return-void

    .line 285
    :pswitch_c
    check-cast p0, Lkotlinx/coroutines/Job;

    .line 286
    .line 287
    if-eqz p0, :cond_b

    .line 288
    .line 289
    invoke-interface {p0, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 290
    .line 291
    .line 292
    :cond_b
    return-void

    .line 293
    :pswitch_d
    check-cast p0, Landroidx/core/util/Consumer;

    .line 294
    .line 295
    new-instance v0, Landroidx/window/layout/WindowLayoutInfo;

    .line 296
    .line 297
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 298
    .line 299
    invoke-direct {v0, v1}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    .line 300
    .line 301
    .line 302
    invoke-interface {p0, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :pswitch_e
    check-cast p0, Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 307
    .line 308
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 309
    .line 310
    iget v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->resumedCounter:I

    .line 311
    .line 312
    if-nez v1, :cond_c

    .line 313
    .line 314
    iput-boolean v4, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    .line 315
    .line 316
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 319
    .line 320
    .line 321
    :cond_c
    iget v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->startedCounter:I

    .line 322
    .line 323
    if-nez v1, :cond_d

    .line 324
    .line 325
    iget-boolean v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    .line 326
    .line 327
    if-eqz v1, :cond_d

    .line 328
    .line 329
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 332
    .line 333
    .line 334
    iput-boolean v4, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->stopSent:Z

    .line 335
    .line 336
    :cond_d
    return-void

    .line 337
    :pswitch_f
    check-cast p0, Landroidx/fragment/app/FragmentManager;

    .line 338
    .line 339
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 340
    .line 341
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-eqz v0, :cond_e

    .line 350
    .line 351
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    check-cast v0, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    goto :goto_2

    .line 361
    :cond_e
    return-void

    .line 362
    :pswitch_10
    check-cast p0, Landroidx/fragment/app/Fragment;

    .line 363
    .line 364
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 365
    .line 366
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 367
    .line 368
    iget-object v0, v0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Lcom/beetstra/jutf7/Base64Util;

    .line 369
    .line 370
    invoke-virtual {v0, v1}, Lcom/beetstra/jutf7/Base64Util;->performRestore(Landroid/os/Bundle;)V

    .line 371
    .line 372
    .line 373
    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 374
    .line 375
    return-void

    .line 376
    nop

    .line 377
    :pswitch_data_0
    .packed-switch 0x0
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
