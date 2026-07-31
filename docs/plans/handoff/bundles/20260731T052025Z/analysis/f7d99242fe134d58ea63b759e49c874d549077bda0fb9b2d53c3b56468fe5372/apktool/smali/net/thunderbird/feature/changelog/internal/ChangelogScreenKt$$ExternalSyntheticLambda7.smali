.class public final synthetic Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function1;

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
    .locals 5

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "mark_as_read_when_deleted"

    .line 4
    .line 5
    const-string v2, "sync_server_deletions"

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object p0, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-object v3

    .line 23
    :pswitch_0
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v3

    .line 32
    :pswitch_1
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAccountClick;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAccountClick;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-object v3

    .line 46
    :pswitch_2
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnFolderClick;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnFolderClick;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    return-object v3

    .line 60
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnCreateFolderClicked;

    .line 66
    .line 67
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnCreateFolderClicked;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    return-object v3

    .line 74
    :pswitch_4
    check-cast p1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnFolderSelected;

    .line 80
    .line 81
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnFolderSelected;-><init>(Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    return-object v3

    .line 88
    :pswitch_5
    check-cast p1, Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDoNotShowDialogAgainChanged;

    .line 95
    .line 96
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDoNotShowDialogAgainChanged;-><init>(Z)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    return-object v3

    .line 103
    :pswitch_6
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Event;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    return-object v3

    .line 112
    :pswitch_7
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    instance-of v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 118
    .line 119
    if-eqz v0, :cond_0

    .line 120
    .line 121
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Event$OnServerSearchLimitChange;

    .line 122
    .line 123
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 124
    .line 125
    iget-object p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->value:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 126
    .line 127
    iget-object p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Event$OnServerSearchLimitChange;-><init>(I)V

    .line 134
    .line 135
    .line 136
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_0
    return-object v3

    .line 140
    :pswitch_8
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    return-object v3

    .line 149
    :pswitch_9
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue;

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    instance-of v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;

    .line 155
    .line 156
    if-eqz v0, :cond_1

    .line 157
    .line 158
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnIsMarkMessageAsReadOnViewToggle;

    .line 159
    .line 160
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;

    .line 161
    .line 162
    iget-boolean p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;->value:Z

    .line 163
    .line 164
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnIsMarkMessageAsReadOnViewToggle;-><init>(Z)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_1
    instance-of v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 172
    .line 173
    if-eqz v0, :cond_2

    .line 174
    .line 175
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnShowPicturesChange;

    .line 176
    .line 177
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 178
    .line 179
    iget-object p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->value:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 180
    .line 181
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnShowPicturesChange;-><init>(Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    :cond_2
    :goto_0
    return-object v3

    .line 188
    :pswitch_a
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event;

    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    return-object v3

    .line 197
    :pswitch_b
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue;

    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    instance-of v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 203
    .line 204
    if-eqz v0, :cond_4

    .line 205
    .line 206
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 207
    .line 208
    iget-object v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Text;->id:Ljava/lang/String;

    .line 209
    .line 210
    iget-object p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Text;->value:Ljava/lang/String;

    .line 211
    .line 212
    const-string v1, "account_name"

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_3

    .line 219
    .line 220
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnNameChange;

    .line 221
    .line 222
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnNameChange;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    goto/16 :goto_2

    .line 229
    .line 230
    :cond_3
    const-string v1, "account_avatar_monogram"

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_a

    .line 237
    .line 238
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;

    .line 239
    .line 240
    new-instance v1, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;

    .line 241
    .line 242
    invoke-direct {v1, p1}, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;-><init>(Lnet/thunderbird/feature/account/avatar/Avatar;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    goto/16 :goto_2

    .line 252
    .line 253
    :cond_4
    instance-of v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Color;

    .line 254
    .line 255
    if-eqz v0, :cond_5

    .line 256
    .line 257
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue$Color;

    .line 258
    .line 259
    iget-object v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Color;->id:Ljava/lang/String;

    .line 260
    .line 261
    const-string v1, "account_color"

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_a

    .line 268
    .line 269
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnColorChange;

    .line 270
    .line 271
    iget p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Color;->value:I

    .line 272
    .line 273
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnColorChange;-><init>(I)V

    .line 274
    .line 275
    .line 276
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    goto/16 :goto_2

    .line 280
    .line 281
    :cond_5
    instance-of v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;

    .line 282
    .line 283
    const-string v1, "account_avatar_icon"

    .line 284
    .line 285
    if-eqz v0, :cond_7

    .line 286
    .line 287
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;

    .line 288
    .line 289
    iget-object v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;->id:Ljava/lang/String;

    .line 290
    .line 291
    iget-object p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;->value:Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;

    .line 292
    .line 293
    const-string v2, "account_avatar_options"

    .line 294
    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-eqz v2, :cond_6

    .line 300
    .line 301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;

    .line 305
    .line 306
    iget-object p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;->value:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 307
    .line 308
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;-><init>(Lnet/thunderbird/feature/account/avatar/Avatar;)V

    .line 309
    .line 310
    .line 311
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_a

    .line 320
    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;

    .line 325
    .line 326
    iget-object p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;->value:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 327
    .line 328
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;-><init>(Lnet/thunderbird/feature/account/avatar/Avatar;)V

    .line 329
    .line 330
    .line 331
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    goto :goto_2

    .line 335
    :cond_7
    instance-of v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;

    .line 336
    .line 337
    if-eqz v0, :cond_a

    .line 338
    .line 339
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;

    .line 340
    .line 341
    iget-object v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->id:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_a

    .line 348
    .line 349
    iget-object v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->icons:Lkotlinx/collections/immutable/ImmutableList;

    .line 350
    .line 351
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-eqz v1, :cond_9

    .line 360
    .line 361
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    move-object v2, v1

    .line 366
    check-cast v2, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 367
    .line 368
    iget-object v4, p1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->value:Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 369
    .line 370
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-eqz v2, :cond_8

    .line 375
    .line 376
    goto :goto_1

    .line 377
    :cond_9
    const/4 v1, 0x0

    .line 378
    :goto_1
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 379
    .line 380
    if-eqz v1, :cond_a

    .line 381
    .line 382
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;

    .line 383
    .line 384
    new-instance v0, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;

    .line 385
    .line 386
    iget-object v1, v1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;->id:Ljava/lang/String;

    .line 387
    .line 388
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;-><init>(Lnet/thunderbird/feature/account/avatar/Avatar;)V

    .line 392
    .line 393
    .line 394
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    :cond_a
    :goto_2
    return-object v3

    .line 398
    :pswitch_c
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;

    .line 399
    .line 400
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    return-object v3

    .line 407
    :pswitch_d
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue;

    .line 408
    .line 409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    instance-of v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;

    .line 413
    .line 414
    if-eqz v0, :cond_c

    .line 415
    .line 416
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;

    .line 417
    .line 418
    iget-boolean v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;->value:Z

    .line 419
    .line 420
    iget-object p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;->id:Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    if-eqz v2, :cond_b

    .line 427
    .line 428
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnSyncServerDeletionsToggle;

    .line 429
    .line 430
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnSyncServerDeletionsToggle;-><init>(Z)V

    .line 431
    .line 432
    .line 433
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    goto :goto_3

    .line 437
    :cond_b
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result p1

    .line 441
    if-eqz p1, :cond_e

    .line 442
    .line 443
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnMarkAsReadWhenDeletedToggle;

    .line 444
    .line 445
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnMarkAsReadWhenDeletedToggle;-><init>(Z)V

    .line 446
    .line 447
    .line 448
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    goto :goto_3

    .line 452
    :cond_c
    instance-of v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 453
    .line 454
    if-eqz v0, :cond_e

    .line 455
    .line 456
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 457
    .line 458
    iget-object v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->value:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 459
    .line 460
    iget-object p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->id:Ljava/lang/String;

    .line 461
    .line 462
    const-string v1, "max_folder_to_check_with_push"

    .line 463
    .line 464
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    if-eqz v1, :cond_d

    .line 469
    .line 470
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnMaxFolderToCheckWithPushChange;

    .line 471
    .line 472
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnMaxFolderToCheckWithPushChange;-><init>(Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;)V

    .line 473
    .line 474
    .line 475
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    goto :goto_3

    .line 479
    :cond_d
    const-string v1, "refresh_idle_connection"

    .line 480
    .line 481
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result p1

    .line 485
    if-eqz p1, :cond_e

    .line 486
    .line 487
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnRefreshIdleConnectionFrequencyChange;

    .line 488
    .line 489
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnRefreshIdleConnectionFrequencyChange;-><init>(Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;)V

    .line 490
    .line 491
    .line 492
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    :cond_e
    :goto_3
    return-object v3

    .line 496
    :pswitch_e
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;

    .line 497
    .line 498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    return-object v3

    .line 505
    :pswitch_f
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue;

    .line 506
    .line 507
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 508
    .line 509
    .line 510
    instance-of v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;

    .line 511
    .line 512
    if-eqz v0, :cond_10

    .line 513
    .line 514
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;

    .line 515
    .line 516
    iget-boolean v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;->value:Z

    .line 517
    .line 518
    iget-object p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;->id:Ljava/lang/String;

    .line 519
    .line 520
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v2

    .line 524
    if-eqz v2, :cond_f

    .line 525
    .line 526
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnSyncServerDeletionsToggle;

    .line 527
    .line 528
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnSyncServerDeletionsToggle;-><init>(Z)V

    .line 529
    .line 530
    .line 531
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    goto/16 :goto_4

    .line 535
    .line 536
    :cond_f
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result p1

    .line 540
    if-eqz p1, :cond_18

    .line 541
    .line 542
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnMarkAsReadWhenDeletedToggle;

    .line 543
    .line 544
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnMarkAsReadWhenDeletedToggle;-><init>(Z)V

    .line 545
    .line 546
    .line 547
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    goto/16 :goto_4

    .line 551
    .line 552
    :cond_10
    instance-of v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 553
    .line 554
    if-eqz v0, :cond_17

    .line 555
    .line 556
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 557
    .line 558
    iget-object v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->value:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 559
    .line 560
    iget-object p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->id:Ljava/lang/String;

    .line 561
    .line 562
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    sparse-switch v1, :sswitch_data_0

    .line 567
    .line 568
    .line 569
    goto/16 :goto_4

    .line 570
    .line 571
    :sswitch_0
    const-string v1, "fetch_message_up_to"

    .line 572
    .line 573
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result p1

    .line 577
    if-nez p1, :cond_11

    .line 578
    .line 579
    goto/16 :goto_4

    .line 580
    .line 581
    :cond_11
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnFetchMessageUpToChange;

    .line 582
    .line 583
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnFetchMessageUpToChange;-><init>(Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;)V

    .line 584
    .line 585
    .line 586
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    goto/16 :goto_4

    .line 590
    .line 591
    :sswitch_1
    const-string/jumbo v1, "when_i_delete_a_message"

    .line 592
    .line 593
    .line 594
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result p1

    .line 598
    if-nez p1, :cond_12

    .line 599
    .line 600
    goto/16 :goto_4

    .line 601
    .line 602
    :cond_12
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnWhenIDeleteAMessageChange;

    .line 603
    .line 604
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnWhenIDeleteAMessageChange;-><init>(Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;)V

    .line 605
    .line 606
    .line 607
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    goto :goto_4

    .line 611
    :sswitch_2
    const-string v1, "sync_message_from"

    .line 612
    .line 613
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result p1

    .line 617
    if-nez p1, :cond_13

    .line 618
    .line 619
    goto :goto_4

    .line 620
    :cond_13
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnSyncMessageFromChange;

    .line 621
    .line 622
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnSyncMessageFromChange;-><init>(Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;)V

    .line 623
    .line 624
    .line 625
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    goto :goto_4

    .line 629
    :sswitch_3
    const-string v1, "erase_deleted_message_on_server"

    .line 630
    .line 631
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result p1

    .line 635
    if-nez p1, :cond_14

    .line 636
    .line 637
    goto :goto_4

    .line 638
    :cond_14
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnEraseDeletedMessageOnServerChange;

    .line 639
    .line 640
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnEraseDeletedMessageOnServerChange;-><init>(Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;)V

    .line 641
    .line 642
    .line 643
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    goto :goto_4

    .line 647
    :sswitch_4
    const-string v1, "local_folder_size"

    .line 648
    .line 649
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 650
    .line 651
    .line 652
    move-result p1

    .line 653
    if-nez p1, :cond_15

    .line 654
    .line 655
    goto :goto_4

    .line 656
    :cond_15
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnLocalFolderSizeChange;

    .line 657
    .line 658
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnLocalFolderSizeChange;-><init>(Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;)V

    .line 659
    .line 660
    .line 661
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    goto :goto_4

    .line 665
    :sswitch_5
    const-string v1, "folder_poll_frequency"

    .line 666
    .line 667
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    move-result p1

    .line 671
    if-nez p1, :cond_16

    .line 672
    .line 673
    goto :goto_4

    .line 674
    :cond_16
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnFolderPollFrequencyChange;

    .line 675
    .line 676
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnFolderPollFrequencyChange;-><init>(Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;)V

    .line 677
    .line 678
    .line 679
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    goto :goto_4

    .line 683
    :cond_17
    instance-of v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 684
    .line 685
    if-eqz v0, :cond_18

    .line 686
    .line 687
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 688
    .line 689
    iget-object p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Text;->id:Ljava/lang/String;

    .line 690
    .line 691
    const-string v0, "in_coming_server"

    .line 692
    .line 693
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    move-result p1

    .line 697
    if-eqz p1, :cond_18

    .line 698
    .line 699
    sget-object p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnInComingServerClick;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnInComingServerClick;

    .line 700
    .line 701
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    :cond_18
    :goto_4
    return-object v3

    .line 705
    :pswitch_10
    check-cast p1, Ljava/lang/Boolean;

    .line 706
    .line 707
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 708
    .line 709
    .line 710
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    return-object v3

    .line 714
    nop

    .line 715
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

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    :sswitch_data_0
    .sparse-switch
        -0x72452333 -> :sswitch_5
        -0x546679a2 -> :sswitch_4
        -0x20e61f94 -> :sswitch_3
        0x53e6006 -> :sswitch_2
        0x4d8fcad0 -> :sswitch_1
        0x51fba7a2 -> :sswitch_0
    .end sparse-switch
.end method
