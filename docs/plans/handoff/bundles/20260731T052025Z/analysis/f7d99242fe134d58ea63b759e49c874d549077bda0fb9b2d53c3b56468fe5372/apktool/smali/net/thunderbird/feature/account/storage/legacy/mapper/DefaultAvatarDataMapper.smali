.class public final Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final toDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lnet/thunderbird/feature/account/storage/profile/AvatarDto;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lnet/thunderbird/feature/account/storage/profile/AvatarDto;->avatarType:Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const-string v0, "XX"

    .line 13
    .line 14
    if-eqz p0, :cond_6

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq p0, v1, :cond_3

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-ne p0, v1, :cond_2

    .line 21
    .line 22
    iget-object p0, p1, Lnet/thunderbird/feature/account/storage/profile/AvatarDto;->avatarIconName:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    :goto_0
    new-instance p0, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;

    .line 40
    .line 41
    invoke-direct {p0, v0}, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0

    .line 50
    :cond_3
    iget-object p0, p1, Lnet/thunderbird/feature/account/storage/profile/AvatarDto;->avatarImageUri:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz p0, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_4

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    new-instance p1, Lnet/thunderbird/feature/account/avatar/Avatar$Image;

    .line 62
    .line 63
    invoke-direct {p1, p0}, Lnet/thunderbird/feature/account/avatar/Avatar$Image;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_5
    :goto_1
    new-instance p0, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;

    .line 68
    .line 69
    invoke-direct {p0, v0}, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_6
    new-instance p0, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;

    .line 74
    .line 75
    iget-object p1, p1, Lnet/thunderbird/feature/account/storage/profile/AvatarDto;->avatarMonogram:Ljava/lang/String;

    .line 76
    .line 77
    if-nez p1, :cond_7

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_7
    move-object v0, p1

    .line 81
    :goto_2
    invoke-direct {p0, v0}, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object p0
.end method
