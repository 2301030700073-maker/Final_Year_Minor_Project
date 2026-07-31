.class public final Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

.field public final clientCertificateAlias:Ljava/lang/String;

.field public final password:Lnet/thunderbird/core/validation/input/StringInputField;

.field public final port:Lnet/thunderbird/core/validation/input/NumberInputField;

.field public final security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

.field public final server:Lnet/thunderbird/core/validation/input/StringInputField;

.field public final username:Lnet/thunderbird/core/validation/input/StringInputField;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 66
    iput-object p2, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 67
    iput-object p3, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 68
    iput-object p4, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 69
    iput-object p5, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 70
    iput-object p6, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 71
    iput-object p7, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->clientCertificateAlias:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;I)V
    .locals 11

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 8
    .line 9
    invoke-direct {p1, v2, v1}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    move-object v4, p1

    .line 13
    sget-object p1, Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;->Companion:Lcom/bumptech/glide/GlideBuilder$1;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v6, Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object v5, Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;->DEFAULT:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 24
    .line 25
    invoke-static {v5}, Lorg/jsoup/helper/Validate;->toSmtpDefaultPort(Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v7

    .line 29
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v6, p1}, Lnet/thunderbird/core/validation/input/NumberInputField;-><init>(Ljava/lang/Long;)V

    .line 34
    .line 35
    .line 36
    and-int/lit8 p1, p4, 0x10

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    new-instance p2, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 41
    .line 42
    invoke-direct {p2, v2, v1}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    move-object v8, p2

    .line 46
    and-int/lit8 p1, p4, 0x20

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    new-instance p3, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 51
    .line 52
    invoke-direct {p3, v2, v1}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    move-object v9, p3

    .line 56
    sget-object v7, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->PasswordCleartext:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 57
    .line 58
    const/4 v10, 0x0

    .line 59
    move-object v3, p0

    .line 60
    invoke-direct/range {v3 .. v10}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;-><init>(Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public static copy$default(Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;I)Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;
    .locals 8

    .line 1
    and-int/lit8 v0, p8, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 6
    .line 7
    :cond_0
    move-object v1, p1

    .line 8
    and-int/lit8 p1, p8, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 13
    .line 14
    :cond_1
    move-object v2, p2

    .line 15
    and-int/lit8 p1, p8, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p3, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 20
    .line 21
    :cond_2
    move-object v3, p3

    .line 22
    and-int/lit8 p1, p8, 0x8

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-object p4, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 27
    .line 28
    :cond_3
    move-object v4, p4

    .line 29
    and-int/lit8 p1, p8, 0x10

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    iget-object p5, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 34
    .line 35
    :cond_4
    move-object v5, p5

    .line 36
    and-int/lit8 p1, p8, 0x20

    .line 37
    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    iget-object p6, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 41
    .line 42
    :cond_5
    move-object v6, p6

    .line 43
    and-int/lit8 p1, p8, 0x40

    .line 44
    .line 45
    if-eqz p1, :cond_6

    .line 46
    .line 47
    iget-object p7, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->clientCertificateAlias:Ljava/lang/String;

    .line 48
    .line 49
    :cond_6
    move-object v7, p7

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 72
    .line 73
    invoke-direct/range {v0 .. v7}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;-><init>(Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
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
    instance-of v1, p1, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

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
    check-cast p1, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 12
    .line 13
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 14
    .line 15
    iget-object v3, p1, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 25
    .line 26
    iget-object v3, p1, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 32
    .line 33
    iget-object v3, p1, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 43
    .line 44
    iget-object v3, p1, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 45
    .line 46
    if-eq v1, v3, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 50
    .line 51
    iget-object v3, p1, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 52
    .line 53
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 61
    .line 62
    iget-object v3, p1, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 63
    .line 64
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget-object p0, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->clientCertificateAlias:Ljava/lang/String;

    .line 72
    .line 73
    iget-object p1, p1, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->clientCertificateAlias:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/thunderbird/core/validation/input/StringInputField;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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
    iget-object v0, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 19
    .line 20
    invoke-virtual {v0}, Lnet/thunderbird/core/validation/input/NumberInputField;->hashCode()I

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
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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
    iget-object v0, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 37
    .line 38
    invoke-virtual {v0}, Lnet/thunderbird/core/validation/input/StringInputField;->hashCode()I

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
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

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
    iget-object p0, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->clientCertificateAlias:Ljava/lang/String;

    .line 55
    .line 56
    if-nez p0, :cond_0

    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    :goto_0
    add-int/2addr v1, p0

    .line 65
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "State(server="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", security="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", port="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", authenticationType="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", username="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", password="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", clientCertificateAlias="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ")"

    .line 69
    .line 70
    iget-object p0, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->clientCertificateAlias:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method
