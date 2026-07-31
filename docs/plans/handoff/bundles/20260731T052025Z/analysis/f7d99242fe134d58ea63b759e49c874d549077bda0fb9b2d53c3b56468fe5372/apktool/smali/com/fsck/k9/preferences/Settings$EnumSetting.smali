.class public final Lcom/fsck/k9/preferences/Settings$EnumSetting;
.super Lcom/fsck/k9/preferences/Settings$SettingsDescription;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public enumClass:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Enum;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/preferences/Settings$EnumSetting;->$r8$classId:I

    .line 16
    invoke-direct {p0, p2}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;-><init>(Ljava/lang/Object;)V

    .line 17
    iput-object p1, p0, Lcom/fsck/k9/preferences/Settings$EnumSetting;->enumClass:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/fsck/k9/preferences/Settings$EnumSetting;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/fsck/k9/preferences/Settings$EnumSetting;->$r8$classId:I

    .line 3
    .line 4
    const/16 v0, 0x18

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/fsck/k9/preferences/Settings$EnumSetting;->enumClass:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public fromPrettyString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/preferences/Settings$EnumSetting;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->fromPrettyString(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string v0, ""

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Lcom/fsck/k9/preferences/Settings$EnumSetting;->enumClass:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lcom/fsck/k9/EmailAddressValidator;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/fsck/k9/EmailAddressValidator;->isValidAddressOnly(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    goto :goto_0

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
    :cond_2
    :goto_0
    return-object p1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/preferences/Settings$EnumSetting;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/fsck/k9/preferences/Settings$EnumSetting;->enumClass:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/fsck/k9/EmailAddressValidator;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/fsck/k9/EmailAddressValidator;->isValidAddressOnly(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    :goto_0
    return-object p1

    .line 29
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object p0, p0, Lcom/fsck/k9/preferences/Settings$EnumSetting;->enumClass:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, [I

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_1
    const/16 v1, 0x9

    .line 39
    .line 40
    if-ge v0, v1, :cond_3

    .line 41
    .line 42
    aget v1, p0, v0

    .line 43
    .line 44
    if-ne p1, v1, :cond_2

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 55
    .line 56
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 57
    .line 58
    .line 59
    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 61
    .line 62
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :pswitch_1
    :try_start_1
    iget-object p0, p0, Lcom/fsck/k9/preferences/Settings$EnumSetting;->enumClass:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Ljava/lang/Class;

    .line 69
    .line 70
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 71
    .line 72
    .line 73
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    return-object p0

    .line 75
    :catch_1
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 76
    .line 77
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toPrettyString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/preferences/Settings$EnumSetting;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->toPrettyString(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    :cond_0
    return-object p1

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/preferences/Settings$EnumSetting;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    return-object p1

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
