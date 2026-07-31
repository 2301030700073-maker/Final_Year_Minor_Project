.class public abstract Lorg/schabi/newpipe/util/DeviceUtils;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final BRAVIA_ATV2:Z

.field public static final BRAVIA_ATV3_4K:Z

.field public static final BRAVIA_VH1:Z

.field public static final BRAVIA_VH2:Z

.field public static final CVT_MT5886_EU_1G:Z

.field public static final HI3798MV200:Z

.field public static final HMB9213NW:Z

.field public static final PH7M_EU_5596:Z

.field public static final QM16XE_U:Z

.field public static final REALTEKATV:Z

.field public static final SAMSUNG:Z

.field public static final TX_50JXW834:Z

.field public static isFireTV:Ljava/lang/Boolean;

.field public static isTV:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "samsung"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lorg/schabi/newpipe/util/DeviceUtils;->SAMSUNG:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lorg/schabi/newpipe/util/DeviceUtils;->isTV:Ljava/lang/Boolean;

    .line 13
    .line 14
    sput-object v0, Lorg/schabi/newpipe/util/DeviceUtils;->isFireTV:Ljava/lang/Boolean;

    .line 15
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    const/16 v3, 0x18

    .line 21
    .line 22
    if-ne v0, v3, :cond_0

    .line 23
    .line 24
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 25
    .line 26
    const-string v5, "Hi3798MV200"

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    move v4, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v4, v1

    .line 37
    :goto_0
    sput-boolean v4, Lorg/schabi/newpipe/util/DeviceUtils;->HI3798MV200:Z

    .line 38
    .line 39
    if-ne v0, v3, :cond_1

    .line 40
    .line 41
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 42
    .line 43
    const-string v4, "cvt_mt5886_eu_1g"

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    move v3, v2

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v3, v1

    .line 54
    :goto_1
    sput-boolean v3, Lorg/schabi/newpipe/util/DeviceUtils;->CVT_MT5886_EU_1G:Z

    .line 55
    .line 56
    const/16 v3, 0x19

    .line 57
    .line 58
    if-ne v0, v3, :cond_2

    .line 59
    .line 60
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 61
    .line 62
    const-string v4, "RealtekATV"

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    move v3, v2

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    move v3, v1

    .line 73
    :goto_2
    sput-boolean v3, Lorg/schabi/newpipe/util/DeviceUtils;->REALTEKATV:Z

    .line 74
    .line 75
    const/16 v3, 0x1a

    .line 76
    .line 77
    if-lt v0, v3, :cond_3

    .line 78
    .line 79
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 80
    .line 81
    const-string v4, "PH7M_EU_5596"

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    move v3, v2

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    move v3, v1

    .line 92
    :goto_3
    sput-boolean v3, Lorg/schabi/newpipe/util/DeviceUtils;->PH7M_EU_5596:Z

    .line 93
    .line 94
    const/16 v3, 0x17

    .line 95
    .line 96
    if-ne v0, v3, :cond_4

    .line 97
    .line 98
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 99
    .line 100
    const-string v4, "QM16XE_U"

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    move v3, v2

    .line 109
    goto :goto_4

    .line 110
    :cond_4
    move v3, v1

    .line 111
    :goto_4
    sput-boolean v3, Lorg/schabi/newpipe/util/DeviceUtils;->QM16XE_U:Z

    .line 112
    .line 113
    const/16 v3, 0x1d

    .line 114
    .line 115
    if-ne v0, v3, :cond_5

    .line 116
    .line 117
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 118
    .line 119
    const-string v5, "BRAVIA_VH1"

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_5

    .line 126
    .line 127
    move v4, v2

    .line 128
    goto :goto_5

    .line 129
    :cond_5
    move v4, v1

    .line 130
    :goto_5
    sput-boolean v4, Lorg/schabi/newpipe/util/DeviceUtils;->BRAVIA_VH1:Z

    .line 131
    .line 132
    if-ne v0, v3, :cond_6

    .line 133
    .line 134
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 135
    .line 136
    const-string v3, "BRAVIA_VH2"

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    move v1, v2

    .line 145
    :cond_6
    sput-boolean v1, Lorg/schabi/newpipe/util/DeviceUtils;->BRAVIA_VH2:Z

    .line 146
    .line 147
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 148
    .line 149
    const-string v1, "BRAVIA_ATV2"

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    sput-boolean v1, Lorg/schabi/newpipe/util/DeviceUtils;->BRAVIA_ATV2:Z

    .line 156
    .line 157
    const-string v1, "BRAVIA_ATV3_4K"

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    sput-boolean v1, Lorg/schabi/newpipe/util/DeviceUtils;->BRAVIA_ATV3_4K:Z

    .line 164
    .line 165
    const-string v1, "TX_50JXW834"

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    sput-boolean v1, Lorg/schabi/newpipe/util/DeviceUtils;->TX_50JXW834:Z

    .line 172
    .line 173
    const-string v1, "HMB9213NW"

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    sput-boolean v0, Lorg/schabi/newpipe/util/DeviceUtils;->HMB9213NW:Z

    .line 180
    .line 181
    return-void
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    float-to-int p0, p0

    .line 16
    return p0
