.class public final Lcom/fsck/k9/mail/ServerSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final LINE_BREAK:Lkotlin/text/Regex;


# instance fields
.field public final authenticationType:Lcom/fsck/k9/mail/AuthType;

.field public final clientCertificateAlias:Ljava/lang/String;

.field public final connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

.field public final extra:Ljava/util/Map;

.field public final host:Ljava/lang/String;

.field public final isMissingCredentials:Z

.field public final password:Ljava/lang/String;

.field public final port:I

.field public final type:Ljava/lang/String;

.field public final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "[\\r\\n]"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/fsck/k9/mail/ServerSettings;->LINE_BREAK:Lkotlin/text/Regex;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    sget-object v9, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 129
    invoke-direct/range {v0 .. v9}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 19
    .line 20
    iput p3, p0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 21
    .line 22
    iput-object p4, p0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 23
    .line 24
    iput-object p5, p0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 25
    .line 26
    iput-object p6, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p7, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p8, p0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p9, p0, Lcom/fsck/k9/mail/ServerSettings;->extra:Ljava/util/Map;

    .line 33
    .line 34
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    const/4 p3, 0x2

    .line 39
    const/4 p4, 0x1

    .line 40
    const/4 p5, 0x0

    .line 41
    if-eq p2, p3, :cond_2

    .line 42
    .line 43
    const/4 p3, 0x3

    .line 44
    if-eq p2, p3, :cond_1

    .line 45
    .line 46
    const/4 p3, 0x4

    .line 47
    if-eq p2, p3, :cond_3

    .line 48
    .line 49
    invoke-static {p6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-nez p2, :cond_0

    .line 54
    .line 55
    if-eqz p7, :cond_0

    .line 56
    .line 57
    invoke-static {p7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    :cond_0
    :goto_0
    move p5, p4

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-static {p6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result p5

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    if-nez p8, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    :goto_1
    iput-boolean p5, p0, Lcom/fsck/k9/mail/ServerSettings;->isMissingCredentials:Z

    .line 74
    .line 75
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    const/4 p1, 0x0

    .line 89
    if-eqz p0, :cond_7

    .line 90
    .line 91
    sget-object p0, Lcom/fsck/k9/mail/ServerSettings;->LINE_BREAK:Lkotlin/text/Regex;

    .line 92
    .line 93
    invoke-virtual {p0, p6}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-nez p2, :cond_6

    .line 98
    .line 99
    if-eqz p7, :cond_5

    .line 100
    .line 101
    invoke-virtual {p0, p7}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eq p0, p4, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    const-string p0, "password must not contain line break"

    .line 109
    .line 110
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_5
    :goto_2
    return-void

    .line 115
    :cond_6
    const-string/jumbo p0, "username must not contain line break"

    .line 116
    .line 117
    .line 118
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p1

    .line 122
    :cond_7
    const-string p0, "type must be all lower case"

    .line 123
    .line 124
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1
.end method

.method public static copy$default(Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/fsck/k9/mail/ServerSettings;
    .locals 10

    .line 1
    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 4
    .line 5
    iget v3, p0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 6
    .line 7
    iget-object v4, p0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 8
    .line 9
    and-int/lit8 v0, p4, 0x10

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 14
    .line 15
    :goto_0
    move-object v5, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    sget-object v0, Lcom/fsck/k9/mail/AuthType;->XOAUTH2:Lcom/fsck/k9/mail/AuthType;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :goto_1
    and-int/lit8 v0, p4, 0x20

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 25
    .line 26
    :cond_1
    move-object v6, p1

    .line 27
    and-int/lit8 p1, p4, 0x40

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object p2, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 32
    .line 33
    :cond_2
    move-object v7, p2

    .line 34
    iget-object v8, p0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 35
    .line 36
    and-int/lit16 p1, p4, 0x100

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iget-object p3, p0, Lcom/fsck/k9/mail/ServerSettings;->extra:Ljava/util/Map;

    .line 41
    .line 42
    :cond_3
    move-object v9, p3

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v0, Lcom/fsck/k9/mail/ServerSettings;

    .line 65
    .line 66
    invoke-direct/range {v0 .. v9}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
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
    instance-of v1, p1, Lcom/fsck/k9/mail/ServerSettings;

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
    check-cast p1, Lcom/fsck/k9/mail/ServerSettings;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget v1, p0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 36
    .line 37
    iget v3, p1, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 45
    .line 46
    if-eq v1, v3, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 50
    .line 51
    iget-object v3, p1, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 52
    .line 53
    if-eq v1, v3, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, p1, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v3, p1, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v3, p1, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

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
    iget-object p0, p0, Lcom/fsck/k9/mail/ServerSettings;->extra:Ljava/util/Map;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/fsck/k9/mail/ServerSettings;->extra:Ljava/util/Map;

    .line 92
    .line 93
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-nez p0, :cond_a

    .line 98
    .line 99
    return v2

    .line 100
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 17
    .line 18
    add-int/2addr v0, v2

    .line 19
    mul-int/2addr v0, v1

    .line 20
    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-int/2addr v2, v0

    .line 27
    mul-int/2addr v2, v1

    .line 28
    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/2addr v0, v2

    .line 35
    mul-int/2addr v0, v1

    .line 36
    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x0

    .line 43
    iget-object v3, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 44
    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    move v3, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    :goto_0
    add-int/2addr v0, v3

    .line 54
    mul-int/2addr v0, v1

    .line 55
    iget-object v3, p0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    :goto_1
    add-int/2addr v0, v2

    .line 65
    mul-int/2addr v0, v1

    .line 66
    iget-object p0, p0, Lcom/fsck/k9/mail/ServerSettings;->extra:Ljava/util/Map;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    add-int/2addr p0, v0

    .line 73
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", host="

    .line 2
    .line 3
    const-string v1, ", port="

    .line 4
    .line 5
    const-string v2, "ServerSettings(type="

    .line 6
    .line 7
    iget-object v3, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", connectionSecurity="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", authenticationType="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", username="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", password="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", clientCertificateAlias="

    .line 56
    .line 57
    const-string v2, ", extra="

    .line 58
    .line 59
    iget-object v3, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v4, p0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/fsck/k9/mail/ServerSettings;->extra:Ljava/util/Map;

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p0, ")"

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method
