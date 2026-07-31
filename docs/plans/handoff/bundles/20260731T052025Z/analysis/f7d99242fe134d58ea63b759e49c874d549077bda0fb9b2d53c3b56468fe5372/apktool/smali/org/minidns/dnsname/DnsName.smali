.class public final Lorg/minidns/dnsname/DnsName;
.super Lorg/minidns/util/SafeCharSequence;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final ROOT:Lorg/minidns/dnsname/DnsName;

.field public static final VALIDATE:Z


# instance fields
.field public final ace:Ljava/lang/String;

.field public transient bytes:[B

.field public transient hashCode:I

.field public transient hostpart:Ljava/lang/String;

.field public transient labels:[Lorg/minidns/dnslabel/DnsLabel;

.field public final rawAce:Ljava/lang/String;

.field public transient rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

.field public transient safeToStringRepresentation:Ljava/lang/String;

.field public size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/minidns/dnsname/DnsName;

    .line 2
    .line 3
    const-string v1, "."

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/minidns/dnsname/DnsName;-><init>(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    .line 10
    .line 11
    new-instance v0, Lorg/minidns/dnsname/DnsName;

    .line 12
    .line 13
    const-string v1, "in-addr.arpa"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lorg/minidns/dnsname/DnsName;-><init>(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lorg/minidns/dnsname/DnsName;

    .line 19
    .line 20
    const-string v1, "ip6.arpa"

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lorg/minidns/dnsname/DnsName;-><init>(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    sput-boolean v2, Lorg/minidns/dnsname/DnsName;->VALIDATE:Z

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/minidns/dnsname/DnsName;->size:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p1, v1, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/lit8 v2, v0, -0x1

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    if-lt v0, v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/16 v3, 0x2e

    .line 34
    .line 35
    if-ne v0, v3, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :cond_1
    if-eqz p2, :cond_2

    .line 47
    .line 48
    iput-object p1, p0, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object p2, v1, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    iget-object p1, v1, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-static {p1}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_0
    iput-object p1, p0, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    .line 67
    .line 68
    :goto_1
    iget-object p1, p0, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    .line 69
    .line 70
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 77
    .line 78
    sget-boolean p2, Lorg/minidns/dnsname/DnsName;->VALIDATE:Z

    .line 79
    .line 80
    if-nez p2, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->setBytesIfRequired$1()V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lorg/minidns/dnsname/DnsName;->bytes:[B

    .line 87
    .line 88
    array-length p2, p0

    .line 89
    const/16 v0, 0xff

    .line 90
    .line 91
    if-gt p2, v0, :cond_5

    .line 92
    .line 93
    :goto_2
    return-void

    .line 94
    :cond_5
    new-instance p2, Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;

    .line 95
    .line 96
    const/4 v0, 0x1

    .line 97
    invoke-direct {p2, v0, p0, p1}, Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;-><init>(ILjava/io/Serializable;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p2
.end method

.method public constructor <init>([Lorg/minidns/dnslabel/DnsLabel;Z)V
    .locals 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Lorg/minidns/dnsname/DnsName;->size:I

    .line 103
    iput-object p1, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 104
    array-length v0, p1

    new-array v0, v0, [Lorg/minidns/dnslabel/DnsLabel;

    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    const/4 v0, 0x0

    move v1, v0

    .line 105
    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    .line 106
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/minidns/util/SafeCharSequence;->length()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 107
    iget-object v2, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/minidns/dnslabel/DnsLabel;->asLowercaseVariant()Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {p1, v1}, Lorg/minidns/dnsname/DnsName;->labelsToString([Lorg/minidns/dnslabel/DnsLabel;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    .line 109
    iget-object p1, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    invoke-static {p1, v1}, Lorg/minidns/dnsname/DnsName;->labelsToString([Lorg/minidns/dnslabel/DnsLabel;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 110
    sget-boolean p2, Lorg/minidns/dnsname/DnsName;->VALIDATE:Z

    if-nez p2, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->setBytesIfRequired$1()V

    .line 112
    iget-object p0, p0, Lorg/minidns/dnsname/DnsName;->bytes:[B

    array-length p2, p0

    const/16 v0, 0xff

    if-gt p2, v0, :cond_2

    goto :goto_1

    .line 113
    :cond_2
    new-instance p2, Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;

    invoke-direct {p2, v3, p0, p1}, Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;-><init>(ILjava/io/Serializable;Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    return-void
.end method

.method public static from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;
    .locals 2

    .line 37
    new-instance v0, Lorg/minidns/dnsname/DnsName;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/minidns/dnsname/DnsName;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static from(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 8
    .line 9
    array-length v0, v0

    .line 10
    iget-object v1, p1, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    add-int/2addr v0, v2

    .line 14
    new-array v0, v0, [Lorg/minidns/dnslabel/DnsLabel;

    .line 15
    .line 16
    array-length v2, v1

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 22
    .line 23
    iget-object p1, p1, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 24
    .line 25
    array-length p1, p1

    .line 26
    array-length v1, p0

    .line 27
    invoke-static {p0, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Lorg/minidns/dnsname/DnsName;

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsname/DnsName;-><init>([Lorg/minidns/dnslabel/DnsLabel;Z)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method public static getLabels(Ljava/lang/String;)[Lorg/minidns/dnslabel/DnsLabel;
    .locals 6

    .line 1
    const-string v0, "[.\u3002\uff0e\uff61]"

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    array-length v3, v0

    .line 12
    div-int/lit8 v3, v3, 0x2

    .line 13
    .line 14
    if-ge v2, v3, :cond_0

    .line 15
    .line 16
    aget-object v3, v0, v2

    .line 17
    .line 18
    array-length v4, v0

    .line 19
    sub-int/2addr v4, v2

    .line 20
    add-int/lit8 v4, v4, -0x1

    .line 21
    .line 22
    aget-object v5, v0, v4

    .line 23
    .line 24
    aput-object v5, v0, v2

    .line 25
    .line 26
    aput-object v3, v0, v4

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_0
    sget-object v2, Lorg/minidns/dnslabel/DnsLabel;->WILDCARD_LABEL:Lorg/minidns/dnslabel/DnsLabel;

    .line 32
    .line 33
    array-length v2, v0

    .line 34
    new-array v2, v2, [Lorg/minidns/dnslabel/DnsLabel;

    .line 35
    .line 36
    move v3, v1

    .line 37
    :goto_1
    array-length v4, v0

    .line 38
    if-ge v3, v4, :cond_1

    .line 39
    .line 40
    aget-object v4, v0, v3

    .line 41
    .line 42
    invoke-static {v4}, Lorg/minidns/dnslabel/DnsLabel;->from(Ljava/lang/String;)Lorg/minidns/dnslabel/DnsLabel;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    aput-object v4, v2, v3
    :try_end_0
    .catch Lorg/minidns/dnslabel/DnsLabel$LabelToLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    return-object v2

    .line 52
    :catch_0
    move-exception v0

    .line 53
    new-instance v2, Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;

    .line 54
    .line 55
    iget-object v0, v0, Lorg/minidns/dnslabel/DnsLabel$LabelToLongException;->label:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {v2, v1, v0, p0}, Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;-><init>(ILjava/io/Serializable;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v2
.end method

.method public static labelsToString([Lorg/minidns/dnslabel/DnsLabel;I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    .line 5
    .line 6
    array-length p1, p0

    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz p1, :cond_0

    .line 10
    .line 11
    aget-object v1, p0, p1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x2e

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    add-int/lit8 p0, p0, -0x1

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;
    .locals 3

    .line 79
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x8

    .line 80
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p0

    add-int/2addr p0, v0

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-static {p1, p0, v0}, Lorg/minidns/dnsname/DnsName;->parse([BILjava/util/HashSet;)Lorg/minidns/dnsname/DnsName;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    .line 84
    sget-object p0, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    return-object p0

    .line 85
    :cond_1
    new-array v0, v0, [B

    .line 86
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 87
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 88
    new-instance v0, Lorg/minidns/dnsname/DnsName;

    const/4 v2, 0x1

    .line 89
    invoke-direct {v0, v1, v2}, Lorg/minidns/dnsname/DnsName;-><init>(Ljava/lang/String;Z)V

    .line 90
    invoke-static {p0, p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object p0

    .line 91
    invoke-static {v0, p0}, Lorg/minidns/dnsname/DnsName;->from(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;

    move-result-object p0

    return-object p0
.end method

.method public static parse([BILjava/util/HashSet;)Lorg/minidns/dnsname/DnsName;
    .locals 5

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0xff

    .line 4
    .line 5
    and-int/lit16 v2, v0, 0xc0

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/16 v4, 0xc0

    .line 9
    .line 10
    if-ne v2, v4, :cond_1

    .line 11
    .line 12
    and-int/lit8 v0, v0, 0x3f

    .line 13
    .line 14
    shl-int/lit8 v0, v0, 0x8

    .line 15
    .line 16
    add-int/2addr p1, v3

    .line 17
    aget-byte p1, p0, p1

    .line 18
    .line 19
    and-int/lit16 p1, p1, 0xff

    .line 20
    .line 21
    add-int/2addr v0, p1

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0, p2}, Lorg/minidns/dnsname/DnsName;->parse([BILjava/util/HashSet;)Lorg/minidns/dnsname/DnsName;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_0
    const-string p0, "Cyclic offsets detected."

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :cond_1
    if-nez v1, :cond_2

    .line 52
    .line 53
    sget-object p0, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 57
    .line 58
    add-int/2addr p1, v3

    .line 59
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 60
    .line 61
    invoke-direct {v0, p0, p1, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Lorg/minidns/dnsname/DnsName;

    .line 65
    .line 66
    invoke-direct {v2, v0, v3}, Lorg/minidns/dnsname/DnsName;-><init>(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    add-int/2addr p1, v1

    .line 70
    invoke-static {p0, p1, p2}, Lorg/minidns/dnsname/DnsName;->parse([BILjava/util/HashSet;)Lorg/minidns/dnsname/DnsName;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v2, p0}, Lorg/minidns/dnsname/DnsName;->from(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/minidns/dnsname/DnsName;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p1, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/minidns/dnsname/DnsName;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Lorg/minidns/dnsname/DnsName;

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->setBytesIfRequired$1()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/minidns/dnsname/DnsName;->setBytesIfRequired$1()V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lorg/minidns/dnsname/DnsName;->bytes:[B

    .line 18
    .line 19
    iget-object p1, p1, Lorg/minidns/dnsname/DnsName;->bytes:[B

    .line 20
    .line 21
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    return v0
.end method

.method public final getLabelCount()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 5
    .line 6
    array-length p0, p0

    .line 7
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/minidns/dnsname/DnsName;->hashCode:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->isRootLabel()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->setBytesIfRequired$1()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->bytes:[B

    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lorg/minidns/dnsname/DnsName;->hashCode:I

    .line 21
    .line 22
    :cond_0
    iget p0, p0, Lorg/minidns/dnsname/DnsName;->hashCode:I

    .line 23
    .line 24
    return p0
.end method

.method public final isChildOf(Lorg/minidns/dnsname/DnsName;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 8
    .line 9
    array-length v0, v0

    .line 10
    iget-object v1, p1, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 11
    .line 12
    array-length v1, v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ge v0, v1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    iget-object v1, p1, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 19
    .line 20
    array-length v3, v1

    .line 21
    if-ge v0, v3, :cond_2

    .line 22
    .line 23
    iget-object v3, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 24
    .line 25
    aget-object v3, v3, v0

    .line 26
    .line 27
    aget-object v1, v1, v0

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Lorg/minidns/dnslabel/DnsLabel;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 p0, 0x1

    .line 40
    return p0
.end method

.method public final isRootLabel()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "."

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final setBytesIfRequired$1()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->bytes:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 10
    .line 11
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 12
    .line 13
    const/16 v2, 0x40

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 16
    .line 17
    .line 18
    array-length v2, v0

    .line 19
    add-int/lit8 v2, v2, -0x1

    .line 20
    .line 21
    :goto_0
    const/4 v3, 0x0

    .line 22
    if-ltz v2, :cond_2

    .line 23
    .line 24
    aget-object v4, v0, v2

    .line 25
    .line 26
    iget-object v5, v4, Lorg/minidns/dnslabel/DnsLabel;->byteCache:[B

    .line 27
    .line 28
    if-nez v5, :cond_1

    .line 29
    .line 30
    iget-object v5, v4, Lorg/minidns/dnslabel/DnsLabel;->label:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iput-object v5, v4, Lorg/minidns/dnslabel/DnsLabel;->byteCache:[B

    .line 39
    .line 40
    :cond_1
    iget-object v5, v4, Lorg/minidns/dnslabel/DnsLabel;->byteCache:[B

    .line 41
    .line 42
    array-length v5, v5

    .line 43
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 44
    .line 45
    .line 46
    iget-object v4, v4, Lorg/minidns/dnslabel/DnsLabel;->byteCache:[B

    .line 47
    .line 48
    array-length v5, v4

    .line 49
    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v2, v2, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->bytes:[B

    .line 63
    .line 64
    return-void
.end method

.method public final setLabelsIfRequired()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->isRootLabel()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    new-array v0, v0, [Lorg/minidns/dnslabel/DnsLabel;

    .line 18
    .line 19
    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 20
    .line 21
    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Lorg/minidns/dnsname/DnsName;->getLabels(Ljava/lang/String;)[Lorg/minidns/dnslabel/DnsLabel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 31
    .line 32
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Lorg/minidns/dnsname/DnsName;->getLabels(Ljava/lang/String;)[Lorg/minidns/dnslabel/DnsLabel;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 39
    .line 40
    return-void
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/minidns/dnsname/DnsName;->size:I

    .line 2
    .line 3
    if-gez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->isRootLabel()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lorg/minidns/dnsname/DnsName;->size:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    iput v0, p0, Lorg/minidns/dnsname/DnsName;->size:I

    .line 24
    .line 25
    :cond_1
    :goto_0
    iget p0, p0, Lorg/minidns/dnsname/DnsName;->size:I

    .line 26
    .line 27
    return p0
.end method

.method public final stripToLabels(I)Lorg/minidns/dnsname/DnsName;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    if-gt p1, v1, :cond_2

    .line 8
    .line 9
    array-length v0, v0

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    sget-object p0, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    iget-object p0, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, [Lorg/minidns/dnslabel/DnsLabel;

    .line 26
    .line 27
    new-instance p1, Lorg/minidns/dnsname/DnsName;

    .line 28
    .line 29
    invoke-direct {p1, p0, v0}, Lorg/minidns/dnsname/DnsName;-><init>([Lorg/minidns/dnslabel/DnsLabel;Z)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_2
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->safeToStringRepresentation:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 9
    .line 10
    array-length v0, v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string p0, "."

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 22
    .line 23
    array-length v1, v1

    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    :goto_0
    if-ltz v1, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 29
    .line 30
    aget-object v2, v2, v1

    .line 31
    .line 32
    invoke-virtual {v2}, Lorg/minidns/dnslabel/DnsLabel;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const/16 v2, 0x2e

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->safeToStringRepresentation:Ljava/lang/String;

    .line 54
    .line 55
    :cond_3
    iget-object p0, p0, Lorg/minidns/dnsname/DnsName;->safeToStringRepresentation:Ljava/lang/String;

    .line 56
    .line 57
    return-object p0
.end method

.method public final writeToStream(Ljava/io/DataOutputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->setBytesIfRequired$1()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/minidns/dnsname/DnsName;->bytes:[B

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
