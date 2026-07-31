.class public Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo$Companion;


# instance fields
.field public final blockExpiry:Ljava/lang/String;

.field public final blockId:I

.field public final blockReason:Ljava/lang/String;

.field public final blockTimeStamp:Ljava/lang/String;

.field public final blockedBy:Ljava/lang/String;

.field public final blockedById:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->Companion:Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput v1, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockedById:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput p2, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockedById:I

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput v1, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockId:I

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput p3, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockId:I

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 24
    .line 25
    const-string p3, ""

    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockedBy:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockedBy:Ljava/lang/String;

    .line 33
    .line 34
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 35
    .line 36
    if-nez p2, :cond_3

    .line 37
    .line 38
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockReason:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockReason:Ljava/lang/String;

    .line 42
    .line 43
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 44
    .line 45
    if-nez p2, :cond_4

    .line 46
    .line 47
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockTimeStamp:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockTimeStamp:Ljava/lang/String;

    .line 51
    .line 52
    :goto_4
    and-int/lit8 p1, p1, 0x20

    .line 53
    .line 54
    if-nez p1, :cond_5

    .line 55
    .line 56
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockExpiry:Ljava/lang/String;

    .line 57
    .line 58
    return-void

    .line 59
    :cond_5
    iput-object p7, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockExpiry:Ljava/lang/String;

    .line 60
    .line 61
    return-void
.end method

.method public static final synthetic write$Self(Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;Lkotlin/uuid/UuidKt;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockExpiry:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockTimeStamp:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockReason:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockedBy:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockId:I

    .line 10
    .line 11
    iget p0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockedById:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-eqz p0, :cond_1

    .line 21
    .line 22
    :goto_0
    const/4 v5, 0x0

    .line 23
    invoke-virtual {p1, v5, p0, p2}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1, p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    if-eqz v4, :cond_3

    .line 34
    .line 35
    :goto_1
    const/4 p0, 0x1

    .line 36
    invoke-virtual {p1, p0, v4, p2}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-virtual {p1, p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    const-string v4, ""

    .line 44
    .line 45
    if-eqz p0, :cond_4

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_5

    .line 53
    .line 54
    :goto_2
    const/4 p0, 0x2

    .line 55
    invoke-virtual {p1, p2, p0, v3}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_5
    invoke-virtual {p1, p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_6

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_6
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_7

    .line 70
    .line 71
    :goto_3
    const/4 p0, 0x3

    .line 72
    invoke-virtual {p1, p2, p0, v2}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_7
    invoke-virtual {p1, p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_8

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_8
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_9

    .line 87
    .line 88
    :goto_4
    const/4 p0, 0x4

    .line 89
    invoke-virtual {p1, p2, p0, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_9
    invoke-virtual {p1, p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_a

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_a
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-nez p0, :cond_b

    .line 104
    .line 105
    :goto_5
    const/4 p0, 0x5

    .line 106
    invoke-virtual {p1, p2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_b
    return-void
.end method


# virtual methods
.method public final isBlocked()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockExpiry:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    new-instance v0, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-static {p0}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method
