.class public final enum Lokhttp3/TlsVersion;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lokhttp3/TlsVersion;

.field public static final Companion:Lokhttp3/TlsVersion$Companion;

.field public static final enum SSL_3_0:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_0:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_1:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_2:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_3:Lokhttp3/TlsVersion;


# instance fields
.field private final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lokhttp3/TlsVersion;

    .line 2
    .line 3
    const-string v1, "TLSv1.3"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "TLS_1_3"

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lokhttp3/TlsVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    .line 12
    .line 13
    new-instance v1, Lokhttp3/TlsVersion;

    .line 14
    .line 15
    const-string v3, "TLSv1.2"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "TLS_1_2"

    .line 19
    .line 20
    invoke-direct {v1, v4, v5, v3}, Lokhttp3/TlsVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    .line 24
    .line 25
    new-instance v3, Lokhttp3/TlsVersion;

    .line 26
    .line 27
    const-string v5, "TLSv1.1"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "TLS_1_1"

    .line 31
    .line 32
    invoke-direct {v3, v6, v7, v5}, Lokhttp3/TlsVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    .line 36
    .line 37
    new-instance v5, Lokhttp3/TlsVersion;

    .line 38
    .line 39
    const-string v7, "TLSv1"

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "TLS_1_0"

    .line 43
    .line 44
    invoke-direct {v5, v8, v9, v7}, Lokhttp3/TlsVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v5, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    .line 48
    .line 49
    new-instance v7, Lokhttp3/TlsVersion;

    .line 50
    .line 51
    const-string v9, "SSLv3"

    .line 52
    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "SSL_3_0"

    .line 55
    .line 56
    invoke-direct {v7, v10, v11, v9}, Lokhttp3/TlsVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v7, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    .line 60
    .line 61
    const/4 v9, 0x5

    .line 62
    new-array v9, v9, [Lokhttp3/TlsVersion;

    .line 63
    .line 64
    aput-object v0, v9, v2

    .line 65
    .line 66
    aput-object v1, v9, v4

    .line 67
    .line 68
    aput-object v3, v9, v6

    .line 69
    .line 70
    aput-object v5, v9, v8

    .line 71
    .line 72
    aput-object v7, v9, v10

    .line 73
    .line 74
    sput-object v9, Lokhttp3/TlsVersion;->$VALUES:[Lokhttp3/TlsVersion;

    .line 75
    .line 76
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 77
    .line 78
    invoke-direct {v0, v9}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lokhttp3/TlsVersion;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 82
    .line 83
    new-instance v0, Lokhttp3/TlsVersion$Companion;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    sput-object v0, Lokhttp3/TlsVersion;->Companion:Lokhttp3/TlsVersion$Companion;

    .line 89
    .line 90
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/TlsVersion;
    .locals 1

    .line 1
    const-class v0, Lokhttp3/TlsVersion;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lokhttp3/TlsVersion;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lokhttp3/TlsVersion;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/TlsVersion;->$VALUES:[Lokhttp3/TlsVersion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lokhttp3/TlsVersion;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final javaName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
