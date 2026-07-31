.class public final Lorg/wikipedia/theme/ThemeChooserDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0006\u0004\u0005\u0006\u0007\u0006\u0008B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/wikipedia/theme/ThemeChooserDialog;",
        "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;",
        "<init>",
        "()V",
        "Callback",
        "FontSizeAction",
        "ThemeButtonListener",
        "1",
        "org/wikipedia/login/LoginClient",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BUTTON_STROKE_WIDTH:I


# instance fields
.field public _binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

.field public final app:Lorg/wikipedia/WikipediaApp;

.field public appearanceSettingInteractionEvent:Lokhttp3/ConnectionPool;

.field public isEditing:Z

.field public updatingFont:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    .line 3
    invoke-static {v0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lorg/wikipedia/theme/ThemeChooserDialog;->BUTTON_STROKE_WIDTH:I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 6
    .line 7
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    .line 12
    .line 13
    return-void
.end method

.method public static isMatchingSystemThemeEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getShouldMatchSystemTheme()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x1d

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public static updateThemeButtonStroke(Lcom/google/android/material/button/MaterialButton;Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget v0, Lorg/wikipedia/theme/ThemeChooserDialog;->BUTTON_STROKE_WIDTH:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 8
    .line 9
    .line 10
    xor-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final callback()Lorg/wikipedia/theme/ThemeChooserDialog$Callback;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-class v2, Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 p0, 0x0

    .line 67
    :goto_0
    check-cast p0, Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    .line 68
    .line 69
    return-object p0
.end method

.method public final conditionallyDisableThemeButtons()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeLight:Lcom/google/android/material/button/MaterialButton;

    .line 7
    .line 8
    invoke-static {}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const v3, 0x3e4ccccd    # 0.2f

    .line 15
    .line 16
    .line 17
    iget-object v4, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v4, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    move v1, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v1, v2

    .line 32
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeSepia:Lcom/google/android/material/button/MaterialButton;

    .line 41
    .line 42
    invoke-static {}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object v1, v4, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 49
    .line 50
    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    move v1, v3

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v1, v2

    .line 59
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeDark:Lcom/google/android/material/button/MaterialButton;

    .line 68
    .line 69
    invoke-static {}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    iget-object v1, v4, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 76
    .line 77
    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_2

    .line 82
    .line 83
    move v1, v3

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    move v1, v2

    .line 86
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeBlack:Lcom/google/android/material/button/MaterialButton;

    .line 95
    .line 96
    invoke-static {}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    iget-object v1, v4, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 103
    .line 104
    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_3

    .line 109
    .line 110
    move v2, v3

    .line 111
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeLight:Lcom/google/android/material/button/MaterialButton;

    .line 120
    .line 121
    invoke-static {}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    const/4 v2, 0x0

    .line 126
    const/4 v3, 0x1

    .line 127
    if-eqz v1, :cond_5

    .line 128
    .line 129
    iget-object v1, v4, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 130
    .line 131
    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_4

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_4
    move v1, v2

    .line 139
    goto :goto_4

    .line 140
    :cond_5
    :goto_3
    move v1, v3

    .line 141
    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeSepia:Lcom/google/android/material/button/MaterialButton;

    .line 150
    .line 151
    invoke-static {}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_7

    .line 156
    .line 157
    iget-object v1, v4, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 158
    .line 159
    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_6

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_6
    move v1, v2

    .line 167
    goto :goto_6

    .line 168
    :cond_7
    :goto_5
    move v1, v3

    .line 169
    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeDark:Lcom/google/android/material/button/MaterialButton;

    .line 178
    .line 179
    invoke-static {}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_9

    .line 184
    .line 185
    iget-object v1, v4, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 186
    .line 187
    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_8

    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_8
    move v1, v2

    .line 195
    goto :goto_8

    .line 196
    :cond_9
    :goto_7
    move v1, v3

    .line 197
    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 198
    .line 199
    .line 200
    iget-object p0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    iget-object p0, p0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeBlack:Lcom/google/android/material/button/MaterialButton;

    .line 206
    .line 207
    invoke-static {}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_a

    .line 212
    .line 213
    iget-object v0, v4, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 214
    .line 215
    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_b

    .line 220
    .line 221
    :cond_a
    move v2, v3

    .line 222
    :cond_b
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 223
    .line 224
    .line 225
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->callback()Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Lorg/wikipedia/theme/ThemeChooserDialog$Callback;->onCancelThemeChooser()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "invokeSource"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast p1, Lorg/wikipedia/Constants$InvokeSource;

    .line 18
    .line 19
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 20
    .line 21
    const/16 v1, 0x15

    .line 22
    .line 23
    invoke-direct {v0, v1, p1}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->appearanceSettingInteractionEvent:Lokhttp3/ConnectionPool;

    .line 27
    .line 28
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0c018a

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move-object/from16 v3, p1

    .line 11
    .line 12
    move-object/from16 v4, p2

    .line 13
    .line 14
    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v3, 0x7f0900b2

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    move-object v7, v4

    .line 26
    check-cast v7, Landroid/widget/TextView;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v7, :cond_2

    .line 30
    .line 31
    const v3, 0x7f0900b6

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    move-object v8, v5

    .line 39
    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 40
    .line 41
    if-eqz v8, :cond_2

    .line 42
    .line 43
    const v3, 0x7f0900b7

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    move-object v9, v5

    .line 51
    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    .line 52
    .line 53
    if-eqz v9, :cond_2

    .line 54
    .line 55
    const v3, 0x7f0900b3

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    move-object v10, v5

    .line 63
    check-cast v10, Landroid/widget/TextView;

    .line 64
    .line 65
    if-eqz v10, :cond_2

    .line 66
    .line 67
    const v3, 0x7f0900b8

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    move-object v11, v5

    .line 75
    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    .line 76
    .line 77
    if-eqz v11, :cond_2

    .line 78
    .line 79
    const v3, 0x7f0900b9

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    move-object v12, v5

    .line 87
    check-cast v12, Lcom/google/android/material/button/MaterialButton;

    .line 88
    .line 89
    if-eqz v12, :cond_2

    .line 90
    .line 91
    const v3, 0x7f0900ba

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    move-object v13, v5

    .line 99
    check-cast v13, Lcom/google/android/material/button/MaterialButton;

    .line 100
    .line 101
    if-eqz v13, :cond_2

    .line 102
    .line 103
    const v3, 0x7f0900bb

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    move-object v14, v5

    .line 111
    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 112
    .line 113
    if-eqz v14, :cond_2

    .line 114
    .line 115
    const v3, 0x7f090261

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    move-object v15, v5

    .line 123
    check-cast v15, Landroid/widget/ProgressBar;

    .line 124
    .line 125
    if-eqz v15, :cond_2

    .line 126
    .line 127
    const v3, 0x7f090260

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    move-object/from16 v16, v5

    .line 135
    .line 136
    check-cast v16, Landroid/widget/LinearLayout;

    .line 137
    .line 138
    if-eqz v16, :cond_2

    .line 139
    .line 140
    const v3, 0x7f090412

    .line 141
    .line 142
    .line 143
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    move-object/from16 v17, v5

    .line 148
    .line 149
    check-cast v17, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 150
    .line 151
    if-eqz v17, :cond_2

    .line 152
    .line 153
    const v3, 0x7f090538

    .line 154
    .line 155
    .line 156
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    move-object/from16 v18, v5

    .line 161
    .line 162
    check-cast v18, Landroid/widget/LinearLayout;

    .line 163
    .line 164
    if-eqz v18, :cond_2

    .line 165
    .line 166
    const v3, 0x7f0905fc

    .line 167
    .line 168
    .line 169
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    move-object/from16 v19, v5

    .line 174
    .line 175
    check-cast v19, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 176
    .line 177
    if-eqz v19, :cond_2

    .line 178
    .line 179
    const v3, 0x7f090648

    .line 180
    .line 181
    .line 182
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    move-object/from16 v20, v5

    .line 187
    .line 188
    check-cast v20, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 189
    .line 190
    if-eqz v20, :cond_2

    .line 191
    .line 192
    const v3, 0x7f09069b

    .line 193
    .line 194
    .line 195
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    move-object/from16 v21, v5

    .line 200
    .line 201
    check-cast v21, Landroid/widget/TextView;

    .line 202
    .line 203
    if-eqz v21, :cond_2

    .line 204
    .line 205
    const v3, 0x7f0906a6

    .line 206
    .line 207
    .line 208
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    move-object/from16 v22, v5

    .line 213
    .line 214
    check-cast v22, Landroid/widget/TextView;

    .line 215
    .line 216
    if-eqz v22, :cond_2

    .line 217
    .line 218
    const v3, 0x7f0906a7

    .line 219
    .line 220
    .line 221
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    move-object/from16 v23, v5

    .line 226
    .line 227
    check-cast v23, Lorg/wikipedia/views/DiscreteSeekBar;

    .line 228
    .line 229
    if-eqz v23, :cond_2

    .line 230
    .line 231
    const v3, 0x7f0906b4

    .line 232
    .line 233
    .line 234
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    move-object/from16 v24, v5

    .line 239
    .line 240
    check-cast v24, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 241
    .line 242
    if-eqz v24, :cond_2

    .line 243
    .line 244
    const v3, 0x7f0906b5

    .line 245
    .line 246
    .line 247
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    move-object/from16 v25, v5

    .line 252
    .line 253
    check-cast v25, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 254
    .line 255
    if-eqz v25, :cond_2

    .line 256
    .line 257
    const v3, 0x7f0906b6

    .line 258
    .line 259
    .line 260
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    move-object/from16 v26, v5

    .line 265
    .line 266
    check-cast v26, Landroid/widget/TextView;

    .line 267
    .line 268
    if-eqz v26, :cond_2

    .line 269
    .line 270
    const v3, 0x7f0906b7

    .line 271
    .line 272
    .line 273
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    move-object/from16 v27, v5

    .line 278
    .line 279
    check-cast v27, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 280
    .line 281
    if-eqz v27, :cond_2

    .line 282
    .line 283
    const v3, 0x7f0906ef

    .line 284
    .line 285
    .line 286
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    move-object/from16 v28, v5

    .line 291
    .line 292
    check-cast v28, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 293
    .line 294
    if-eqz v28, :cond_2

    .line 295
    .line 296
    new-instance v5, Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 297
    .line 298
    move-object v6, v1

    .line 299
    check-cast v6, Landroid/widget/FrameLayout;

    .line 300
    .line 301
    invoke-direct/range {v5 .. v28}, Lorg/wikipedia/databinding/DialogThemeChooserBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Lcom/google/android/material/materialswitch/MaterialSwitch;Landroid/widget/LinearLayout;Lcom/google/android/material/materialswitch/MaterialSwitch;Lcom/google/android/material/materialswitch/MaterialSwitch;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/wikipedia/views/DiscreteSeekBar;Lcom/google/android/material/materialswitch/MaterialSwitch;Lcom/google/android/material/materialswitch/MaterialSwitch;Landroid/widget/TextView;Lcom/google/android/material/materialswitch/MaterialSwitch;Lcom/google/android/material/materialswitch/MaterialSwitch;)V

    .line 302
    .line 303
    .line 304
    iput-object v5, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 305
    .line 306
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    const-string v3, "isEditing"

    .line 311
    .line 312
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    iput-boolean v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->isEditing:Z

    .line 317
    .line 318
    invoke-virtual {v0}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateComponents()V

    .line 319
    .line 320
    .line 321
    iget-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    iget-object v1, v1, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->textSettingsCategory:Landroid/widget/TextView;

    .line 327
    .line 328
    iget-boolean v3, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->isEditing:Z

    .line 329
    .line 330
    if-eqz v3, :cond_0

    .line 331
    .line 332
    const v3, 0x7f1209b9

    .line 333
    .line 334
    .line 335
    goto :goto_0

    .line 336
    :cond_0
    const v3, 0x7f1209ba

    .line 337
    .line 338
    .line 339
    :goto_0
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    .line 345
    .line 346
    iget-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 347
    .line 348
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    iget-object v1, v1, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonDecreaseTextSize:Landroid/widget/TextView;

    .line 352
    .line 353
    new-instance v3, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;

    .line 354
    .line 355
    sget-object v5, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;->DECREASE:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    .line 356
    .line 357
    invoke-direct {v3, v0, v5}, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    .line 362
    .line 363
    iget-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 364
    .line 365
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    iget-object v1, v1, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonIncreaseTextSize:Landroid/widget/TextView;

    .line 369
    .line 370
    new-instance v3, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;

    .line 371
    .line 372
    sget-object v5, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;->INCREASE:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    .line 373
    .line 374
    invoke-direct {v3, v0, v5}, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    .line 379
    .line 380
    iget-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 381
    .line 382
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    iget-object v1, v1, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonDecreaseTextSize:Landroid/widget/TextView;

    .line 386
    .line 387
    iget-object v3, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 388
    .line 389
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    iget-object v3, v3, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonIncreaseTextSize:Landroid/widget/TextView;

    .line 393
    .line 394
    const/4 v5, 0x2

    .line 395
    new-array v6, v5, [Landroid/view/View;

    .line 396
    .line 397
    aput-object v1, v6, v2

    .line 398
    .line 399
    const/4 v1, 0x1

    .line 400
    aput-object v3, v6, v1

    .line 401
    .line 402
    move v3, v2

    .line 403
    :goto_1
    if-ge v3, v5, :cond_1

    .line 404
    .line 405
    aget-object v7, v6, v3

    .line 406
    .line 407
    invoke-virtual {v7}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    invoke-static {v7, v8}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 412
    .line 413
    .line 414
    add-int/lit8 v3, v3, 0x1

    .line 415
    .line 416
    goto :goto_1

    .line 417
    :cond_1
    iget-object v3, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 418
    .line 419
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    iget-object v3, v3, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeLight:Lcom/google/android/material/button/MaterialButton;

    .line 423
    .line 424
    new-instance v6, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;

    .line 425
    .line 426
    sget-object v7, Lorg/wikipedia/theme/Theme;->LIGHT:Lorg/wikipedia/theme/Theme;

    .line 427
    .line 428
    invoke-direct {v6, v0, v7}, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/Theme;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    .line 433
    .line 434
    iget-object v3, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 435
    .line 436
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    iget-object v3, v3, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeDark:Lcom/google/android/material/button/MaterialButton;

    .line 440
    .line 441
    new-instance v6, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;

    .line 442
    .line 443
    sget-object v7, Lorg/wikipedia/theme/Theme;->DARK:Lorg/wikipedia/theme/Theme;

    .line 444
    .line 445
    invoke-direct {v6, v0, v7}, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/Theme;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    .line 450
    .line 451
    iget-object v3, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 452
    .line 453
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    iget-object v3, v3, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeBlack:Lcom/google/android/material/button/MaterialButton;

    .line 457
    .line 458
    new-instance v6, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;

    .line 459
    .line 460
    sget-object v7, Lorg/wikipedia/theme/Theme;->BLACK:Lorg/wikipedia/theme/Theme;

    .line 461
    .line 462
    invoke-direct {v6, v0, v7}, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/Theme;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    .line 467
    .line 468
    iget-object v3, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 469
    .line 470
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    .line 472
    .line 473
    iget-object v3, v3, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeSepia:Lcom/google/android/material/button/MaterialButton;

    .line 474
    .line 475
    new-instance v6, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;

    .line 476
    .line 477
    sget-object v7, Lorg/wikipedia/theme/Theme;->SEPIA:Lorg/wikipedia/theme/Theme;

    .line 478
    .line 479
    invoke-direct {v6, v0, v7}, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/Theme;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    .line 484
    .line 485
    iget-object v3, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 486
    .line 487
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    iget-object v3, v3, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonFontFamilySansSerif:Lcom/google/android/material/button/MaterialButton;

    .line 491
    .line 492
    new-instance v6, Landroidx/preference/Preference$1;

    .line 493
    .line 494
    const/16 v7, 0xb

    .line 495
    .line 496
    invoke-direct {v6, v7, v0}, Landroidx/preference/Preference$1;-><init>(ILjava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    .line 501
    .line 502
    iget-object v3, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 503
    .line 504
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    iget-object v3, v3, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonFontFamilySerif:Lcom/google/android/material/button/MaterialButton;

    .line 508
    .line 509
    new-instance v6, Landroidx/preference/Preference$1;

    .line 510
    .line 511
    invoke-direct {v6, v7, v0}, Landroidx/preference/Preference$1;-><init>(ILjava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    .line 516
    .line 517
    iget-object v3, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 518
    .line 519
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    iget-object v3, v3, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->themeChooserDarkModeDimImagesSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 523
    .line 524
    new-instance v6, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;

    .line 525
    .line 526
    invoke-direct {v6, v0, v2}, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;I)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 530
    .line 531
    .line 532
    iget-object v3, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 533
    .line 534
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    .line 536
    .line 537
    iget-object v3, v3, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->themeChooserMatchSystemThemeSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 538
    .line 539
    new-instance v6, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;

    .line 540
    .line 541
    invoke-direct {v6, v0, v1}, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;I)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 545
    .line 546
    .line 547
    iget-object v3, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 548
    .line 549
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    iget-object v3, v3, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->themeChooserReadingFocusModeSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 553
    .line 554
    new-instance v6, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;

    .line 555
    .line 556
    invoke-direct {v6, v0, v5}, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;I)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 560
    .line 561
    .line 562
    iget-object v3, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 563
    .line 564
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    iget-object v3, v3, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->textSizeSeekBar:Lorg/wikipedia/views/DiscreteSeekBar;

    .line 568
    .line 569
    new-instance v5, Landroidx/preference/SeekBarPreference$1;

    .line 570
    .line 571
    invoke-direct {v5, v1, v0}, Landroidx/preference/SeekBarPreference$1;-><init>(ILjava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 575
    .line 576
    .line 577
    iget-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 578
    .line 579
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 580
    .line 581
    .line 582
    iget-object v1, v1, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->syntaxHighlightSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 583
    .line 584
    new-instance v3, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;

    .line 585
    .line 586
    const/4 v5, 0x3

    .line 587
    invoke-direct {v3, v0, v5}, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;I)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 591
    .line 592
    .line 593
    iget-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 594
    .line 595
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    .line 597
    .line 598
    iget-object v1, v1, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->monospaceFontSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 599
    .line 600
    new-instance v3, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;

    .line 601
    .line 602
    const/4 v6, 0x4

    .line 603
    invoke-direct {v3, v0, v6}, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;I)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 607
    .line 608
    .line 609
    iget-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 610
    .line 611
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    .line 613
    .line 614
    iget-object v1, v1, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->showLineNumbersSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 615
    .line 616
    new-instance v3, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;

    .line 617
    .line 618
    const/4 v6, 0x5

    .line 619
    invoke-direct {v3, v0, v6}, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;I)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 623
    .line 624
    .line 625
    iget-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 626
    .line 627
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 628
    .line 629
    .line 630
    iget-object v1, v1, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->typingSuggestionsSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 631
    .line 632
    new-instance v3, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;

    .line 633
    .line 634
    const/4 v6, 0x6

    .line 635
    invoke-direct {v3, v0, v6}, Lorg/wikipedia/theme/ThemeChooserDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;I)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 639
    .line 640
    .line 641
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    new-instance v3, Lorg/wikipedia/theme/ThemeChooserDialog$onCreateView$9;

    .line 646
    .line 647
    invoke-direct {v3, v0, v4, v2}, Lorg/wikipedia/theme/ThemeChooserDialog$onCreateView$9;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lkotlin/coroutines/Continuation;I)V

    .line 648
    .line 649
    .line 650
    invoke-static {v1, v4, v4, v3, v5}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 651
    .line 652
    .line 653
    iget-object v0, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 654
    .line 655
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    .line 657
    .line 658
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->rootView:Landroid/widget/FrameLayout;

    .line 659
    .line 660
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 661
    .line 662
    .line 663
    return-object v0

    .line 664
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    const-string v1, "Missing required view with ID: "

    .line 673
    .line 674
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    return-object v4
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 6
    .line 7
    return-void
