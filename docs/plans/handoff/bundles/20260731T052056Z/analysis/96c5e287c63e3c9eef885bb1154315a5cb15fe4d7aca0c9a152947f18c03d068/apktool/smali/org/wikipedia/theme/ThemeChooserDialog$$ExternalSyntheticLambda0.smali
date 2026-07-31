.class public final synthetic Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/theme/ThemeChooserDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/theme/ThemeChooserDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/wikipedia/theme/ThemeChooserDialog;->BUTTON_STROKE_WIDTH:I

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 14
    .line 15
    const p1, 0x7f1205f3

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->callback()Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Lorg/wikipedia/theme/ThemeChooserDialog$Callback;->onEditingPrefsChanged()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_0
    sget v0, Lorg/wikipedia/theme/ThemeChooserDialog;->BUTTON_STROKE_WIDTH:I

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 37
    .line 38
    const p1, 0x7f1205ef

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->callback()Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    invoke-interface {p0}, Lorg/wikipedia/theme/ThemeChooserDialog$Callback;->onEditingPrefsChanged()V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void

    .line 54
    :pswitch_1
    sget v0, Lorg/wikipedia/theme/ThemeChooserDialog;->BUTTON_STROKE_WIDTH:I

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 60
    .line 61
    const p1, 0x7f1205f0

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->callback()Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-eqz p0, :cond_2

    .line 72
    .line 73
    invoke-interface {p0}, Lorg/wikipedia/theme/ThemeChooserDialog$Callback;->onEditingPrefsChanged()V

    .line 74
    .line 75
    .line 76
    :cond_2
    return-void

    .line 77
    :pswitch_2
    sget v0, Lorg/wikipedia/theme/ThemeChooserDialog;->BUTTON_STROKE_WIDTH:I

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 83
    .line 84
    const p1, 0x7f1205f2

    .line 85
    .line 86
    .line 87
    invoke-static {p1, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->callback()Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    if-eqz p0, :cond_3

    .line 95
    .line 96
    invoke-interface {p0}, Lorg/wikipedia/theme/ThemeChooserDialog$Callback;->onEditingPrefsChanged()V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void

    .line 100
    :pswitch_3
    sget v0, Lorg/wikipedia/theme/ThemeChooserDialog;->BUTTON_STROKE_WIDTH:I

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 106
    .line 107
    const p1, 0x7f120654

    .line 108
    .line 109
    .line 110
    invoke-static {p1, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->appearanceSettingInteractionEvent:Lokhttp3/ConnectionPool;

    .line 114
    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    xor-int/lit8 v0, p2, 0x1

    .line 118
    .line 119
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    const-string v1, "readingFocusMode"

    .line 128
    .line 129
    invoke-virtual {p1, v1, v0, p2}, Lokhttp3/ConnectionPool;->submitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->callback()Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    if-eqz p0, :cond_4

    .line 137
    .line 138
    invoke-interface {p0}, Lorg/wikipedia/theme/ThemeChooserDialog$Callback;->onToggleReadingFocusMode()V

    .line 139
    .line 140
    .line 141
    :cond_4
    return-void

    .line 142
    :cond_5
    const-string p0, "appearanceSettingInteractionEvent"

    .line 143
    .line 144
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const/4 p0, 0x0

    .line 148
    throw p0

    .line 149
    :pswitch_4
    sget v0, Lorg/wikipedia/theme/ThemeChooserDialog;->BUTTON_STROKE_WIDTH:I

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    .line 155
    .line 156
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 157
    .line 158
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getShouldMatchSystemTheme()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-ne p2, v0, :cond_6

    .line 163
    .line 164
    goto/16 :goto_3

    .line 165
    .line 166
    :cond_6
    const v0, 0x7f120628

    .line 167
    .line 168
    .line 169
    invoke-static {v0, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 170
    .line 171
    .line 172
    iget-object p2, p1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 173
    .line 174
    invoke-static {}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_b

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 189
    .line 190
    and-int/lit8 v0, v0, 0x30

    .line 191
    .line 192
    const/16 v1, 0x10

    .line 193
    .line 194
    const v2, 0x7f120644

    .line 195
    .line 196
    .line 197
    if-eq v0, v1, :cond_9

    .line 198
    .line 199
    const/16 v1, 0x20

    .line 200
    .line 201
    if-eq v0, v1, :cond_7

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_7
    iget-object v0, p1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 205
    .line 206
    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-nez v0, :cond_b

    .line 211
    .line 212
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPreviousThemeId()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    invoke-static {v0}, Lorg/wikipedia/WikipediaApp;->unmarshalTheme(I)Lorg/wikipedia/theme/Theme;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_8

    .line 225
    .line 226
    sget-object v0, Lorg/wikipedia/theme/Theme;->DARK:Lorg/wikipedia/theme/Theme;

    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_8
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPreviousThemeId()I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    invoke-static {v0}, Lorg/wikipedia/WikipediaApp;->unmarshalTheme(I)Lorg/wikipedia/theme/Theme;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    :goto_0
    invoke-virtual {p1, v0}, Lorg/wikipedia/WikipediaApp;->setCurrentTheme(Lorg/wikipedia/theme/Theme;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Lorg/wikipedia/theme/Theme;->getMarshallingId()I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    invoke-static {v2, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_9
    iget-object v0, p1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 249
    .line 250
    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_b

    .line 255
    .line 256
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPreviousThemeId()I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    invoke-static {v0}, Lorg/wikipedia/WikipediaApp;->unmarshalTheme(I)Lorg/wikipedia/theme/Theme;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_a

    .line 269
    .line 270
    sget-object v0, Lorg/wikipedia/theme/Theme;->LIGHT:Lorg/wikipedia/theme/Theme;

    .line 271
    .line 272
    goto :goto_1

    .line 273
    :cond_a
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPreviousThemeId()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    invoke-static {v0}, Lorg/wikipedia/WikipediaApp;->unmarshalTheme(I)Lorg/wikipedia/theme/Theme;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    :goto_1
    invoke-virtual {p1, v0}, Lorg/wikipedia/WikipediaApp;->setCurrentTheme(Lorg/wikipedia/theme/Theme;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2}, Lorg/wikipedia/theme/Theme;->getMarshallingId()I

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    invoke-static {v2, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 289
    .line 290
    .line 291
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->conditionallyDisableThemeButtons()V

    .line 292
    .line 293
    .line 294
    :goto_3
    return-void

    .line 295
    :pswitch_5
    sget v0, Lorg/wikipedia/theme/ThemeChooserDialog;->BUTTON_STROKE_WIDTH:I

    .line 296
    .line 297
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 301
    .line 302
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDimDarkModeImages()Z

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    if-ne p2, p1, :cond_c

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_c
    const p1, 0x7f1205e4

    .line 310
    .line 311
    .line 312
    invoke-static {p1, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->callback()Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    if-eqz p0, :cond_d

    .line 320
    .line 321
    invoke-interface {p0}, Lorg/wikipedia/theme/ThemeChooserDialog$Callback;->onToggleDimImages()V

    .line 322
    .line 323
    .line 324
    :cond_d
    :goto_4
    return-void

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
