.class public final Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final theme:Ljava/lang/Enum;

.field public final synthetic this$0:Lorg/wikipedia/theme/ThemeChooserDialog;


# direct methods
.method public constructor <init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/Theme;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 11
    .line 12
    iput-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->theme:Ljava/lang/Enum;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->$r8$classId:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iput-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    iput-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->theme:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "appearanceSettingInteractionEvent"

    .line 5
    .line 6
    iget-object v3, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->theme:Ljava/lang/Enum;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p1, v3, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    .line 19
    .line 20
    iget-boolean v0, v3, Lorg/wikipedia/theme/ThemeChooserDialog;->isEditing:Z

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x2

    .line 25
    const/4 v7, 0x1

    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 29
    .line 30
    const v0, 0x7f1205f4

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    sget-object v9, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    aget p0, v9, p0

    .line 44
    .line 45
    if-eq p0, v7, :cond_2

    .line 46
    .line 47
    if-eq p0, v6, :cond_1

    .line 48
    .line 49
    if-ne p0, v5, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_1
    add-int/lit8 v4, v8, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    add-int/lit8 v4, v8, 0x1

    .line 61
    .line 62
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const v5, 0x7f0a0038

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const v5, 0x7f0a0037

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-static {v4, p0, p1}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lorg/wikipedia/theme/ThemeChooserDialog;->callback()Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    if-eqz p0, :cond_3

    .line 96
    .line 97
    invoke-interface {p0}, Lorg/wikipedia/theme/ThemeChooserDialog$Callback;->onEditingPrefsChanged()V

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {v3}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateFontSize$1()V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 105
    .line 106
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    sget-object v0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    aget p0, v0, p0

    .line 117
    .line 118
    if-eq p0, v7, :cond_7

    .line 119
    .line 120
    if-eq p0, v6, :cond_6

    .line 121
    .line 122
    if-ne p0, v5, :cond_5

    .line 123
    .line 124
    invoke-virtual {p1, v4}, Lorg/wikipedia/WikipediaApp;->setFontSizeMultiplier(I)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    goto :goto_1

    .line 129
    :cond_5
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    sub-int/2addr p0, v7

    .line 138
    invoke-virtual {p1, p0}, Lorg/wikipedia/WikipediaApp;->setFontSizeMultiplier(I)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    goto :goto_1

    .line 143
    :cond_7
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    add-int/2addr p0, v7

    .line 148
    invoke-virtual {p1, p0}, Lorg/wikipedia/WikipediaApp;->setFontSizeMultiplier(I)Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    :goto_1
    if-eqz p0, :cond_8

    .line 153
    .line 154
    iput-boolean v7, v3, Lorg/wikipedia/theme/ThemeChooserDialog;->updatingFont:Z

    .line 155
    .line 156
    invoke-virtual {v3}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateFontSize$1()V

    .line 157
    .line 158
    .line 159
    :cond_8
    :goto_2
    iget-object p0, v3, Lorg/wikipedia/theme/ThemeChooserDialog;->appearanceSettingInteractionEvent:Lokhttp3/ConnectionPool;

    .line 160
    .line 161
    if-eqz p0, :cond_9

    .line 162
    .line 163
    int-to-float p1, v8

    .line 164
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    int-to-float v0, v0

    .line 169
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const-string v1, "fontSizeChange"

    .line 178
    .line 179
    invoke-virtual {p0, v1, p1, v0}, Lokhttp3/ConnectionPool;->submitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :goto_3
    return-void

    .line 183
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v1

    .line 187
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    iget-object p1, v3, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    .line 191
    .line 192
    iget-object v0, p1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 193
    .line 194
    check-cast p0, Lorg/wikipedia/theme/Theme;

    .line 195
    .line 196
    if-eq v0, p0, :cond_b

    .line 197
    .line 198
    iget-object v3, v3, Lorg/wikipedia/theme/ThemeChooserDialog;->appearanceSettingInteractionEvent:Lokhttp3/ConnectionPool;

    .line 199
    .line 200
    if-eqz v3, :cond_a

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->getTag()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lorg/wikipedia/theme/Theme;->getTag()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const-string v2, "themeChange"

    .line 217
    .line 218
    invoke-virtual {v3, v2, v0, v1}, Lokhttp3/ConnectionPool;->submitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, p0}, Lorg/wikipedia/WikipediaApp;->setCurrentTheme(Lorg/wikipedia/theme/Theme;)V

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v1

    .line 229
    :cond_b
    :goto_4
    return-void

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
