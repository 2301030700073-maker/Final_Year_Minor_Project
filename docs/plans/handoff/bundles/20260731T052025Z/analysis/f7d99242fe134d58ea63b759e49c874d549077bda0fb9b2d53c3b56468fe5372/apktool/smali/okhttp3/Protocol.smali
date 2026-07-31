.class public final enum Lokhttp3/Protocol;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lokhttp3/Protocol;

.field public static final Companion:Lokhttp3/HttpUrl$Companion;

.field public static final enum H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

.field public static final enum HTTP_1_0:Lokhttp3/Protocol;

.field public static final enum HTTP_1_1:Lokhttp3/Protocol;

.field public static final enum HTTP_2:Lokhttp3/Protocol;

.field public static final enum HTTP_3:Lokhttp3/Protocol;

.field public static final enum QUIC:Lokhttp3/Protocol;

.field public static final enum SPDY_3:Lokhttp3/Protocol;


# instance fields
.field public final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lokhttp3/Protocol;

    .line 2
    .line 3
    const-string v1, "http/1.0"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "HTTP_1_0"

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lokhttp3/Protocol;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    .line 12
    .line 13
    new-instance v1, Lokhttp3/Protocol;

    .line 14
    .line 15
    const-string v3, "http/1.1"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "HTTP_1_1"

    .line 19
    .line 20
    invoke-direct {v1, v4, v5, v3}, Lokhttp3/Protocol;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 24
    .line 25
    new-instance v3, Lokhttp3/Protocol;

    .line 26
    .line 27
    const-string v5, "spdy/3.1"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "SPDY_3"

    .line 31
    .line 32
    invoke-direct {v3, v6, v7, v5}, Lokhttp3/Protocol;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    .line 36
    .line 37
    new-instance v5, Lokhttp3/Protocol;

    .line 38
    .line 39
    const-string v7, "h2"

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "HTTP_2"

    .line 43
    .line 44
    invoke-direct {v5, v8, v9, v7}, Lokhttp3/Protocol;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v5, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 48
    .line 49
    new-instance v7, Lokhttp3/Protocol;

    .line 50
    .line 51
    const-string v9, "h2_prior_knowledge"

    .line 52
    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "H2_PRIOR_KNOWLEDGE"

    .line 55
    .line 56
    invoke-direct {v7, v10, v11, v9}, Lokhttp3/Protocol;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v7, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    .line 60
    .line 61
    new-instance v9, Lokhttp3/Protocol;

    .line 62
    .line 63
    const-string v11, "quic"

    .line 64
    .line 65
    const/4 v12, 0x5

    .line 66
    const-string v13, "QUIC"

    .line 67
    .line 68
    invoke-direct {v9, v12, v13, v11}, Lokhttp3/Protocol;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v9, Lokhttp3/Protocol;->QUIC:Lokhttp3/Protocol;

    .line 72
    .line 73
    new-instance v11, Lokhttp3/Protocol;

    .line 74
    .line 75
    const-string v13, "h3"

    .line 76
    .line 77
    const/4 v14, 0x6

    .line 78
    const-string v15, "HTTP_3"

    .line 79
    .line 80
    invoke-direct {v11, v14, v15, v13}, Lokhttp3/Protocol;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v11, Lokhttp3/Protocol;->HTTP_3:Lokhttp3/Protocol;

    .line 84
    .line 85
    const/4 v13, 0x7

    .line 86
    new-array v13, v13, [Lokhttp3/Protocol;

    .line 87
    .line 88
    aput-object v0, v13, v2

    .line 89
    .line 90
    aput-object v1, v13, v4

    .line 91
    .line 92
    aput-object v3, v13, v6

    .line 93
    .line 94
    aput-object v5, v13, v8

    .line 95
    .line 96
    aput-object v7, v13, v10

    .line 97
    .line 98
    aput-object v9, v13, v12

    .line 99
    .line 100
    aput-object v11, v13, v14

    .line 101
    .line 102
    sput-object v13, Lokhttp3/Protocol;->$VALUES:[Lokhttp3/Protocol;

    .line 103
    .line 104
    new-instance v0, Lokhttp3/HttpUrl$Companion;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 107
    .line 108
    .line 109
    sput-object v0, Lokhttp3/Protocol;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 110
    .line 111
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/Protocol;
    .locals 1

    .line 1
    const-class v0, Lokhttp3/Protocol;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lokhttp3/Protocol;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lokhttp3/Protocol;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/Protocol;->$VALUES:[Lokhttp3/Protocol;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lokhttp3/Protocol;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
