.class public final enum Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;


# instance fields
.field private final icon:Lorg/jetbrains/compose/resources/DrawableResource;

.field private final title:Lorg/jetbrains/compose/resources/StringResource;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 2
    .line 3
    sget-object v1, Lnewpipe/shared/generated/resources/String0_commonMainKt;->settings_category_video_audio_title$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 4
    .line 5
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lorg/jetbrains/compose/resources/StringResource;

    .line 10
    .line 11
    sget-object v2, Lnewpipe/shared/generated/resources/Drawable0_commonMainKt;->ic_headset$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 12
    .line 13
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lorg/jetbrains/compose/resources/DrawableResource;

    .line 18
    .line 19
    const-string v3, "VIDEO_AUDIO"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-direct {v0, v3, v4, v1, v2}, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;-><init>(Ljava/lang/String;ILorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/DrawableResource;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 26
    .line 27
    sget-object v2, Lnewpipe/shared/generated/resources/String0_commonMainKt;->settings_category_downloads_title$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 28
    .line 29
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lorg/jetbrains/compose/resources/StringResource;

    .line 34
    .line 35
    sget-object v3, Lnewpipe/shared/generated/resources/Drawable0_commonMainKt;->ic_file_download$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 36
    .line 37
    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lorg/jetbrains/compose/resources/DrawableResource;

    .line 42
    .line 43
    const-string v5, "DOWNLOADS"

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    invoke-direct {v1, v5, v6, v2, v3}, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;-><init>(Ljava/lang/String;ILorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/DrawableResource;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 50
    .line 51
    sget-object v3, Lnewpipe/shared/generated/resources/String0_commonMainKt;->settings_category_appearance_title$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 52
    .line 53
    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lorg/jetbrains/compose/resources/StringResource;

    .line 58
    .line 59
    sget-object v5, Lnewpipe/shared/generated/resources/Drawable0_commonMainKt;->ic_palette$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 60
    .line 61
    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Lorg/jetbrains/compose/resources/DrawableResource;

    .line 66
    .line 67
    const-string v7, "APPEARANCE"

    .line 68
    .line 69
    const/4 v8, 0x2

    .line 70
    invoke-direct {v2, v7, v8, v3, v5}, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;-><init>(Ljava/lang/String;ILorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/DrawableResource;)V

    .line 71
    .line 72
    .line 73
    new-instance v3, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 74
    .line 75
    sget-object v5, Lnewpipe/shared/generated/resources/String0_commonMainKt;->settings_category_history_title$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 76
    .line 77
    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lorg/jetbrains/compose/resources/StringResource;

    .line 82
    .line 83
    sget-object v7, Lnewpipe/shared/generated/resources/Drawable0_commonMainKt;->ic_history$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 84
    .line 85
    invoke-virtual {v7}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    check-cast v7, Lorg/jetbrains/compose/resources/DrawableResource;

    .line 90
    .line 91
    const-string v9, "HISTORY"

    .line 92
    .line 93
    const/4 v10, 0x3

    .line 94
    invoke-direct {v3, v9, v10, v5, v7}, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;-><init>(Ljava/lang/String;ILorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/DrawableResource;)V

    .line 95
    .line 96
    .line 97
    new-instance v5, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 98
    .line 99
    sget-object v7, Lnewpipe/shared/generated/resources/String0_commonMainKt;->content$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 100
    .line 101
    invoke-virtual {v7}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    check-cast v7, Lorg/jetbrains/compose/resources/StringResource;

    .line 106
    .line 107
    sget-object v9, Lnewpipe/shared/generated/resources/Drawable0_commonMainKt;->ic_language$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 108
    .line 109
    invoke-virtual {v9}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    check-cast v9, Lorg/jetbrains/compose/resources/DrawableResource;

    .line 114
    .line 115
    const-string v11, "CONTENT"

    .line 116
    .line 117
    const/4 v12, 0x4

    .line 118
    invoke-direct {v5, v11, v12, v7, v9}, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;-><init>(Ljava/lang/String;ILorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/DrawableResource;)V

    .line 119
    .line 120
    .line 121
    new-instance v7, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 122
    .line 123
    sget-object v9, Lnewpipe/shared/generated/resources/String0_commonMainKt;->notifications$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 124
    .line 125
    invoke-virtual {v9}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    check-cast v9, Lorg/jetbrains/compose/resources/StringResource;

    .line 130
    .line 131
    sget-object v11, Lnewpipe/shared/generated/resources/Drawable0_commonMainKt;->ic_notifications$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 132
    .line 133
    invoke-virtual {v11}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    check-cast v11, Lorg/jetbrains/compose/resources/DrawableResource;

    .line 138
    .line 139
    const-string v13, "NOTIFICATIONS"

    .line 140
    .line 141
    const/4 v14, 0x5

    .line 142
    invoke-direct {v7, v13, v14, v9, v11}, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;-><init>(Ljava/lang/String;ILorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/DrawableResource;)V

    .line 143
    .line 144
    .line 145
    new-instance v9, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 146
    .line 147
    sget-object v11, Lnewpipe/shared/generated/resources/String0_commonMainKt;->settings_category_updates_title$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 148
    .line 149
    invoke-virtual {v11}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    check-cast v11, Lorg/jetbrains/compose/resources/StringResource;

    .line 154
    .line 155
    sget-object v13, Lnewpipe/shared/generated/resources/Drawable0_commonMainKt;->ic_cloud_download$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 156
    .line 157
    invoke-virtual {v13}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    check-cast v13, Lorg/jetbrains/compose/resources/DrawableResource;

    .line 162
    .line 163
    const-string v15, "UPDATES"

    .line 164
    .line 165
    move/from16 v16, v4

    .line 166
    .line 167
    const/4 v4, 0x6

    .line 168
    invoke-direct {v9, v15, v4, v11, v13}, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;-><init>(Ljava/lang/String;ILorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/DrawableResource;)V

    .line 169
    .line 170
    .line 171
    new-instance v11, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 172
    .line 173
    sget-object v13, Lnewpipe/shared/generated/resources/String0_commonMainKt;->settings_category_backup_restore_title$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 174
    .line 175
    invoke-virtual {v13}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    check-cast v13, Lorg/jetbrains/compose/resources/StringResource;

    .line 180
    .line 181
    sget-object v15, Lnewpipe/shared/generated/resources/Drawable0_commonMainKt;->ic_settings_backup_restore$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 182
    .line 183
    invoke-virtual {v15}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v15

    .line 187
    check-cast v15, Lorg/jetbrains/compose/resources/DrawableResource;

    .line 188
    .line 189
    move/from16 v17, v4

    .line 190
    .line 191
    const-string v4, "BACKUP_RESTORE"

    .line 192
    .line 193
    move/from16 v18, v6

    .line 194
    .line 195
    const/4 v6, 0x7

    .line 196
    invoke-direct {v11, v4, v6, v13, v15}, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;-><init>(Ljava/lang/String;ILorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/DrawableResource;)V

    .line 197
    .line 198
    .line 199
    new-instance v4, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 200
    .line 201
    sget-object v13, Lnewpipe/shared/generated/resources/String0_commonMainKt;->settings_category_debug_title$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 202
    .line 203
    invoke-virtual {v13}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    check-cast v13, Lorg/jetbrains/compose/resources/StringResource;

    .line 208
    .line 209
    sget-object v15, Lnewpipe/shared/generated/resources/Drawable0_commonMainKt;->ic_bug_report$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 210
    .line 211
    invoke-virtual {v15}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v15

    .line 215
    check-cast v15, Lorg/jetbrains/compose/resources/DrawableResource;

    .line 216
    .line 217
    move/from16 v19, v6

    .line 218
    .line 219
    const-string v6, "DEBUG"

    .line 220
    .line 221
    move/from16 v20, v8

    .line 222
    .line 223
    const/16 v8, 0x8

    .line 224
    .line 225
    invoke-direct {v4, v6, v8, v13, v15}, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;-><init>(Ljava/lang/String;ILorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/DrawableResource;)V

    .line 226
    .line 227
    .line 228
    const/16 v6, 0x9

    .line 229
    .line 230
    new-array v6, v6, [Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 231
    .line 232
    aput-object v0, v6, v16

    .line 233
    .line 234
    aput-object v1, v6, v18

    .line 235
    .line 236
    aput-object v2, v6, v20

    .line 237
    .line 238
    aput-object v3, v6, v10

    .line 239
    .line 240
    aput-object v5, v6, v12

    .line 241
    .line 242
    aput-object v7, v6, v14

    .line 243
    .line 244
    aput-object v9, v6, v17

    .line 245
    .line 246
    aput-object v11, v6, v19

    .line 247
    .line 248
    aput-object v4, v6, v8

    .line 249
    .line 250
    sput-object v6, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;->$VALUES:[Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 251
    .line 252
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 253
    .line 254
    invoke-direct {v0, v6}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 255
    .line 256
    .line 257
    sput-object v0, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 258
    .line 259
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/DrawableResource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;->title:Lorg/jetbrains/compose/resources/StringResource;

    .line 5
    .line 6
    iput-object p4, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;->icon:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;
    .locals 1

    .line 1
    const-class v0, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;
    .locals 1

    .line 1
    sget-object v0, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;->$VALUES:[Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getIcon()Lorg/jetbrains/compose/resources/DrawableResource;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;->icon:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTitle()Lorg/jetbrains/compose/resources/StringResource;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;->title:Lorg/jetbrains/compose/resources/StringResource;

    .line 2
    .line 3
    return-object p0
.end method
