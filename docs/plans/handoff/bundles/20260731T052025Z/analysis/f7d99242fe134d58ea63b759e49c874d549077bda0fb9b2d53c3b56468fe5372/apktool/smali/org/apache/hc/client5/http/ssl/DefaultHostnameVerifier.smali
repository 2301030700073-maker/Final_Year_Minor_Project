.class public final Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 2
    .line 3
    const-class v0, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-boolean v2, Lorg/slf4j/LoggerFactory;->DETECT_LOGGER_NAME_MISMATCH:Z

    .line 14
    .line 15
    if-eqz v2, :cond_6

    .line 16
    .line 17
    sget-object v2, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    sget-boolean v2, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    move-object v2, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :try_start_0
    new-instance v2, Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/SecurityManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-object v2, v3

    .line 36
    :goto_0
    sput-object v2, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    sput-boolean v4, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED:Z

    .line 40
    .line 41
    :goto_1
    if-nez v2, :cond_2

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_2
    invoke-virtual {v2}, Lorg/slf4j/helpers/Util$ClassContextSecurityManager;->getClassContext()[Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-class v3, Lorg/slf4j/helpers/Util;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const/4 v4, 0x0

    .line 55
    :goto_2
    array-length v5, v2

    .line 56
    if-ge v4, v5, :cond_4

    .line 57
    .line 58
    aget-object v5, v2, v4

    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    :goto_3
    array-length v3, v2

    .line 75
    if-ge v4, v3, :cond_5

    .line 76
    .line 77
    add-int/lit8 v4, v4, 0x2

    .line 78
    .line 79
    array-length v3, v2

    .line 80
    if-ge v4, v3, :cond_5

    .line 81
    .line 82
    aget-object v3, v2, v4

    .line 83
    .line 84
    :goto_4
    if-eqz v3, :cond_6

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_6

    .line 91
    .line 92
    invoke-interface {v1}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v4, "Detected logger name mismatch. Given name: \""

    .line 103
    .line 104
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, "\"; computed name: \""

    .line 111
    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, "\"."

    .line 119
    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v0, "See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation"

    .line 131
    .line 132
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_5
    const-string v0, "Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen"

    .line 137
    .line 138
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_6
    :goto_5
    sput-object v1, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->LOG:Lorg/slf4j/Logger;

    .line 143
    .line 144
    return-void
.end method

.method public static byteArrayToIPv6([B)Ljava/lang/String;
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x10

    .line 3
    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    array-length v3, p0

    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    aget-byte v3, p0, v2

    .line 17
    .line 18
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    add-int/lit8 v4, v2, 0x1

    .line 23
    .line 24
    aget-byte v4, p0, v4

    .line 25
    .line 26
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/4 v5, 0x2

    .line 31
    new-array v6, v5, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object v3, v6, v1

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    aput-object v4, v6, v3

    .line 37
    .line 38
    const-string v3, "%02x%02x"

    .line 39
    .line 40
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    array-length v3, p0

    .line 48
    sub-int/2addr v3, v5

    .line 49
    if-ge v2, v3, :cond_0

    .line 50
    .line 51
    const-string v3, ":"

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_0
    add-int/lit8 v2, v2, 0x2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_2
    const-string p0, "Invalid byte array length for IPv6 address"

    .line 65
    .line 66
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    return-object p0
.end method

.method public static byteArrayToIp([B)Ljava/lang/String;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x4

    .line 3
    if-ne v0, v1, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget-byte v1, p0, v1

    .line 12
    .line 13
    and-int/lit16 v1, v1, 0xff

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "."

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    aget-byte v2, p0, v2

    .line 25
    .line 26
    and-int/lit16 v2, v2, 0xff

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    aget-byte v2, p0, v2

    .line 36
    .line 37
    and-int/lit16 v2, v2, 0xff

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    aget-byte p0, p0, v1

    .line 47
    .line 48
    and-int/lit16 p0, p0, 0xff

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_0
    const-string p0, "Invalid byte array length for IPv4 address"

    .line 59
    .line 60
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    return-object p0
.end method

.method public static getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_6

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x2

    .line 36
    if-lt v2, v3, :cond_2

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/Integer;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 v2, 0x0

    .line 47
    :goto_1
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eq v3, p1, :cond_3

    .line 54
    .line 55
    const/4 v3, -0x1

    .line 56
    if-ne v3, p1, :cond_1

    .line 57
    .line 58
    :cond_3
    const/4 v3, 0x1

    .line 59
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    instance-of v3, v1, Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    new-instance v3, Lorg/apache/hc/client5/http/ssl/SubjectName;

    .line 68
    .line 69
    check-cast v1, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-direct {v3, v1, v2}, Lorg/apache/hc/client5/http/ssl/SubjectName;-><init>(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    instance-of v3, v1, [B

    .line 83
    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    check-cast v1, [B

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    const/4 v4, 0x7

    .line 93
    if-ne v3, v4, :cond_1

    .line 94
    .line 95
    array-length v3, v1

    .line 96
    const/4 v4, 0x4

    .line 97
    if-ne v3, v4, :cond_5

    .line 98
    .line 99
    new-instance v3, Lorg/apache/hc/client5/http/ssl/SubjectName;

    .line 100
    .line 101
    invoke-static {v1}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->byteArrayToIp([B)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-direct {v3, v1, v2}, Lorg/apache/hc/client5/http/ssl/SubjectName;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    array-length v3, v1

    .line 117
    const/16 v4, 0x10

    .line 118
    .line 119
    if-ne v3, v4, :cond_1

    .line 120
    .line 121
    new-instance v3, Lorg/apache/hc/client5/http/ssl/SubjectName;

    .line 122
    .line 123
    invoke-static {v1}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->byteArrayToIPv6([B)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-direct {v3, v1, v2}, Lorg/apache/hc/client5/http/ssl/SubjectName;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_6
    return-object v0

    .line 139
    :catch_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 140
    .line 141
    return-object p0
.end method

.method public static matchIdentity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/16 v0, 0x2a

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    :goto_0
    return v1

    .line 47
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    sub-int/2addr v1, p1

    .line 60
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p1, "."

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    xor-int/lit8 p0, p0, 0x1

    .line 71
    .line 72
    return p0

    .line 73
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    return p0
.end method

.method public static verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lorg/apache/hc/core5/net/InetAddressUtils;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    move v2, v5

    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_0
    const-string v2, "["

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const-string v2, "]"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    sub-int/2addr v2, v5

    .line 44
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object v2, v0

    .line 50
    :goto_0
    move v6, v4

    .line 51
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    const/4 v8, -0x1

    .line 56
    if-ge v6, v7, :cond_3

    .line 57
    .line 58
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const/16 v9, 0x25

    .line 63
    .line 64
    if-ne v7, v9, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v6, v8

    .line 71
    :goto_2
    if-ne v6, v8, :cond_5

    .line 72
    .line 73
    invoke-static {v2}, Lorg/apache/hc/core5/net/InetAddressUtils;->hasValidIPv6ColonCount(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_4

    .line 78
    .line 79
    sget-object v6, Lorg/apache/hc/core5/net/InetAddressUtils;->IPV6_STD_PATTERN:Ljava/util/regex/Pattern;

    .line 80
    .line 81
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_4

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    invoke-static {v2}, Lorg/apache/hc/core5/net/InetAddressUtils;->hasValidIPv6ColonCount(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_7

    .line 97
    .line 98
    sget-object v6, Lorg/apache/hc/core5/net/InetAddressUtils;->IPV6_HEX_COMPRESSED_PATTERN:Ljava/util/regex/Pattern;

    .line 99
    .line 100
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_7

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_5
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-static {v7}, Lorg/apache/hc/core5/net/InetAddressUtils;->hasValidIPv6ColonCount(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_6

    .line 120
    .line 121
    sget-object v8, Lorg/apache/hc/core5/net/InetAddressUtils;->IPV6_STD_PATTERN:Ljava/util/regex/Pattern;

    .line 122
    .line 123
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_6

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    invoke-static {v7}, Lorg/apache/hc/core5/net/InetAddressUtils;->hasValidIPv6ColonCount(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-eqz v8, :cond_7

    .line 139
    .line 140
    sget-object v8, Lorg/apache/hc/core5/net/InetAddressUtils;->IPV6_HEX_COMPRESSED_PATTERN:Ljava/util/regex/Pattern;

    .line 141
    .line 142
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_7

    .line 151
    .line 152
    :goto_3
    add-int/2addr v6, v5

    .line 153
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-eqz v6, :cond_7

    .line 166
    .line 167
    sget-object v6, Lorg/apache/hc/core5/net/InetAddressUtils;->SCOPE_ID_PATTERN:Ljava/util/regex/Pattern;

    .line 168
    .line 169
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_7

    .line 178
    .line 179
    :goto_4
    move v2, v3

    .line 180
    goto :goto_5

    .line 181
    :cond_7
    const/4 v2, 0x3

    .line 182
    :goto_5
    invoke-static {v2}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    const/4 v6, 0x7

    .line 187
    if-eqz v2, :cond_38

    .line 188
    .line 189
    if-eq v2, v5, :cond_33

    .line 190
    .line 191
    invoke-static {v1, v3}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-eqz v6, :cond_30

    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const-string v2, "RFC2253"

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const/4 v2, 0x0

    .line 212
    if-nez v1, :cond_8

    .line 213
    .line 214
    goto/16 :goto_1b

    .line 215
    .line 216
    :cond_8
    sget-object v6, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->INSTANCE:Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;

    .line 217
    .line 218
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    new-instance v6, Lorg/apache/hc/core5/util/CharArrayBuffer;

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 228
    .line 229
    .line 230
    if-ltz v7, :cond_2f

    .line 231
    .line 232
    new-array v3, v7, [C

    .line 233
    .line 234
    iput-object v3, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->array:[C

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    iget v7, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->len:I

    .line 241
    .line 242
    add-int/2addr v7, v3

    .line 243
    iget-object v8, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->array:[C

    .line 244
    .line 245
    array-length v9, v8

    .line 246
    if-le v7, v9, :cond_9

    .line 247
    .line 248
    array-length v8, v8

    .line 249
    shl-int/2addr v8, v5

    .line 250
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    new-array v8, v8, [C

    .line 255
    .line 256
    iget-object v9, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->array:[C

    .line 257
    .line 258
    iget v10, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->len:I

    .line 259
    .line 260
    invoke-static {v9, v4, v8, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    .line 262
    .line 263
    iput-object v8, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->array:[C

    .line 264
    .line 265
    :cond_9
    iget-object v8, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->array:[C

    .line 266
    .line 267
    iget v9, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->len:I

    .line 268
    .line 269
    invoke-virtual {v1, v4, v3, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 270
    .line 271
    .line 272
    iput v7, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->len:I

    .line 273
    .line 274
    new-instance v3, Landroidx/compose/material3/FabPlacement;

    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    invoke-direct {v3, v7}, Landroidx/compose/material3/FabPlacement;-><init>(I)V

    .line 281
    .line 282
    .line 283
    iget v7, v3, Landroidx/compose/material3/FabPlacement;->left:I

    .line 284
    .line 285
    new-instance v8, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-static {v6, v3}, Lcom/bumptech/glide/GlideBuilder$1;->skipWhiteSpace(Lorg/apache/hc/core5/util/CharArrayBuffer;Landroidx/compose/material3/FabPlacement;)V

    .line 291
    .line 292
    .line 293
    :goto_6
    invoke-virtual {v3}, Landroidx/compose/material3/FabPlacement;->atEnd()Z

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    if-nez v9, :cond_27

    .line 298
    .line 299
    sget-object v9, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->EQUAL_OR_COMMA_OR_PLUS:Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;

    .line 300
    .line 301
    new-instance v10, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    :goto_7
    move v11, v4

    .line 307
    :goto_8
    invoke-virtual {v3}, Landroidx/compose/material3/FabPlacement;->atEnd()Z

    .line 308
    .line 309
    .line 310
    move-result v12

    .line 311
    const/16 v13, 0x20

    .line 312
    .line 313
    if-nez v12, :cond_10

    .line 314
    .line 315
    iget v12, v3, Landroidx/compose/material3/FabPlacement;->height:I

    .line 316
    .line 317
    iget-object v14, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->array:[C

    .line 318
    .line 319
    aget-char v12, v14, v12

    .line 320
    .line 321
    if-eqz v9, :cond_a

    .line 322
    .line 323
    invoke-virtual {v9, v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->test(C)Z

    .line 324
    .line 325
    .line 326
    move-result v14

    .line 327
    if-eqz v14, :cond_a

    .line 328
    .line 329
    goto :goto_b

    .line 330
    :cond_a
    invoke-static {v12}, Lcom/bumptech/glide/GlideBuilder$1;->isWhitespace(C)Z

    .line 331
    .line 332
    .line 333
    move-result v12

    .line 334
    if-eqz v12, :cond_b

    .line 335
    .line 336
    invoke-static {v6, v3}, Lcom/bumptech/glide/GlideBuilder$1;->skipWhiteSpace(Lorg/apache/hc/core5/util/CharArrayBuffer;Landroidx/compose/material3/FabPlacement;)V

    .line 337
    .line 338
    .line 339
    move v11, v5

    .line 340
    goto :goto_8

    .line 341
    :cond_b
    if-eqz v11, :cond_c

    .line 342
    .line 343
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    .line 344
    .line 345
    .line 346
    move-result v11

    .line 347
    if-lez v11, :cond_c

    .line 348
    .line 349
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    :cond_c
    iget v11, v3, Landroidx/compose/material3/FabPlacement;->height:I

    .line 353
    .line 354
    move v12, v11

    .line 355
    :goto_9
    if-ge v11, v7, :cond_f

    .line 356
    .line 357
    iget-object v13, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->array:[C

    .line 358
    .line 359
    aget-char v13, v13, v11

    .line 360
    .line 361
    if-eqz v9, :cond_d

    .line 362
    .line 363
    invoke-virtual {v9, v13}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->test(C)Z

    .line 364
    .line 365
    .line 366
    move-result v14

    .line 367
    if-nez v14, :cond_f

    .line 368
    .line 369
    :cond_d
    invoke-static {v13}, Lcom/bumptech/glide/GlideBuilder$1;->isWhitespace(C)Z

    .line 370
    .line 371
    .line 372
    move-result v14

    .line 373
    if-eqz v14, :cond_e

    .line 374
    .line 375
    goto :goto_a

    .line 376
    :cond_e
    add-int/lit8 v12, v12, 0x1

    .line 377
    .line 378
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    add-int/lit8 v11, v11, 0x1

    .line 382
    .line 383
    goto :goto_9

    .line 384
    :cond_f
    :goto_a
    invoke-virtual {v3, v12}, Landroidx/compose/material3/FabPlacement;->updatePos(I)V

    .line 385
    .line 386
    .line 387
    goto :goto_7

    .line 388
    :cond_10
    :goto_b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v9

    .line 392
    invoke-virtual {v3}, Landroidx/compose/material3/FabPlacement;->atEnd()Z

    .line 393
    .line 394
    .line 395
    move-result v10

    .line 396
    if-eqz v10, :cond_11

    .line 397
    .line 398
    new-instance v10, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    .line 399
    .line 400
    invoke-direct {v10, v9, v2}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    :goto_c
    move/from16 v17, v4

    .line 404
    .line 405
    move/from16 v18, v5

    .line 406
    .line 407
    goto/16 :goto_18

    .line 408
    .line 409
    :cond_11
    iget v10, v3, Landroidx/compose/material3/FabPlacement;->height:I

    .line 410
    .line 411
    iget-object v11, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->array:[C

    .line 412
    .line 413
    aget-char v11, v11, v10

    .line 414
    .line 415
    add-int/2addr v10, v5

    .line 416
    invoke-virtual {v3, v10}, Landroidx/compose/material3/FabPlacement;->updatePos(I)V

    .line 417
    .line 418
    .line 419
    const/16 v10, 0x2c

    .line 420
    .line 421
    if-ne v11, v10, :cond_12

    .line 422
    .line 423
    new-instance v10, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    .line 424
    .line 425
    invoke-direct {v10, v9, v2}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    goto :goto_c

    .line 429
    :cond_12
    sget-object v10, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->COMMA_OR_PLUS:Lorg/apache/hc/core5/util/Tokenizer$$ExternalSyntheticLambda1;

    .line 430
    .line 431
    new-instance v11, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    move v12, v4

    .line 437
    :goto_d
    invoke-virtual {v3}, Landroidx/compose/material3/FabPlacement;->atEnd()Z

    .line 438
    .line 439
    .line 440
    move-result v14

    .line 441
    if-nez v14, :cond_13

    .line 442
    .line 443
    iget v14, v3, Landroidx/compose/material3/FabPlacement;->height:I

    .line 444
    .line 445
    iget-object v15, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->array:[C

    .line 446
    .line 447
    aget-char v14, v15, v14

    .line 448
    .line 449
    if-eqz v10, :cond_14

    .line 450
    .line 451
    invoke-virtual {v10, v14}, Lorg/apache/hc/core5/util/Tokenizer$$ExternalSyntheticLambda1;->test(C)Z

    .line 452
    .line 453
    .line 454
    move-result v15

    .line 455
    if-eqz v15, :cond_14

    .line 456
    .line 457
    :cond_13
    move/from16 v17, v4

    .line 458
    .line 459
    move/from16 v18, v5

    .line 460
    .line 461
    goto/16 :goto_17

    .line 462
    .line 463
    :cond_14
    invoke-static {v14}, Lcom/bumptech/glide/GlideBuilder$1;->isWhitespace(C)Z

    .line 464
    .line 465
    .line 466
    move-result v15

    .line 467
    if-eqz v15, :cond_15

    .line 468
    .line 469
    invoke-static {v6, v3}, Lcom/bumptech/glide/GlideBuilder$1;->skipWhiteSpace(Lorg/apache/hc/core5/util/CharArrayBuffer;Landroidx/compose/material3/FabPlacement;)V

    .line 470
    .line 471
    .line 472
    move/from16 v17, v4

    .line 473
    .line 474
    move v12, v5

    .line 475
    move/from16 v18, v12

    .line 476
    .line 477
    goto/16 :goto_16

    .line 478
    .line 479
    :cond_15
    const/16 v15, 0x5c

    .line 480
    .line 481
    const/16 v2, 0x22

    .line 482
    .line 483
    if-ne v14, v2, :cond_1f

    .line 484
    .line 485
    if-eqz v12, :cond_16

    .line 486
    .line 487
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    .line 488
    .line 489
    .line 490
    move-result v12

    .line 491
    if-lez v12, :cond_16

    .line 492
    .line 493
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    :cond_16
    invoke-virtual {v3}, Landroidx/compose/material3/FabPlacement;->atEnd()Z

    .line 497
    .line 498
    .line 499
    move-result v12

    .line 500
    if-eqz v12, :cond_17

    .line 501
    .line 502
    goto :goto_e

    .line 503
    :cond_17
    iget v12, v3, Landroidx/compose/material3/FabPlacement;->height:I

    .line 504
    .line 505
    iget-object v14, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->array:[C

    .line 506
    .line 507
    aget-char v14, v14, v12

    .line 508
    .line 509
    if-eq v14, v2, :cond_18

    .line 510
    .line 511
    :goto_e
    move/from16 v17, v4

    .line 512
    .line 513
    move/from16 v18, v5

    .line 514
    .line 515
    goto :goto_12

    .line 516
    :cond_18
    add-int/lit8 v12, v12, 0x1

    .line 517
    .line 518
    move/from16 v16, v4

    .line 519
    .line 520
    move v14, v12

    .line 521
    :goto_f
    move/from16 v17, v4

    .line 522
    .line 523
    if-ge v12, v7, :cond_1b

    .line 524
    .line 525
    iget-object v4, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->array:[C

    .line 526
    .line 527
    aget-char v4, v4, v12

    .line 528
    .line 529
    if-eqz v16, :cond_1a

    .line 530
    .line 531
    if-eq v4, v2, :cond_19

    .line 532
    .line 533
    if-eq v4, v15, :cond_19

    .line 534
    .line 535
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    :cond_19
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    move/from16 v18, v5

    .line 542
    .line 543
    move/from16 v16, v17

    .line 544
    .line 545
    goto :goto_10

    .line 546
    :cond_1a
    if-ne v4, v2, :cond_1c

    .line 547
    .line 548
    add-int/lit8 v14, v14, 0x1

    .line 549
    .line 550
    :cond_1b
    move/from16 v18, v5

    .line 551
    .line 552
    goto :goto_11

    .line 553
    :cond_1c
    if-ne v4, v15, :cond_1d

    .line 554
    .line 555
    move/from16 v16, v5

    .line 556
    .line 557
    move/from16 v18, v16

    .line 558
    .line 559
    goto :goto_10

    .line 560
    :cond_1d
    move/from16 v18, v5

    .line 561
    .line 562
    const/16 v5, 0xd

    .line 563
    .line 564
    if-eq v4, v5, :cond_1e

    .line 565
    .line 566
    const/16 v5, 0xa

    .line 567
    .line 568
    if-eq v4, v5, :cond_1e

    .line 569
    .line 570
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    :cond_1e
    :goto_10
    add-int/lit8 v12, v12, 0x1

    .line 574
    .line 575
    add-int/lit8 v14, v14, 0x1

    .line 576
    .line 577
    move/from16 v4, v17

    .line 578
    .line 579
    move/from16 v5, v18

    .line 580
    .line 581
    goto :goto_f

    .line 582
    :goto_11
    invoke-virtual {v3, v14}, Landroidx/compose/material3/FabPlacement;->updatePos(I)V

    .line 583
    .line 584
    .line 585
    :goto_12
    move/from16 v12, v17

    .line 586
    .line 587
    goto :goto_16

    .line 588
    :cond_1f
    move/from16 v17, v4

    .line 589
    .line 590
    move/from16 v18, v5

    .line 591
    .line 592
    if-eqz v12, :cond_20

    .line 593
    .line 594
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    if-lez v4, :cond_20

    .line 599
    .line 600
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    :cond_20
    iget v4, v3, Landroidx/compose/material3/FabPlacement;->height:I

    .line 604
    .line 605
    move v5, v4

    .line 606
    move/from16 v12, v17

    .line 607
    .line 608
    :goto_13
    if-ge v4, v7, :cond_25

    .line 609
    .line 610
    iget-object v14, v6, Lorg/apache/hc/core5/util/CharArrayBuffer;->array:[C

    .line 611
    .line 612
    aget-char v14, v14, v4

    .line 613
    .line 614
    if-eqz v12, :cond_21

    .line 615
    .line 616
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    move/from16 v12, v17

    .line 620
    .line 621
    goto :goto_14

    .line 622
    :cond_21
    if-eqz v10, :cond_22

    .line 623
    .line 624
    invoke-virtual {v10, v14}, Lorg/apache/hc/core5/util/Tokenizer$$ExternalSyntheticLambda1;->test(C)Z

    .line 625
    .line 626
    .line 627
    move-result v16

    .line 628
    if-nez v16, :cond_25

    .line 629
    .line 630
    :cond_22
    invoke-static {v14}, Lcom/bumptech/glide/GlideBuilder$1;->isWhitespace(C)Z

    .line 631
    .line 632
    .line 633
    move-result v16

    .line 634
    if-nez v16, :cond_25

    .line 635
    .line 636
    if-ne v14, v2, :cond_23

    .line 637
    .line 638
    goto :goto_15

    .line 639
    :cond_23
    if-ne v14, v15, :cond_24

    .line 640
    .line 641
    move/from16 v12, v18

    .line 642
    .line 643
    goto :goto_14

    .line 644
    :cond_24
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    :goto_14
    add-int/lit8 v4, v4, 0x1

    .line 648
    .line 649
    add-int/lit8 v5, v5, 0x1

    .line 650
    .line 651
    goto :goto_13

    .line 652
    :cond_25
    :goto_15
    invoke-virtual {v3, v5}, Landroidx/compose/material3/FabPlacement;->updatePos(I)V

    .line 653
    .line 654
    .line 655
    goto :goto_12

    .line 656
    :goto_16
    move/from16 v4, v17

    .line 657
    .line 658
    move/from16 v5, v18

    .line 659
    .line 660
    const/4 v2, 0x0

    .line 661
    goto/16 :goto_d

    .line 662
    .line 663
    :goto_17
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    invoke-virtual {v3}, Landroidx/compose/material3/FabPlacement;->atEnd()Z

    .line 668
    .line 669
    .line 670
    move-result v4

    .line 671
    if-nez v4, :cond_26

    .line 672
    .line 673
    iget v4, v3, Landroidx/compose/material3/FabPlacement;->height:I

    .line 674
    .line 675
    add-int/lit8 v4, v4, 0x1

    .line 676
    .line 677
    invoke-virtual {v3, v4}, Landroidx/compose/material3/FabPlacement;->updatePos(I)V

    .line 678
    .line 679
    .line 680
    :cond_26
    new-instance v10, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    .line 681
    .line 682
    invoke-direct {v10, v9, v2}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    :goto_18
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move/from16 v4, v17

    .line 689
    .line 690
    move/from16 v5, v18

    .line 691
    .line 692
    const/4 v2, 0x0

    .line 693
    goto/16 :goto_6

    .line 694
    .line 695
    :cond_27
    move/from16 v17, v4

    .line 696
    .line 697
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 702
    .line 703
    .line 704
    move-result v3

    .line 705
    if-eqz v3, :cond_2c

    .line 706
    .line 707
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v3

    .line 711
    check-cast v3, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    .line 712
    .line 713
    iget-object v4, v3, Lorg/apache/hc/core5/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    .line 714
    .line 715
    iget-object v5, v3, Lorg/apache/hc/core5/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    .line 716
    .line 717
    if-nez v4, :cond_29

    .line 718
    .line 719
    move/from16 v6, v17

    .line 720
    .line 721
    goto :goto_19

    .line 722
    :cond_29
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 723
    .line 724
    .line 725
    move-result v6

    .line 726
    :goto_19
    if-eqz v6, :cond_2b

    .line 727
    .line 728
    move/from16 v7, v17

    .line 729
    .line 730
    :goto_1a
    if-ge v7, v6, :cond_2b

    .line 731
    .line 732
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    .line 733
    .line 734
    .line 735
    move-result v8

    .line 736
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 737
    .line 738
    .line 739
    move-result v8

    .line 740
    if-nez v8, :cond_2a

    .line 741
    .line 742
    if-eqz v5, :cond_2b

    .line 743
    .line 744
    iget-object v3, v3, Lorg/apache/hc/core5/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    .line 745
    .line 746
    const-string v4, "cn"

    .line 747
    .line 748
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 749
    .line 750
    .line 751
    move-result v3

    .line 752
    if-eqz v3, :cond_28

    .line 753
    .line 754
    move-object v2, v5

    .line 755
    goto :goto_1b

    .line 756
    :cond_2a
    add-int/lit8 v7, v7, 0x1

    .line 757
    .line 758
    goto :goto_1a

    .line 759
    :cond_2b
    new-instance v0, Ljavax/net/ssl/SSLException;

    .line 760
    .line 761
    const-string v2, " is not a valid X500 distinguished name"

    .line 762
    .line 763
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    throw v0

    .line 771
    :cond_2c
    const/4 v2, 0x0

    .line 772
    :goto_1b
    if-eqz v2, :cond_2e

    .line 773
    .line 774
    invoke-static {v0}, Lkotlin/io/ByteStreamsKt;->normalizeUnicode(Ljava/lang/String;)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    invoke-static {v2}, Lkotlin/io/ByteStreamsKt;->normalizeUnicode(Ljava/lang/String;)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v3

    .line 782
    invoke-static {v1, v3}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;)Z

    .line 783
    .line 784
    .line 785
    move-result v1

    .line 786
    if-eqz v1, :cond_2d

    .line 787
    .line 788
    goto/16 :goto_1e

    .line 789
    .line 790
    :cond_2d
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 791
    .line 792
    const-string v3, "> doesn\'t match common name of the certificate subject: "

    .line 793
    .line 794
    const-string v4, "Certificate for <"

    .line 795
    .line 796
    invoke-static {v4, v0, v3, v2}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    throw v1

    .line 804
    :cond_2e
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 805
    .line 806
    const-string v2, "Certificate subject for <"

    .line 807
    .line 808
    const-string v3, "> doesn\'t contain a common name and does not have alternative names"

    .line 809
    .line 810
    invoke-static {v2, v0, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    throw v1

    .line 818
    :cond_2f
    move/from16 v17, v4

    .line 819
    .line 820
    move/from16 v18, v5

    .line 821
    .line 822
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    new-array v1, v3, [Ljava/lang/Object;

    .line 827
    .line 828
    const-string v2, "Buffer capacity"

    .line 829
    .line 830
    aput-object v2, v1, v17

    .line 831
    .line 832
    aput-object v0, v1, v18

    .line 833
    .line 834
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 835
    .line 836
    const-string v2, "%s must not be negative: %d"

    .line 837
    .line 838
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v1

    .line 842
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    throw v0

    .line 846
    :cond_30
    invoke-static {v0}, Lkotlin/io/ByteStreamsKt;->normalizeUnicode(Ljava/lang/String;)Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v1

    .line 850
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 851
    .line 852
    .line 853
    move-result-object v4

    .line 854
    :cond_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 855
    .line 856
    .line 857
    move-result v5

    .line 858
    if-eqz v5, :cond_32

    .line 859
    .line 860
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v5

    .line 864
    check-cast v5, Lorg/apache/hc/client5/http/ssl/SubjectName;

    .line 865
    .line 866
    iget v6, v5, Lorg/apache/hc/client5/http/ssl/SubjectName;->type:I

    .line 867
    .line 868
    if-ne v6, v3, :cond_31

    .line 869
    .line 870
    iget-object v5, v5, Lorg/apache/hc/client5/http/ssl/SubjectName;->value:Ljava/lang/String;

    .line 871
    .line 872
    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->normalizeUnicode(Ljava/lang/String;)Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v5

    .line 876
    invoke-static {v1, v5}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;)Z

    .line 877
    .line 878
    .line 879
    move-result v5

    .line 880
    if-eqz v5, :cond_31

    .line 881
    .line 882
    goto :goto_1e

    .line 883
    :cond_32
    invoke-static {v0, v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 884
    .line 885
    .line 886
    return-void

    .line 887
    :cond_33
    invoke-static {v1, v6}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 888
    .line 889
    .line 890
    move-result-object v1

    .line 891
    if-nez v0, :cond_34

    .line 892
    .line 893
    :catch_0
    move-object v2, v0

    .line 894
    goto :goto_1c

    .line 895
    :cond_34
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 896
    .line 897
    .line 898
    move-result-object v2

    .line 899
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :goto_1c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 904
    .line 905
    .line 906
    move-result-object v3

    .line 907
    :cond_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 908
    .line 909
    .line 910
    move-result v4

    .line 911
    if-eqz v4, :cond_37

    .line 912
    .line 913
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v4

    .line 917
    check-cast v4, Lorg/apache/hc/client5/http/ssl/SubjectName;

    .line 918
    .line 919
    iget v5, v4, Lorg/apache/hc/client5/http/ssl/SubjectName;->type:I

    .line 920
    .line 921
    if-ne v5, v6, :cond_35

    .line 922
    .line 923
    iget-object v4, v4, Lorg/apache/hc/client5/http/ssl/SubjectName;->value:Ljava/lang/String;

    .line 924
    .line 925
    if-nez v4, :cond_36

    .line 926
    .line 927
    goto :goto_1d

    .line 928
    :cond_36
    :try_start_1
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 929
    .line 930
    .line 931
    move-result-object v5

    .line 932
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v4
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 936
    :catch_1
    :goto_1d
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    move-result v4

    .line 940
    if-eqz v4, :cond_35

    .line 941
    .line 942
    goto :goto_1e

    .line 943
    :cond_37
    invoke-static {v0, v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 944
    .line 945
    .line 946
    return-void

    .line 947
    :cond_38
    invoke-static {v1, v6}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 948
    .line 949
    .line 950
    move-result-object v1

    .line 951
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 952
    .line 953
    .line 954
    move-result-object v2

    .line 955
    :cond_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 956
    .line 957
    .line 958
    move-result v3

    .line 959
    if-eqz v3, :cond_3a

    .line 960
    .line 961
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v3

    .line 965
    check-cast v3, Lorg/apache/hc/client5/http/ssl/SubjectName;

    .line 966
    .line 967
    iget v4, v3, Lorg/apache/hc/client5/http/ssl/SubjectName;->type:I

    .line 968
    .line 969
    if-ne v4, v6, :cond_39

    .line 970
    .line 971
    iget-object v3, v3, Lorg/apache/hc/client5/http/ssl/SubjectName;->value:Ljava/lang/String;

    .line 972
    .line 973
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 974
    .line 975
    .line 976
    move-result v3

    .line 977
    if-eqz v3, :cond_39

    .line 978
    .line 979
    :goto_1e
    return-void

    .line 980
    :cond_3a
    invoke-static {v0, v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 981
    .line 982
    .line 983
    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    const/4 p0, 0x0

    .line 984
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    .line 985
    aget-object p2, p2, p0

    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 986
    invoke-static {p1, p2}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 987
    sget-object p2, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->LOG:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljavax/net/ssl/SSLException;)V

    :cond_0
    return p0
.end method
