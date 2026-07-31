.class public final Lapp/k9mail/autodiscovery/api/SmtpServerSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final authenticationTypes:Ljava/util/List;

.field public final connectionSecurity:Lapp/k9mail/autodiscovery/api/ConnectionSecurity;

.field public final hostname:Ljava/lang/String;

.field public final port:I

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILapp/k9mail/autodiscovery/api/ConnectionSecurity;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->hostname:Ljava/lang/String;

    .line 14
    .line 15
    iput p2, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->port:I

    .line 16
    .line 17
    iput-object p3, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->connectionSecurity:Lapp/k9mail/autodiscovery/api/ConnectionSecurity;

    .line 18
    .line 19
    iput-object p4, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->authenticationTypes:Ljava/util/List;

    .line 20
    .line 21
    iput-object p5, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->username:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;

    .line 10
    .line 11
    iget-object v0, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->hostname:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->hostname:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    iget v0, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->port:I

    .line 23
    .line 24
    iget v1, p1, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->port:I

    .line 25
    .line 26
    if-ne v0, v1, :cond_6

    .line 27
    .line 28
    iget-object v0, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->connectionSecurity:Lapp/k9mail/autodiscovery/api/ConnectionSecurity;

    .line 29
    .line 30
    iget-object v1, p1, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->connectionSecurity:Lapp/k9mail/autodiscovery/api/ConnectionSecurity;

    .line 31
    .line 32
    if-eq v0, v1, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iget-object v0, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->authenticationTypes:Ljava/util/List;

    .line 36
    .line 37
    iget-object v1, p1, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->authenticationTypes:Ljava/util/List;

    .line 38
    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    iget-object p0, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->username:Ljava/lang/String;

    .line 47
    .line 48
    iget-object p1, p1, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->username:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_5

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_5
    :goto_0
    const/4 p0, 0x1

    .line 58
    return p0

    .line 59
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 60
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->hostname:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget v2, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->port:I

    .line 11
    .line 12
    add-int/2addr v0, v2

    .line 13
    mul-int/2addr v0, v1

    .line 14
    iget-object v2, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->connectionSecurity:Lapp/k9mail/autodiscovery/api/ConnectionSecurity;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v2, v0

    .line 21
    mul-int/2addr v2, v1

    .line 22
    iget-object v0, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->authenticationTypes:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {v0, v2, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/List;II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object p0, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->username:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    add-int/2addr p0, v0

    .line 35
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->hostname:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lnet/thunderbird/core/common/net/Hostname;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->port:I

    .line 8
    .line 9
    invoke-static {v1}, Lnet/thunderbird/core/common/net/Port;->toString-impl(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, ", port="

    .line 14
    .line 15
    const-string v3, ", connectionSecurity="

    .line 16
    .line 17
    const-string v4, "SmtpServerSettings(hostname="

    .line 18
    .line 19
    invoke-static {v4, v0, v2, v1, v3}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->connectionSecurity:Lapp/k9mail/autodiscovery/api/ConnectionSecurity;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", authenticationTypes="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->authenticationTypes:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", username="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ")"

    .line 44
    .line 45
    iget-object p0, p0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->username:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method
