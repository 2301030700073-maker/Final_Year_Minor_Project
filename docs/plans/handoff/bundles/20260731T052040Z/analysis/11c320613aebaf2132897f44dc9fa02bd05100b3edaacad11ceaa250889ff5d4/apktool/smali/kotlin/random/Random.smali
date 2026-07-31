.class public abstract Lkotlin/random/Random;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final defaultRandom:Lkotlin/random/AbstractPlatformRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion;->sdkVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x22

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lkotlin/random/FallbackThreadLocalRandom;

    .line 15
    .line 16
    invoke-direct {v0}, Lkotlin/random/FallbackThreadLocalRandom;-><init>()V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    new-instance v0, Lkotlin/random/jdk8/PlatformThreadLocalRandom;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    :goto_1
    sput-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract nextBits(I)I
.end method

.method public abstract nextInt()I
.end method

.method public abstract nextLong()J
.end method

.method public nextLong(JJ)J
    .locals 9

    .line 1
    cmp-long v0, p3, p1

    .line 2
    .line 3
    if-lez v0, :cond_4

    .line 4
    .line 5
    sub-long v0, p3, p1

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-lez v4, :cond_3

    .line 12
    .line 13
    neg-long p3, v0

    .line 14
    and-long/2addr p3, v0

    .line 15
    cmp-long p3, p3, v0

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-nez p3, :cond_2

    .line 19
    .line 20
    long-to-int p3, v0

    .line 21
    const/16 p4, 0x20

    .line 22
    .line 23
    ushr-long/2addr v0, p4

    .line 24
    long-to-int v0, v0

    .line 25
    const-wide v1, 0xffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    invoke-static {p3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    rsub-int/lit8 p3, p3, 0x1f

    .line 37
    .line 38
    invoke-virtual {p0, p3}, Lkotlin/random/Random;->nextBits(I)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    :goto_0
    int-to-long p3, p0

    .line 43
    and-long/2addr p3, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    if-ne v0, v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    rsub-int/lit8 p3, p3, 0x1f

    .line 57
    .line 58
    invoke-virtual {p0, p3}, Lkotlin/random/Random;->nextBits(I)I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    int-to-long v3, p3

    .line 63
    shl-long p3, v3, p4

    .line 64
    .line 65
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    int-to-long v3, p0

    .line 70
    and-long/2addr v1, v3

    .line 71
    add-long/2addr p3, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {p0}, Lkotlin/random/Random;->nextLong()J

    .line 74
    .line 75
    .line 76
    move-result-wide p3

    .line 77
    ushr-long/2addr p3, v4

    .line 78
    rem-long v5, p3, v0

    .line 79
    .line 80
    sub-long/2addr p3, v5

    .line 81
    const-wide/16 v7, 0x1

    .line 82
    .line 83
    sub-long v7, v0, v7

    .line 84
    .line 85
    add-long/2addr v7, p3

    .line 86
    cmp-long p3, v7, v2

    .line 87
    .line 88
    if-ltz p3, :cond_2

    .line 89
    .line 90
    move-wide p3, v5

    .line 91
    :goto_1
    add-long/2addr p1, p3

    .line 92
    return-wide p1

    .line 93
    :cond_3
    invoke-virtual {p0}, Lkotlin/random/Random;->nextLong()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    cmp-long v2, p1, v0

    .line 98
    .line 99
    if-gtz v2, :cond_3

    .line 100
    .line 101
    cmp-long v2, v0, p3

    .line 102
    .line 103
    if-gez v2, :cond_3

    .line 104
    .line 105
    return-wide v0

    .line 106
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string p2, ", "

    .line 115
    .line 116
    const-string p3, ")."

    .line 117
    .line 118
    const-string p4, "Random range is empty: ["

    .line 119
    .line 120
    invoke-static {p4, p0, p2, p1, p3}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    const-wide/16 p0, 0x0

    .line 124
    .line 125
    return-wide p0
.end method
