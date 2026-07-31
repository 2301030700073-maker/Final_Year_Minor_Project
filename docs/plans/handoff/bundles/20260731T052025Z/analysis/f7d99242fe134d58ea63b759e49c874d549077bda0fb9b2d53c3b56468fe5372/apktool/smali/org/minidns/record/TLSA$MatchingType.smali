.class public final enum Lorg/minidns/record/TLSA$MatchingType;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lorg/minidns/record/TLSA$MatchingType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/minidns/record/TLSA$MatchingType;

    .line 2
    .line 3
    const-string v1, "noHash"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lorg/minidns/record/TLSA$MatchingType;-><init>(Ljava/lang/String;IB)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lorg/minidns/record/TLSA$MatchingType;

    .line 10
    .line 11
    const-string v3, "sha256"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4, v4}, Lorg/minidns/record/TLSA$MatchingType;-><init>(Ljava/lang/String;IB)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lorg/minidns/record/TLSA$MatchingType;

    .line 18
    .line 19
    const-string v5, "sha512"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6, v6}, Lorg/minidns/record/TLSA$MatchingType;-><init>(Ljava/lang/String;IB)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    new-array v5, v5, [Lorg/minidns/record/TLSA$MatchingType;

    .line 27
    .line 28
    aput-object v0, v5, v2

    .line 29
    .line 30
    aput-object v1, v5, v4

    .line 31
    .line 32
    aput-object v3, v5, v6

    .line 33
    .line 34
    sput-object v5, Lorg/minidns/record/TLSA$MatchingType;->$VALUES:[Lorg/minidns/record/TLSA$MatchingType;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/minidns/record/TLSA;->MATCHING_TYPE_LUT:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/record/TLSA$MatchingType;
    .locals 1

    .line 1
    const-class v0, Lorg/minidns/record/TLSA$MatchingType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/minidns/record/TLSA$MatchingType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/minidns/record/TLSA$MatchingType;
    .locals 1

    .line 1
    sget-object v0, Lorg/minidns/record/TLSA$MatchingType;->$VALUES:[Lorg/minidns/record/TLSA$MatchingType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/minidns/record/TLSA$MatchingType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/minidns/record/TLSA$MatchingType;

    .line 8
    .line 9
    return-object v0
.end method
