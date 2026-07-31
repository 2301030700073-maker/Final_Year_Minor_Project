.class public final synthetic Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 1
    iput p5, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iput p4, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;->f$3:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 15
    iput p5, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput p4, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget v2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;->f$3:I

    .line 6
    .line 7
    iget-object v3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p0, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;

    .line 17
    .line 18
    check-cast v4, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 21
    .line 22
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    check-cast p2, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    or-int/lit8 p2, v2, 0x1

    .line 30
    .line 31
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-static {p0, v4, v3, p1, p2}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthRedirectScreenKt;->ThundermailOAuthRedirectScreen(Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;Landroidx/navigation/NavController$$ExternalSyntheticLambda0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_0
    check-cast p0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 40
    .line 41
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 44
    .line 45
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 46
    .line 47
    check-cast p2, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    or-int/lit8 p2, v2, 0x1

    .line 53
    .line 54
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-static {p0, v4, v3, p1, p2}, Lkotlin/text/CharsKt__CharKt;->ResolvedNotificationActionButton(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :pswitch_1
    check-cast p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;

    .line 63
    .line 64
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 65
    .line 66
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 67
    .line 68
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 69
    .line 70
    check-cast p2, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    or-int/lit8 p2, v2, 0x1

    .line 76
    .line 77
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-static {p0, v4, v3, p1, p2}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->BannerGlobalNotificationHostLayout(Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 82
    .line 83
    .line 84
    return-object v1

    .line 85
    :pswitch_2
    check-cast p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 86
    .line 87
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 88
    .line 89
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 90
    .line 91
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 92
    .line 93
    check-cast p2, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    or-int/lit8 p2, v2, 0x1

    .line 99
    .line 100
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    invoke-static {p0, v3, v4, p1, p2}, Lorg/minidns/util/Base64;->AccountAvatar(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 105
    .line 106
    .line 107
    return-object v1

    .line 108
    :pswitch_3
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 109
    .line 110
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 111
    .line 112
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 113
    .line 114
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 115
    .line 116
    check-cast p2, Ljava/lang/Integer;

    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    or-int/lit8 p2, v2, 0x1

    .line 122
    .line 123
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    invoke-static {p0, v4, v3, p1, p2}, Lorg/minidns/util/Base64;->ChooseArchiveFolderDialogContent(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 128
    .line 129
    .line 130
    return-object v1

    .line 131
    :pswitch_4
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;

    .line 132
    .line 133
    check-cast v4, Lkotlinx/collections/immutable/ImmutableList;

    .line 134
    .line 135
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListState;

    .line 136
    .line 137
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 138
    .line 139
    check-cast p2, Ljava/lang/Integer;

    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 142
    .line 143
    .line 144
    or-int/lit8 p2, v2, 0x1

    .line 145
    .line 146
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    invoke-static {p0, v4, v3, p1, p2}, Lokhttp3/Handshake$Companion;->ScrollEventEffect(Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;Lkotlinx/collections/immutable/ImmutableList;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V

    .line 151
    .line 152
    .line 153
    return-object v1

    .line 154
    :pswitch_5
    check-cast p0, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;

    .line 155
    .line 156
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 157
    .line 158
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 159
    .line 160
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 161
    .line 162
    check-cast p2, Ljava/lang/Integer;

    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    or-int/lit8 p2, v2, 0x1

    .line 168
    .line 169
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    invoke-static {p0, v3, v4, p1, p2}, Lorg/minidns/util/Base64;->SwitchItem(Lnet/thunderbird/core/ui/setting/SettingValue$Switch;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 174
    .line 175
    .line 176
    return-object v1

    .line 177
    :pswitch_6
    check-cast p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 178
    .line 179
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 180
    .line 181
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 182
    .line 183
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 184
    .line 185
    check-cast p2, Ljava/lang/Integer;

    .line 186
    .line 187
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    or-int/lit8 p2, v2, 0x1

    .line 191
    .line 192
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    invoke-static {p0, v4, v3, p1, p2}, Lkotlin/ranges/RangesKt;->SelectItem(Lnet/thunderbird/core/ui/setting/SettingValue$Select;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 197
    .line 198
    .line 199
    return-object v1

    .line 200
    :pswitch_7
    check-cast p0, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;

    .line 201
    .line 202
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 203
    .line 204
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 205
    .line 206
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 207
    .line 208
    check-cast p2, Ljava/lang/Integer;

    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    or-int/lit8 p2, v2, 0x1

    .line 214
    .line 215
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    invoke-static {p0, v4, v3, p1, p2}, Lokhttp3/Handshake$Companion;->SegmentedButtonItem(Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 220
    .line 221
    .line 222
    return-object v1

    .line 223
    :pswitch_8
    check-cast p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;

    .line 224
    .line 225
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 226
    .line 227
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 228
    .line 229
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 230
    .line 231
    check-cast p2, Ljava/lang/Integer;

    .line 232
    .line 233
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    or-int/lit8 p2, v2, 0x1

    .line 237
    .line 238
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 239
    .line 240
    .line 241
    move-result p2

    .line 242
    invoke-static {p0, v4, v3, p1, p2}, Lokhttp3/Cookie$Companion;->IconListItem(Lnet/thunderbird/core/ui/setting/SettingValue$IconList;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 243
    .line 244
    .line 245
    return-object v1

    .line 246
    :pswitch_9
    check-cast p0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 247
    .line 248
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 249
    .line 250
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 251
    .line 252
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 253
    .line 254
    check-cast p2, Ljava/lang/Integer;

    .line 255
    .line 256
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    or-int/lit8 p2, v2, 0x1

    .line 260
    .line 261
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 262
    .line 263
    .line 264
    move-result p2

    .line 265
    invoke-static {p0, v4, v3, p1, p2}, Lkotlin/text/CharsKt__CharKt;->TextItem(Lnet/thunderbird/core/ui/setting/SettingValue$Text;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 266
    .line 267
    .line 268
    return-object v1

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
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
