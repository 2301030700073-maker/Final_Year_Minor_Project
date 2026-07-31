.class public abstract Lnet/thunderbird/core/preference/PreferenceScopeRegistry;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final map:Lkotlin/collections/builders/MapBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lnet/thunderbird/core/preference/debugging/DebugSettingKey;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v2, Lkotlin/UIntArray$Iterator;

    .line 12
    .line 13
    const/4 v3, 0x6

    .line 14
    invoke-direct {v2, v3, v1}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lnet/thunderbird/core/preference/debugging/DebugSettingKey;

    .line 28
    .line 29
    iget-object v1, v1, Lnet/thunderbird/core/preference/debugging/DebugSettingKey;->value:Ljava/lang/String;

    .line 30
    .line 31
    sget-object v4, Lnet/thunderbird/core/preference/PreferenceScope;->DEBUGGING:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v4}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object v1, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v2, Lkotlin/UIntArray$Iterator;

    .line 43
    .line 44
    invoke-direct {v2, v3, v1}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 58
    .line 59
    iget-object v1, v1, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;->value:Ljava/lang/String;

    .line 60
    .line 61
    sget-object v4, Lnet/thunderbird/core/preference/PreferenceScope;->INTERACTION:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 62
    .line 63
    invoke-virtual {v0, v1, v4}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    sget-object v1, Lnet/thunderbird/core/preference/network/NetworkSettingKey;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    new-instance v2, Lkotlin/UIntArray$Iterator;

    .line 73
    .line 74
    invoke-direct {v2, v3, v1}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :goto_2
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lnet/thunderbird/core/preference/network/NetworkSettingKey;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    const-string v1, "backgroundOperations"

    .line 93
    .line 94
    sget-object v4, Lnet/thunderbird/core/preference/PreferenceScope;->NETWORK:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 95
    .line 96
    invoke-virtual {v0, v1, v4}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    sget-object v1, Lnet/thunderbird/core/preference/notification/NotificationSettingKey;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    new-instance v2, Lkotlin/UIntArray$Iterator;

    .line 106
    .line 107
    invoke-direct {v2, v3, v1}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :goto_3
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lnet/thunderbird/core/preference/notification/NotificationSettingKey;

    .line 121
    .line 122
    iget-object v1, v1, Lnet/thunderbird/core/preference/notification/NotificationSettingKey;->value:Ljava/lang/String;

    .line 123
    .line 124
    sget-object v4, Lnet/thunderbird/core/preference/PreferenceScope;->NOTIFICATION:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 125
    .line 126
    invoke-virtual {v0, v1, v4}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_3
    sget-object v1, Lnet/thunderbird/core/preference/privacy/PrivacySettingKey;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    new-instance v2, Lkotlin/UIntArray$Iterator;

    .line 136
    .line 137
    invoke-direct {v2, v3, v1}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :goto_4
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_4

    .line 145
    .line 146
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lnet/thunderbird/core/preference/privacy/PrivacySettingKey;

    .line 151
    .line 152
    iget-object v1, v1, Lnet/thunderbird/core/preference/privacy/PrivacySettingKey;->value:Ljava/lang/String;

    .line 153
    .line 154
    sget-object v4, Lnet/thunderbird/core/preference/PreferenceScope;->PRIVACY:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 155
    .line 156
    invoke-virtual {v0, v1, v4}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_4
    sget-object v1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettingKey;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    new-instance v2, Lkotlin/UIntArray$Iterator;

    .line 166
    .line 167
    invoke-direct {v2, v3, v1}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :goto_5
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_5

    .line 175
    .line 176
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettingKey;

    .line 181
    .line 182
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettingKey;->value:Ljava/lang/String;

    .line 183
    .line 184
    sget-object v4, Lnet/thunderbird/core/preference/PreferenceScope;->DISPLAY_CORE:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 185
    .line 186
    invoke-virtual {v0, v1, v4}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_5
    sget-object v1, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    new-instance v2, Lkotlin/UIntArray$Iterator;

    .line 196
    .line 197
    invoke-direct {v2, v3, v1}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :goto_6
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_6

    .line 205
    .line 206
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;

    .line 211
    .line 212
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;->value:Ljava/lang/String;

    .line 213
    .line 214
    sget-object v4, Lnet/thunderbird/core/preference/PreferenceScope;->DISPLAY_INBOX:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 215
    .line 216
    invoke-virtual {v0, v1, v4}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_6
    sget-object v1, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    new-instance v2, Lkotlin/UIntArray$Iterator;

    .line 226
    .line 227
    invoke-direct {v2, v3, v1}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :goto_7
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_7

    .line 235
    .line 236
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    check-cast v1, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;

    .line 241
    .line 242
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;->value:Ljava/lang/String;

    .line 243
    .line 244
    sget-object v4, Lnet/thunderbird/core/preference/PreferenceScope;->DISPLAY_MISC:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 245
    .line 246
    invoke-virtual {v0, v1, v4}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    goto :goto_7

    .line 250
    :cond_7
    sget-object v1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    new-instance v2, Lkotlin/UIntArray$Iterator;

    .line 256
    .line 257
    invoke-direct {v2, v3, v1}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    :goto_8
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-eqz v1, :cond_8

    .line 265
    .line 266
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    check-cast v1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 271
    .line 272
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;->value:Ljava/lang/String;

    .line 273
    .line 274
    sget-object v4, Lnet/thunderbird/core/preference/PreferenceScope;->DISPLAY_VISUAL:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 275
    .line 276
    invoke-virtual {v0, v1, v4}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_8
    sget-object v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettingKey;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    new-instance v2, Lkotlin/UIntArray$Iterator;

    .line 286
    .line 287
    invoke-direct {v2, v3, v1}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :goto_9
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-eqz v1, :cond_9

    .line 295
    .line 296
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    check-cast v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettingKey;

    .line 301
    .line 302
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettingKey;->value:Ljava/lang/String;

    .line 303
    .line 304
    sget-object v3, Lnet/thunderbird/core/preference/PreferenceScope;->DISPLAY_VISUAL_MESSAGE_LIST:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 305
    .line 306
    invoke-virtual {v0, v1, v3}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    goto :goto_9

    .line 310
    :cond_9
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    sput-object v0, Lnet/thunderbird/core/preference/PreferenceScopeRegistry;->map:Lkotlin/collections/builders/MapBuilder;

    .line 315
    .line 316
    return-void
.end method
