.class public final Lcom/fsck/k9/preferences/upgrader/AccountSettingsUpgraderTo80;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/preferences/SettingsUpgrader;


# instance fields
.field public final synthetic $r8$classId:I

.field public final notificationLightDecoder:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/fsck/k9/preferences/upgrader/AccountSettingsUpgraderTo80;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const-class v0, Lcom/fsck/k9/notification/NotificationLightDecoder;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/fsck/k9/notification/NotificationLightDecoder;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/fsck/k9/preferences/upgrader/AccountSettingsUpgraderTo80;->notificationLightDecoder:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/fsck/k9/preferences/upgrader/AccountSettingsUpgraderTo80;->$r8$classId:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/fsck/k9/preferences/upgrader/AccountSettingsUpgraderTo80;->notificationLightDecoder:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final upgrade(Ljava/util/LinkedHashMap;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/preferences/upgrader/AccountSettingsUpgraderTo80;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/preferences/upgrader/AccountSettingsUpgraderTo80;->notificationLightDecoder:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string v0, "incomingServerSettings"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v1, v0, Ljava/lang/String;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v2

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    check-cast p0, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;->deserialize(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object p0, v2

    .line 33
    :goto_1
    if-eqz p0, :cond_2

    .line 34
    .line 35
    iget-object p0, p0, Lcom/fsck/k9/mail/ServerSettings;->extra:Ljava/util/Map;

    .line 36
    .line 37
    const-string v0, "pathPrefix"

    .line 38
    .line 39
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    move-object v2, p0

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    :cond_2
    if-nez v2, :cond_3

    .line 47
    .line 48
    const-string v2, ""

    .line 49
    .line 50
    :cond_3
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_4

    .line 55
    .line 56
    const-string v2, "/"

    .line 57
    .line 58
    :cond_4
    const-string p0, "folderPathDelimiter"

    .line 59
    .line 60
    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_0
    const-string v0, "led"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/Boolean;

    .line 71
    .line 72
    const-string v1, "ledColor"

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/Integer;

    .line 79
    .line 80
    const-string v2, "chipColor"

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Ljava/lang/Integer;

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    const/4 v2, 0x0

    .line 100
    :goto_2
    check-cast p0, Lcom/fsck/k9/notification/NotificationLightDecoder;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v2, v0}, Lcom/fsck/k9/notification/NotificationLightDecoder;->decode(IIZ)Lnet/thunderbird/feature/notification/NotificationLight;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    const-string v0, "notificationLight"

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :cond_6
    return-void

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
