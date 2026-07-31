.class public final Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

.field public final clientCertificateAlias:Ljava/lang/String;

.field public final imapAutodetectNamespaceEnabled:Z

.field public final imapPrefix:Lnet/thunderbird/core/validation/input/StringInputField;

.field public final imapSendClientInfo:Z

.field public final imapUseCompression:Z

.field public final password:Lnet/thunderbird/core/validation/input/StringInputField;

.field public final port:Lnet/thunderbird/core/validation/input/NumberInputField;

.field public final protocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

.field public final security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

.field public final server:Lnet/thunderbird/core/validation/input/StringInputField;

.field public final username:Lnet/thunderbird/core/validation/input/StringInputField;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->protocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 84
    iput-object p2, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 85
    iput-object p3, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 86
    iput-object p4, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 87
    iput-object p5, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 88
    iput-object p6, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 89
    iput-object p7, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 90
    iput-object p8, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->clientCertificateAlias:Ljava/lang/String;

    .line 91
    iput-boolean p9, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapAutodetectNamespaceEnabled:Z

    .line 92
    iput-object p10, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapPrefix:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 93
    iput-boolean p11, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapUseCompression:Z

    .line 94
    iput-boolean p12, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapSendClientInfo:Z

    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;I)V
    .locals 14

    .line 1
    sget-object v0, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->Companion:Lcom/bumptech/glide/load/Option$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v2, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->DEFAULT:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 7
    .line 8
    and-int/lit8 v1, p3, 0x2

    .line 9
    .line 10
    const/4 v3, 0x7

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 15
    .line 16
    invoke-direct {p1, v4, v3}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v5, Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-object v0, Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;->TLS:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 34
    .line 35
    invoke-static {v2, v0}, Landroidx/sqlite/SQLite;->toDefaultPort(Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v5, v1}, Lnet/thunderbird/core/validation/input/NumberInputField;-><init>(Ljava/lang/Long;)V

    .line 44
    .line 45
    .line 46
    and-int/lit8 v1, p3, 0x20

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    new-instance v1, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 51
    .line 52
    invoke-direct {v1, v4, v3}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    move-object v7, v1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object/from16 v7, p2

    .line 58
    .line 59
    :goto_0
    new-instance v8, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 60
    .line 61
    invoke-direct {v8, v4, v3}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    new-instance v11, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 65
    .line 66
    invoke-direct {v11, v4, v3}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    const/4 v12, 0x1

    .line 70
    const/4 v13, 0x1

    .line 71
    sget-object v6, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->PasswordCleartext:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v10, 0x1

    .line 75
    move-object v1, p0

    .line 76
    move-object v3, p1

    .line 77
    move-object v4, v0

    .line 78
    invoke-direct/range {v1 .. v13}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;-><init>(Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZ)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public static copy$default(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZI)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;
    .locals 13

    .line 1
    move/from16 v0, p13

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->protocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 8
    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    and-int/lit8 p1, v0, 0x2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 15
    .line 16
    :cond_1
    move-object v2, p2

    .line 17
    and-int/lit8 p1, v0, 0x4

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 22
    .line 23
    move-object v3, p1

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move-object/from16 v3, p3

    .line 26
    .line 27
    :goto_0
    and-int/lit8 p1, v0, 0x8

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    iget-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 32
    .line 33
    move-object v4, p1

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    move-object/from16 v4, p4

    .line 36
    .line 37
    :goto_1
    and-int/lit8 p1, v0, 0x10

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    iget-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 42
    .line 43
    move-object v5, p1

    .line 44
    goto :goto_2

    .line 45
    :cond_4
    move-object/from16 v5, p5

    .line 46
    .line 47
    :goto_2
    and-int/lit8 p1, v0, 0x20

    .line 48
    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    iget-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 52
    .line 53
    move-object v6, p1

    .line 54
    goto :goto_3

    .line 55
    :cond_5
    move-object/from16 v6, p6

    .line 56
    .line 57
    :goto_3
    and-int/lit8 p1, v0, 0x40

    .line 58
    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    iget-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 62
    .line 63
    move-object v7, p1

    .line 64
    goto :goto_4

    .line 65
    :cond_6
    move-object/from16 v7, p7

    .line 66
    .line 67
    :goto_4
    and-int/lit16 p1, v0, 0x80

    .line 68
    .line 69
    if-eqz p1, :cond_7

    .line 70
    .line 71
    iget-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->clientCertificateAlias:Ljava/lang/String;

    .line 72
    .line 73
    move-object v8, p1

    .line 74
    goto :goto_5

    .line 75
    :cond_7
    move-object/from16 v8, p8

    .line 76
    .line 77
    :goto_5
    and-int/lit16 p1, v0, 0x100

    .line 78
    .line 79
    if-eqz p1, :cond_8

    .line 80
    .line 81
    iget-boolean p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapAutodetectNamespaceEnabled:Z

    .line 82
    .line 83
    move v9, p1

    .line 84
    goto :goto_6

    .line 85
    :cond_8
    move/from16 v9, p9

    .line 86
    .line 87
    :goto_6
    and-int/lit16 p1, v0, 0x200

    .line 88
    .line 89
    if-eqz p1, :cond_9

    .line 90
    .line 91
    iget-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapPrefix:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 92
    .line 93
    move-object v10, p1

    .line 94
    goto :goto_7

    .line 95
    :cond_9
    move-object/from16 v10, p10

    .line 96
    .line 97
    :goto_7
    and-int/lit16 p1, v0, 0x400

    .line 98
    .line 99
    if-eqz p1, :cond_a

    .line 100
    .line 101
    iget-boolean p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapUseCompression:Z

    .line 102
    .line 103
    move v11, p1

    .line 104
    goto :goto_8

    .line 105
    :cond_a
    move/from16 v11, p11

    .line 106
    .line 107
    :goto_8
    and-int/lit16 p1, v0, 0x800

    .line 108
    .line 109
    if-eqz p1, :cond_b

    .line 110
    .line 111
    iget-boolean p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapSendClientInfo:Z

    .line 112
    .line 113
    move v12, p1

    .line 114
    goto :goto_9

    .line 115
    :cond_b
    move/from16 v12, p12

    .line 116
    .line 117
    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 145
    .line 146
    invoke-direct/range {v0 .. v12}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;-><init>(Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZ)V

    .line 147
    .line 148
    .line 149
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 12
    .line 13
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->protocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 14
    .line 15
    iget-object v3, p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->protocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 21
    .line 22
    iget-object v3, p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 32
    .line 33
    iget-object v3, p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 39
    .line 40
    iget-object v3, p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 50
    .line 51
    iget-object v3, p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 52
    .line 53
    if-eq v1, v3, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 57
    .line 58
    iget-object v3, p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 59
    .line 60
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 68
    .line 69
    iget-object v3, p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 70
    .line 71
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_8

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->clientCertificateAlias:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v3, p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->clientCertificateAlias:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_9

    .line 87
    .line 88
    return v2

    .line 89
    :cond_9
    iget-boolean v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapAutodetectNamespaceEnabled:Z

    .line 90
    .line 91
    iget-boolean v3, p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapAutodetectNamespaceEnabled:Z

    .line 92
    .line 93
    if-eq v1, v3, :cond_a

    .line 94
    .line 95
    return v2

    .line 96
    :cond_a
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapPrefix:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 97
    .line 98
    iget-object v3, p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapPrefix:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 99
    .line 100
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_b

    .line 105
    .line 106
    return v2

    .line 107
    :cond_b
    iget-boolean v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapUseCompression:Z

    .line 108
    .line 109
    iget-boolean v3, p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapUseCompression:Z

    .line 110
    .line 111
    if-eq v1, v3, :cond_c

    .line 112
    .line 113
    return v2

    .line 114
    :cond_c
    iget-boolean p0, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapSendClientInfo:Z

    .line 115
    .line 116
    iget-boolean p1, p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapSendClientInfo:Z

    .line 117
    .line 118
    if-eq p0, p1, :cond_d

    .line 119
    .line 120
    return v2

    .line 121
    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->protocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 10
    .line 11
    invoke-virtual {v1}, Lnet/thunderbird/core/validation/input/StringInputField;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 28
    .line 29
    invoke-virtual {v1}, Lnet/thunderbird/core/validation/input/NumberInputField;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v1, v0

    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 35
    .line 36
    iget-object v0, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 46
    .line 47
    invoke-virtual {v1}, Lnet/thunderbird/core/validation/input/StringInputField;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v1, v0

    .line 52
    mul-int/lit8 v1, v1, 0x1f

    .line 53
    .line 54
    iget-object v0, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 55
    .line 56
    invoke-virtual {v0}, Lnet/thunderbird/core/validation/input/StringInputField;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->clientCertificateAlias:Ljava/lang/String;

    .line 64
    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    :goto_0
    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    .line 75
    .line 76
    iget-boolean v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapAutodetectNamespaceEnabled:Z

    .line 77
    .line 78
    const/16 v2, 0x4d5

    .line 79
    .line 80
    const/16 v3, 0x4cf

    .line 81
    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    move v1, v3

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move v1, v2

    .line 87
    :goto_1
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    .line 90
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapPrefix:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 91
    .line 92
    invoke-virtual {v1}, Lnet/thunderbird/core/validation/input/StringInputField;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/2addr v1, v0

    .line 97
    mul-int/lit8 v1, v1, 0x1f

    .line 98
    .line 99
    iget-boolean v0, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapUseCompression:Z

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    move v0, v3

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    move v0, v2

    .line 106
    :goto_2
    add-int/2addr v1, v0

    .line 107
    mul-int/lit8 v1, v1, 0x1f

    .line 108
    .line 109
    iget-boolean p0, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapSendClientInfo:Z

    .line 110
    .line 111
    if-eqz p0, :cond_3

    .line 112
    .line 113
    move v2, v3

    .line 114
    :cond_3
    add-int/2addr v1, v2

    .line 115
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "State(protocolType="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->protocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", server="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", security="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", port="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", authenticationType="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", username="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", password="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", clientCertificateAlias="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->clientCertificateAlias:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", imapAutodetectNamespaceEnabled="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-boolean v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapAutodetectNamespaceEnabled:Z

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", imapPrefix="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapPrefix:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", imapUseCompression="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-boolean v1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapUseCompression:Z

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", imapSendClientInfo="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-boolean p0, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapSendClientInfo:Z

    .line 119
    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p0, ")"

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0
.end method
