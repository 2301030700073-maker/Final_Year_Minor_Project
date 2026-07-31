.class public Lcom/fsck/k9/preferences/Settings$ColorSetting;
.super Lcom/fsck/k9/preferences/Settings$SettingsDescription;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/preferences/Settings$ColorSetting;->$r8$classId:I

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/fsck/k9/preferences/Settings$ColorSetting;->$r8$classId:I

    invoke-direct {p0, p2}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcom/fsck/k9/preferences/Settings$ColorSetting;->$r8$classId:I

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public fromPrettyString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/preferences/Settings$ColorSetting;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lnet/thunderbird/core/preference/AppTheme;->DARK:Lnet/thunderbird/core/preference/AppTheme;

    .line 4
    .line 5
    sget-object v2, Lnet/thunderbird/core/preference/AppTheme;->LIGHT:Lnet/thunderbird/core/preference/AppTheme;

    .line 6
    .line 7
    const-string v3, "dark"

    .line 8
    .line 9
    const-string v4, "light"

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    :pswitch_0
    invoke-super {p0, p1}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->fromPrettyString(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    move-object v1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string p0, "follow_system"

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    sget-object v1, Lnet/thunderbird/core/preference/AppTheme;->FOLLOW_SYSTEM:Lnet/thunderbird/core/preference/AppTheme;

    .line 43
    .line 44
    :goto_0
    return-object v1

    .line 45
    :cond_2
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 46
    .line 47
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :pswitch_2
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    sget-object p0, Lnet/thunderbird/core/preference/SubTheme;->LIGHT:Lnet/thunderbird/core/preference/SubTheme;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_4

    .line 65
    .line 66
    sget-object p0, Lnet/thunderbird/core/preference/SubTheme;->DARK:Lnet/thunderbird/core/preference/SubTheme;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    const-string/jumbo p0, "use_global"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_5

    .line 77
    .line 78
    sget-object p0, Lnet/thunderbird/core/preference/SubTheme;->USE_GLOBAL:Lnet/thunderbird/core/preference/SubTheme;

    .line 79
    .line 80
    :goto_1
    return-object p0

    .line 81
    :cond_5
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 82
    .line 83
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :pswitch_3
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_6

    .line 92
    .line 93
    move-object v1, v2

    .line 94
    goto :goto_2

    .line 95
    :cond_6
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_7

    .line 100
    .line 101
    :goto_2
    return-object v1

    .line 102
    :cond_7
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 103
    .line 104
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :pswitch_4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    const/4 v0, 0x7

    .line 113
    if-ne p0, v0, :cond_8

    .line 114
    .line 115
    const/4 p0, 0x1

    .line 116
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const/16 p1, 0x10

    .line 121
    .line 122
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    const/high16 p1, -0x1000000

    .line 127
    .line 128
    or-int/2addr p0, p1

    .line 129
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-object p0

    .line 134
    :catch_0
    :cond_8
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 135
    .line 136
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/preferences/Settings$ColorSetting;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/Settings$ColorSetting;->fromString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    :goto_0
    return-object p0

    .line 37
    :cond_1
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 38
    .line 39
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :pswitch_1
    const-string p0, "[0-2]*[0-9]:[0-5]*[0-9]"

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_2
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 53
    .line 54
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :pswitch_2
    :try_start_0
    invoke-static {p1}, Lnet/thunderbird/core/preference/AppTheme;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/AppTheme;

    .line 59
    .line 60
    .line 61
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-object p0

    .line 63
    :catch_0
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 64
    .line 65
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :pswitch_3
    :try_start_1
    invoke-static {p1}, Lnet/thunderbird/core/preference/SubTheme;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/SubTheme;

    .line 70
    .line 71
    .line 72
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    return-object p0

    .line 74
    :catch_1
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 75
    .line 76
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :pswitch_4
    :try_start_2
    invoke-static {p1}, Lnet/thunderbird/core/preference/AppTheme;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/AppTheme;

    .line 81
    .line 82
    .line 83
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 84
    return-object p0

    .line 85
    :catch_2
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 86
    .line 87
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :pswitch_5
    return-object p1

    .line 92
    :pswitch_6
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 100
    return-object p0

    .line 101
    :catch_3
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 102
    .line 103
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 107
    return-object p1
.end method

.method public toPrettyString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lcom/fsck/k9/preferences/Settings$ColorSetting;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "light"

    .line 5
    .line 6
    const-string v3, "dark"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const-string v5, "Unexpected case: "

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    :pswitch_0
    invoke-super {p0, p1}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->toPrettyString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :pswitch_1
    check-cast p1, Lnet/thunderbird/core/preference/AppTheme;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    if-eq p0, v6, :cond_1

    .line 29
    .line 30
    if-ne p0, v1, :cond_0

    .line 31
    .line 32
    const-string v2, "follow_system"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p1, v5}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    move-object v2, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v2, v3

    .line 41
    :cond_2
    :goto_0
    return-object v2

    .line 42
    :pswitch_2
    check-cast p1, Lnet/thunderbird/core/preference/SubTheme;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_5

    .line 49
    .line 50
    if-eq p0, v6, :cond_4

    .line 51
    .line 52
    if-ne p0, v1, :cond_3

    .line 53
    .line 54
    const-string/jumbo v2, "use_global"

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-static {p1, v5}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v2, v4

    .line 62
    goto :goto_1

    .line 63
    :cond_4
    move-object v2, v3

    .line 64
    :cond_5
    :goto_1
    return-object v2

    .line 65
    :pswitch_3
    check-cast p1, Lnet/thunderbird/core/preference/AppTheme;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_7

    .line 72
    .line 73
    if-ne p0, v6, :cond_6

    .line 74
    .line 75
    move-object v2, v3

    .line 76
    goto :goto_2

    .line 77
    :cond_6
    invoke-static {p1, v5}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    move-object v2, v4

    .line 81
    :cond_7
    :goto_2
    return-object v2

    .line 82
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    const p1, 0xffffff

    .line 89
    .line 90
    .line 91
    and-int/2addr p0, p1

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-array p1, v6, [Ljava/lang/Object;

    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    aput-object p0, p1, v0

    .line 100
    .line 101
    const-string p0, "#%06x"

    .line 102
    .line 103
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/preferences/Settings$ColorSetting;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0, p1}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    return-object p1

    .line 14
    :pswitch_2
    check-cast p1, Lnet/thunderbird/core/preference/AppTheme;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_3
    check-cast p1, Lnet/thunderbird/core/preference/SubTheme;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :pswitch_4
    check-cast p1, Lnet/thunderbird/core/preference/AppTheme;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