.end method

.method public final onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p0, Landroid/view/View;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 22
    .line 23
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 42
    .line 43
    int-to-double v0, v0

    .line 44
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 45
    .line 46
    mul-double/2addr v0, v2

    .line 47
    double-to-int v0, v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final updateComponents()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateFontSize$1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonFontFamilySansSerif:Lcom/google/android/material/button/MaterialButton;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 16
    .line 17
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getFontFamily()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v3, v3, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonFontFamilySansSerif:Lcom/google/android/material/button/MaterialButton;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const v3, 0x7f040094

    .line 37
    .line 38
    .line 39
    const v4, 0x7f040520

    .line 40
    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    move v2, v4

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v2, v3

    .line 47
    :goto_0
    invoke-static {v1, v2}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonFontFamilySerif:Lcom/google/android/material/button/MaterialButton;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getFontFamily()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v5, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-object v5, v5, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonFontFamilySerif:Lcom/google/android/material/button/MaterialButton;

    .line 79
    .line 80
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    move v3, v4

    .line 91
    :cond_1
    invoke-static {v1, v3}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeLight:Lcom/google/android/material/button/MaterialButton;

    .line 108
    .line 109
    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    .line 110
    .line 111
    iget-object v2, v1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 112
    .line 113
    sget-object v3, Lorg/wikipedia/theme/Theme;->LIGHT:Lorg/wikipedia/theme/Theme;

    .line 114
    .line 115
    const/4 v4, 0x1

    .line 116
    const/4 v5, 0x0

    .line 117
    if-ne v2, v3, :cond_2

    .line 118
    .line 119
    move v2, v4

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    move v2, v5

    .line 122
    :goto_1
    invoke-static {v0, v2}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateThemeButtonStroke(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeSepia:Lcom/google/android/material/button/MaterialButton;

    .line 131
    .line 132
    iget-object v2, v1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 133
    .line 134
    sget-object v3, Lorg/wikipedia/theme/Theme;->SEPIA:Lorg/wikipedia/theme/Theme;

    .line 135
    .line 136
    if-ne v2, v3, :cond_3

    .line 137
    .line 138
    move v2, v4

    .line 139
    goto :goto_2

    .line 140
    :cond_3
    move v2, v5

    .line 141
    :goto_2
    invoke-static {v0, v2}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateThemeButtonStroke(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeDark:Lcom/google/android/material/button/MaterialButton;

    .line 150
    .line 151
    iget-object v2, v1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 152
    .line 153
    sget-object v3, Lorg/wikipedia/theme/Theme;->DARK:Lorg/wikipedia/theme/Theme;

    .line 154
    .line 155
    if-ne v2, v3, :cond_4

    .line 156
    .line 157
    move v2, v4

    .line 158
    goto :goto_3

    .line 159
    :cond_4
    move v2, v5

    .line 160
    :goto_3
    invoke-static {v0, v2}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateThemeButtonStroke(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->buttonThemeBlack:Lcom/google/android/material/button/MaterialButton;

    .line 169
    .line 170
    iget-object v2, v1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 171
    .line 172
    sget-object v3, Lorg/wikipedia/theme/Theme;->BLACK:Lorg/wikipedia/theme/Theme;

    .line 173
    .line 174
    if-ne v2, v3, :cond_5

    .line 175
    .line 176
    move v2, v4

    .line 177
    goto :goto_4

    .line 178
    :cond_5
    move v2, v5

    .line 179
    :goto_4
    invoke-static {v0, v2}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateThemeButtonStroke(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->themeChooserDarkModeDimImagesSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_6

    .line 194
    .line 195
    const v0, 0x7f04054f

    .line 196
    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_6
    const v0, 0x7f0404da

    .line 200
    .line 201
    .line 202
    :goto_5
    iget-object v2, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    iget-object v2, v2, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->themeChooserDarkModeDimImagesSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 208
    .line 209
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDimDarkModeImages()Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 214
    .line 215
    .line 216
    iget-object v2, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    iget-object v2, v2, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->themeChooserDarkModeDimImagesSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 222
    .line 223
    iget-object v1, v1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 224
    .line 225
    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 230
    .line 231
    .line 232
    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    iget-object v1, v1, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->themeChooserDarkModeDimImagesSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 238
    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    new-instance v3, Landroid/util/TypedValue;

    .line 244
    .line 245
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_7

    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_7
    const/4 v3, 0x0

    .line 260
    :goto_6
    if-eqz v3, :cond_11

    .line 261
    .line 262
    iget v0, v3, Landroid/util/TypedValue;->data:I

    .line 263
    .line 264
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    .line 266
    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 268
    .line 269
    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 270
    .line 271
    const/16 v2, 0x8

    .line 272
    .line 273
    const/16 v3, 0x1d

    .line 274
    .line 275
    if-lt v0, v3, :cond_8

    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    iget-object v0, v1, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->themeChooserMatchSystemThemeSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 281
    .line 282
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->themeChooserMatchSystemThemeSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 291
    .line 292
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getShouldMatchSystemTheme()Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->conditionallyDisableThemeButtons()V

    .line 300
    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    iget-object v0, v1, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->themeChooserMatchSystemThemeSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 307
    .line 308
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    :goto_7
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->themeChooserDarkModeDimImagesSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 317
    .line 318
    iget-boolean v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->isEditing:Z

    .line 319
    .line 320
    if-nez v1, :cond_9

    .line 321
    .line 322
    move v1, v5

    .line 323
    goto :goto_8

    .line 324
    :cond_9
    move v1, v2

    .line 325
    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->readingFocusModeContainer:Landroid/widget/LinearLayout;

    .line 334
    .line 335
    iget-boolean v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->isEditing:Z

    .line 336
    .line 337
    if-nez v1, :cond_a

    .line 338
    .line 339
    move v1, v5

    .line 340
    goto :goto_9

    .line 341
    :cond_a
    move v1, v2

    .line 342
    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->themeChooserReadingFocusModeDescription:Landroid/widget/TextView;

    .line 351
    .line 352
    iget-boolean v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->isEditing:Z

    .line 353
    .line 354
    if-nez v1, :cond_b

    .line 355
    .line 356
    move v1, v5

    .line 357
    goto :goto_a

    .line 358
    :cond_b
    move v1, v2

    .line 359
    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    .line 361
    .line 362
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->fontFamilyContainer:Landroid/widget/LinearLayout;

    .line 368
    .line 369
    iget-boolean v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->isEditing:Z

    .line 370
    .line 371
    if-nez v1, :cond_c

    .line 372
    .line 373
    move v1, v5

    .line 374
    goto :goto_b

    .line 375
    :cond_c
    move v1, v2

    .line 376
    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    .line 378
    .line 379
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 380
    .line 381
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->syntaxHighlightSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 385
    .line 386
    iget-boolean v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->isEditing:Z

    .line 387
    .line 388
    if-eqz v1, :cond_d

    .line 389
    .line 390
    move v1, v5

    .line 391
    goto :goto_c

    .line 392
    :cond_d
    move v1, v2

    .line 393
    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    .line 395
    .line 396
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->monospaceFontSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 402
    .line 403
    iget-boolean v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->isEditing:Z

    .line 404
    .line 405
    if-eqz v1, :cond_e

    .line 406
    .line 407
    move v1, v5

    .line 408
    goto :goto_d

    .line 409
    :cond_e
    move v1, v2

    .line 410
    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    .line 412
    .line 413
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 414
    .line 415
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->showLineNumbersSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 419
    .line 420
    iget-boolean v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->isEditing:Z

    .line 421
    .line 422
    if-eqz v1, :cond_f

    .line 423
    .line 424
    move v1, v5

    .line 425
    goto :goto_e

    .line 426
    :cond_f
    move v1, v2

    .line 427
    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    .line 429
    .line 430
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 431
    .line 432
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->typingSuggestionsSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 436
    .line 437
    iget-boolean v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->isEditing:Z

    .line 438
    .line 439
    if-eqz v1, :cond_10

    .line 440
    .line 441
    goto :goto_f

    .line 442
    :cond_10
    move v5, v2

    .line 443
    :goto_f
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 444
    .line 445
    .line 446
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->themeChooserReadingFocusModeSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 452
    .line 453
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingFocusModeEnabled()Z

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 458
    .line 459
    .line 460
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 461
    .line 462
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->syntaxHighlightSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 466
    .line 467
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditSyntaxHighlightEnabled()Z

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 472
    .line 473
    .line 474
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 475
    .line 476
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->monospaceFontSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 480
    .line 481
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditMonoSpaceFontEnabled()Z

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 486
    .line 487
    .line 488
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 489
    .line 490
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->showLineNumbersSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 494
    .line 495
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditLineNumbersEnabled()Z

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 500
    .line 501
    .line 502
    iget-object p0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 503
    .line 504
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    iget-object p0, p0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->typingSuggestionsSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 508
    .line 509
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditTypingSuggestionsEnabled()Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 514
    .line 515
    .line 516
    return-void

    .line 517
    :cond_11
    const-string p0, "Attribute not found; ID="

    .line 518
    .line 519
    invoke-static {v0, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object p0

    .line 523
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    return-void
.end method

.method public final updateFontSize$1()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->isEditing:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 7
    .line 8
    const v0, 0x7f1205f4

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 17
    .line 18
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    iget-object v2, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v2, v2, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->textSizeSeekBar:Lorg/wikipedia/views/DiscreteSeekBar;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Lorg/wikipedia/views/DiscreteSeekBar;->setValue(I)V

    .line 30
    .line 31
    .line 32
    int-to-float v2, v0

    .line 33
    new-instance v3, Landroid/util/TypedValue;

    .line 34
    .line 35
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 36
    .line 37
    .line 38
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 39
    .line 40
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const v5, 0x7f07049f

    .line 52
    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    mul-float/2addr v3, v2

    .line 63
    const/high16 v2, 0x3f800000    # 1.0f

    .line 64
    .line 65
    add-float/2addr v3, v2

    .line 66
    const/high16 v2, 0x42c80000    # 100.0f

    .line 67
    .line 68
    mul-float/2addr v3, v2

    .line 69
    float-to-int v2, v3

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-array v3, v6, [Ljava/lang/Object;

    .line 75
    .line 76
    aput-object v2, v3, v1

    .line 77
    .line 78
    const v2, 0x7f1209b0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    iget-object v3, v3, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->textSizePercent:Landroid/widget/TextView;

    .line 94
    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    new-array v0, v6, [Ljava/lang/Object;

    .line 98
    .line 99
    aput-object v2, v0, v1

    .line 100
    .line 101
    const v2, 0x7f1209b1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    iget-boolean v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->updatingFont:Z

    .line 112
    .line 113
    iget-object p0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 114
    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->fontChangeProgressBar:Landroid/widget/ProgressBar;

    .line 121
    .line 122
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iget-object p0, p0, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->fontChangeProgressBar:Landroid/widget/ProgressBar;

    .line 130
    .line 131
    const/16 v0, 0x8

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    return-void
.end method
