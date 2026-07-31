.class public final enum Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

.field public static final enum SHA1:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

.field public static final enum SHA256:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

.field public static final enum SHA384:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;


# instance fields
.field public final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 2
    .line 3
    const-string v1, "SHA1"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA1:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 11
    .line 12
    new-instance v1, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 13
    .line 14
    const-string v4, "SHA256"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA256:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 21
    .line 22
    new-instance v4, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 23
    .line 24
    const-string v6, "GOST"

    .line 25
    .line 26
    const/4 v7, 0x3

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    new-instance v6, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 31
    .line 32
    const-string v8, "SHA384"

    .line 33
    .line 34
    const/4 v9, 0x4

    .line 35
    invoke-direct {v6, v8, v7, v9}, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    sput-object v6, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA384:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 39
    .line 40
    new-array v8, v9, [Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 41
    .line 42
    aput-object v0, v8, v2

    .line 43
    .line 44
    aput-object v1, v8, v3

    .line 45
    .line 46
    aput-object v4, v8, v5

    .line 47
    .line 48
    aput-object v6, v8, v7

    .line 49
    .line 50
    sput-object v8, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->$VALUES:[Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    if-ltz p3, :cond_0

    .line 5
    .line 6
    const/16 p1, 0xff

    .line 7
    .line 8
    if-gt p3, p1, :cond_0

    .line 9
    .line 10
    int-to-byte p1, p3

    .line 11
    iput-byte p1, p0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->value:B

    .line 12
    .line 13
    sget-object p2, Lorg/minidns/constants/DnssecConstants;->DELEGATION_DIGEST_LUT:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;
    .locals 1

    .line 1
    const-class v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;
    .locals 1

    .line 1
    sget-object v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->$VALUES:[Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 8
    .line 9
    return-object v0
.end method
