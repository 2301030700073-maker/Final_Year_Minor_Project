.class public abstract Lkotlinx/datetime/DateTimeUnit;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lkotlinx/datetime/serializers/DateTimeUnitSerializer;
.end annotation


# static fields
.field public static final Companion:Lkotlinx/datetime/DateTimeUnit$Companion;

.field public static final DAY:Lkotlinx/datetime/DateTimeUnit$DayBased;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lkotlinx/datetime/DateTimeUnit$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/datetime/DateTimeUnit;->Companion:Lkotlinx/datetime/DateTimeUnit$Companion;

    .line 7
    .line 8
    new-instance v0, Lkotlinx/datetime/DateTimeUnit$TimeBased;

    .line 9
    .line 10
    const-wide/16 v1, 0x1

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lkotlinx/datetime/DateTimeUnit$TimeBased;-><init>(J)V

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x3e8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lkotlinx/datetime/DateTimeUnit$TimeBased;->times(I)Lkotlinx/datetime/DateTimeUnit$TimeBased;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Lkotlinx/datetime/DateTimeUnit$TimeBased;->times(I)Lkotlinx/datetime/DateTimeUnit$TimeBased;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Lkotlinx/datetime/DateTimeUnit$TimeBased;->times(I)Lkotlinx/datetime/DateTimeUnit$TimeBased;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/16 v1, 0x3c

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lkotlinx/datetime/DateTimeUnit$TimeBased;->times(I)Lkotlinx/datetime/DateTimeUnit$TimeBased;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, v1}, Lkotlinx/datetime/DateTimeUnit$TimeBased;->times(I)Lkotlinx/datetime/DateTimeUnit$TimeBased;

    .line 36
    .line 37
    .line 38
    new-instance v0, Lkotlinx/datetime/DateTimeUnit$DayBased;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-direct {v0, v1}, Lkotlinx/datetime/DateTimeUnit$DayBased;-><init>(I)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lkotlinx/datetime/DateTimeUnit;->DAY:Lkotlinx/datetime/DateTimeUnit$DayBased;

    .line 45
    .line 46
    new-instance v0, Lkotlinx/datetime/DateTimeUnit$DayBased;

    .line 47
    .line 48
    const/4 v2, 0x7

    .line 49
    invoke-direct {v0, v2}, Lkotlinx/datetime/DateTimeUnit$DayBased;-><init>(I)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lkotlinx/datetime/DateTimeUnit$MonthBased;

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lkotlinx/datetime/DateTimeUnit$MonthBased;-><init>(I)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lkotlinx/datetime/DateTimeUnit$MonthBased;

    .line 58
    .line 59
    int-to-long v2, v1

    .line 60
    const-wide/16 v4, 0x3

    .line 61
    .line 62
    mul-long/2addr v2, v4

    .line 63
    long-to-int v4, v2

    .line 64
    int-to-long v5, v4

    .line 65
    cmp-long v2, v2, v5

    .line 66
    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    invoke-direct {v0, v4}, Lkotlinx/datetime/DateTimeUnit$MonthBased;-><init>(I)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lkotlinx/datetime/DateTimeUnit$MonthBased;

    .line 73
    .line 74
    int-to-long v1, v1

    .line 75
    const-wide/16 v3, 0xc

    .line 76
    .line 77
    mul-long/2addr v1, v3

    .line 78
    long-to-int v3, v1

    .line 79
    int-to-long v4, v3

    .line 80
    cmp-long v1, v1, v4

    .line 81
    .line 82
    if-nez v1, :cond_1

    .line 83
    .line 84
    invoke-direct {v0, v3}, Lkotlinx/datetime/DateTimeUnit$MonthBased;-><init>(I)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lkotlinx/datetime/DateTimeUnit$MonthBased;

    .line 88
    .line 89
    int-to-long v1, v3

    .line 90
    const-wide/16 v3, 0x64

    .line 91
    .line 92
    mul-long/2addr v1, v3

    .line 93
    long-to-int v3, v1

    .line 94
    int-to-long v4, v3

    .line 95
    cmp-long v1, v1, v4

    .line 96
    .line 97
    if-nez v1, :cond_0

    .line 98
    .line 99
    invoke-direct {v0, v3}, Lkotlinx/datetime/DateTimeUnit$MonthBased;-><init>(I)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    .line 118
    .line 119
    .line 120
    throw v0
.end method

.method public static formatToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p1, 0x2d

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