.end method

.method public static getWindowHeight(Landroid/view/WindowManager;)I
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    or-int/2addr v1, v2

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-static {v0}, Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;->m$1(Landroid/graphics/Insets;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v0}, Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;->m$3(Landroid/graphics/Insets;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    add-int/2addr v1, v0

    .line 45
    sub-int/2addr p0, v1

    .line 46
    return p0

    .line 47
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 57
    .line 58
    .line 59
    iget p0, v0, Landroid/graphics/Point;->y:I

    .line 60
    .line 61
    return p0
.end method

.method public static isFireTv()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/schabi/newpipe/util/DeviceUtils;->isFireTV:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/App;->Companion:Lorg/schabi/newpipe/App$Companion;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lorg/schabi/newpipe/App$Companion;->getInstance()Lorg/schabi/newpipe/App;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "amazon.hardware.fire_tv"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lorg/schabi/newpipe/util/DeviceUtils;->isFireTV:Ljava/lang/Boolean;

    .line 34
    .line 35
    return v0
.end method

.method public static isInMultiWindow(Landroidx/appcompat/app/AppCompatActivity;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 20
    .line 21
    if-ge v0, p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f1304ef

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, ""

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x7f1304f1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    return v2

    .line 33
    :cond_0
    const v1, 0x7f1304f0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    return v1

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 57
    .line 58
    and-int/lit8 p0, p0, 0xf

    .line 59
    .line 60
    const/4 v0, 0x3

    .line 61
    if-lt p0, v0, :cond_2

    .line 62
    .line 63
    return v2

    .line 64
    :cond_2
    return v1
.end method

.method public static isTv(Landroid/content/Context;)Z
    .locals 7

    .line 1
    sget-object v0, Lorg/schabi/newpipe/util/DeviceUtils;->isTV:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/App;->Companion:Lorg/schabi/newpipe/App$Companion;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lorg/schabi/newpipe/App$Companion;->getInstance()Lorg/schabi/newpipe/App;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-class v1, Landroid/app/UiModeManager;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/app/UiModeManager;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x4

    .line 36
    const/4 v3, 0x1

    .line 37
    const/4 v4, 0x0

    .line 38
    if-eq v1, v2, :cond_2

    .line 39
    .line 40
    invoke-static {}, Lorg/schabi/newpipe/util/DeviceUtils;->isFireTv()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    const-string v1, "android.software.leanback"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v1, v4

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    move v1, v3

    .line 58
    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    const/16 v6, 0x18

    .line 61
    .line 62
    if-lt v5, v6, :cond_6

    .line 63
    .line 64
    const-class v5, Landroid/os/BatteryManager;

    .line 65
    .line 66
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Landroid/os/BatteryManager;

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_3

    .line 77
    .line 78
    move p0, v3

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    move p0, v4

    .line 81
    :goto_2
    if-nez v1, :cond_5

    .line 82
    .line 83
    if-eqz p0, :cond_4

    .line 84
    .line 85
    const-string p0, "android.hardware.touchscreen"

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-nez p0, :cond_4

    .line 92
    .line 93
    const-string p0, "android.hardware.usb.host"

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_4

    .line 100
    .line 101
    const-string p0, "android.hardware.ethernet"

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_4

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    move v3, v4

    .line 111
    :cond_5
    :goto_3
    move v1, v3

    .line 112
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    sput-object p0, Lorg/schabi/newpipe/util/DeviceUtils;->isTV:Ljava/lang/Boolean;

    .line 117
    .line 118
    return v1
.end method
