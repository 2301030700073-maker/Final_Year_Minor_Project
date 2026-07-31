.class public final enum Lorg/minidns/dnsmessage/DnsMessage$OPCODE;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

.field public static final INVERSE_LUT:[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

.field public static final enum QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;


# instance fields
.field public final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 2
    .line 3
    const-string v1, "QUERY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 10
    .line 11
    new-instance v1, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 12
    .line 13
    const-string v3, "INVERSE_QUERY"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 20
    .line 21
    const-string v5, "STATUS"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v5, v6}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 28
    .line 29
    const-string v7, "UNASSIGNED3"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v7, v8}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    new-instance v7, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 36
    .line 37
    const-string v9, "NOTIFY"

    .line 38
    .line 39
    const/4 v10, 0x4

    .line 40
    invoke-direct {v7, v9, v10}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    new-instance v9, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 44
    .line 45
    const-string v11, "UPDATE"

    .line 46
    .line 47
    const/4 v12, 0x5

    .line 48
    invoke-direct {v9, v11, v12}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    const/4 v11, 0x6

    .line 52
    new-array v11, v11, [Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 53
    .line 54
    aput-object v0, v11, v2

    .line 55
    .line 56
    aput-object v1, v11, v4

    .line 57
    .line 58
    aput-object v3, v11, v6

    .line 59
    .line 60
    aput-object v5, v11, v8

    .line 61
    .line 62
    aput-object v7, v11, v10

    .line 63
    .line 64
    aput-object v9, v11, v12

    .line 65
    .line 66
    sput-object v11, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->$VALUES:[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 67
    .line 68
    invoke-static {}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->values()[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    array-length v0, v0

    .line 73
    new-array v0, v0, [Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 74
    .line 75
    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->INVERSE_LUT:[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 76
    .line 77
    invoke-static {}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->values()[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    array-length v1, v0

    .line 82
    :goto_0
    if-ge v2, v1, :cond_1

    .line 83
    .line 84
    aget-object v3, v0, v2

    .line 85
    .line 86
    sget-object v4, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->INVERSE_LUT:[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 87
    .line 88
    iget-byte v5, v3, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->value:B

    .line 89
    .line 90
    aget-object v6, v4, v5

    .line 91
    .line 92
    if-nez v6, :cond_0

    .line 93
    .line 94
    aput-object v3, v4, v5

    .line 95
    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    int-to-byte p1, p1

    .line 9
    iput-byte p1, p0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->value:B

    .line 10
    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/dnsmessage/DnsMessage$OPCODE;
    .locals 1

    .line 1
    const-class v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;
    .locals 1

    .line 1
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->$VALUES:[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 8
    .line 9
    return-object v0
.end method
