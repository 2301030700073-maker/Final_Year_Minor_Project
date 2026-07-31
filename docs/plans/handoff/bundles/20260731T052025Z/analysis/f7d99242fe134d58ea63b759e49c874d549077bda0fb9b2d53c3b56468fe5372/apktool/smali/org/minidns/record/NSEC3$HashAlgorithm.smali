.class public final enum Lorg/minidns/record/NSEC3$HashAlgorithm;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lorg/minidns/record/NSEC3$HashAlgorithm;

.field public static final enum SHA1:Lorg/minidns/record/NSEC3$HashAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 2
    .line 3
    const-string v1, "RESERVED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lorg/minidns/record/NSEC3$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 10
    .line 11
    const-string v3, "SHA1"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4, v4}, Lorg/minidns/record/NSEC3$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lorg/minidns/record/NSEC3$HashAlgorithm;->SHA1:Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    new-array v3, v3, [Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 21
    .line 22
    aput-object v0, v3, v2

    .line 23
    .line 24
    aput-object v1, v3, v4

    .line 25
    .line 26
    sput-object v3, Lorg/minidns/record/NSEC3$HashAlgorithm;->$VALUES:[Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 27
    .line 28
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
    sget-object p2, Lorg/minidns/record/NSEC3;->HASH_ALGORITHM_LUT:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/record/NSEC3$HashAlgorithm;
    .locals 1

    .line 1
    const-class v0, Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/minidns/record/NSEC3$HashAlgorithm;
    .locals 1

    .line 1
    sget-object v0, Lorg/minidns/record/NSEC3$HashAlgorithm;->$VALUES:[Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/minidns/record/NSEC3$HashAlgorithm;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 8
    .line 9
    return-object v0
.end method
