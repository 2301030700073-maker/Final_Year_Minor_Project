.class public final Lcom/fsck/k9/preferences/StringEnumSetting;
.super Lcom/fsck/k9/preferences/Settings$ColorSetting;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final values:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;I)V
    .locals 1

    .line 1
    iput p2, p0, Lcom/fsck/k9/preferences/StringEnumSetting;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    packed-switch p2, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const-string p2, "SSL_TLS_REQUIRED"

    .line 8
    .line 9
    invoke-direct {p0, v0, p2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/fsck/k9/preferences/StringEnumSetting;->values:Ljava/util/Set;

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    const/4 p2, 0x0

    .line 16
    invoke-direct {p0, v0, p2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/fsck/k9/preferences/StringEnumSetting;->values:Ljava/util/Set;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/fsck/k9/preferences/StringEnumSetting;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/StringEnumSetting;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 56
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/StringEnumSetting;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final fromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/preferences/StringEnumSetting;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/fsck/k9/preferences/StringEnumSetting;->values:Ljava/util/Set;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    move-object v1, p1

    .line 18
    :cond_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 22
    .line 23
    const-string v0, "Unsupported value: "

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :pswitch_0
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object p1, v1

    .line 43
    :goto_0
    if-nez p1, :cond_4

    .line 44
    .line 45
    :cond_3
    iget-object p0, p0, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->defaultValue:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-object p1, p0

    .line 51
    check-cast p1, Ljava/lang/String;

    .line 52
    .line 53
    :cond_4
    return-object p1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
