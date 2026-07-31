.class public final Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final isoDateTimeFormat:Lkotlinx/datetime/format/LocalDateTimeFormat;


# instance fields
.field public final clock:Lkotlin/time/Clock;

.field public final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/datetime/LocalDateTime;->Companion:Lkotlinx/datetime/LocalDateTime$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;

    .line 7
    .line 8
    new-instance v1, Lokhttp3/Headers$Builder;

    .line 9
    .line 10
    const/16 v2, 0xb

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;-><init>(Lokhttp3/Headers$Builder;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;->year()V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x2d

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;->monthNumber()V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;->day()V

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;->hour()V

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x3a

    .line 44
    .line 45
    invoke-static {v0, v1}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;->minute()V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lkotlinx/datetime/format/LocalDateTimeFormat;

    .line 52
    .line 53
    invoke-static {v0}, Lkotlinx/io/Sink$-CC;->$default$build(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;)Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {v1, v0}, Lkotlinx/datetime/format/LocalDateTimeFormat;-><init>(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V

    .line 58
    .line 59
    .line 60
    sput-object v1, Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;->isoDateTimeFormat:Lkotlinx/datetime/format/LocalDateTimeFormat;

    .line 61
    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/time/Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;->clock:Lkotlin/time/Clock;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final formatDate(JLnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlinx/datetime/TimeZone;->UTC:Lkotlinx/datetime/FixedOffsetTimeZone;

    .line 5
    .line 6
    invoke-static {}, Lkotlin/text/CharsKt__CharKt;->currentSystemDefault()Lkotlinx/datetime/TimeZone;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;->clock:Lkotlin/time/Clock;

    .line 11
    .line 12
    invoke-interface {v1}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1, v0}, Lorg/minidns/util/Hex;->toLocalDateTime(Lkotlin/time/Instant;Lkotlinx/datetime/TimeZone;)Lkotlinx/datetime/LocalDateTime;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v2, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/time/InstantKt;->fromEpochMilliseconds(J)Lkotlin/time/Instant;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2, v0}, Lorg/minidns/util/Hex;->toLocalDateTime(Lkotlin/time/Instant;Lkotlinx/datetime/TimeZone;)Lkotlinx/datetime/LocalDateTime;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    iget-object v2, p0, Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;->context:Landroid/content/Context;

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    if-eqz p3, :cond_2

    .line 38
    .line 39
    if-eq p3, p0, :cond_1

    .line 40
    .line 41
    const/4 p0, 0x2

    .line 42
    if-ne p3, p0, :cond_0

    .line 43
    .line 44
    sget-object p0, Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;->isoDateTimeFormat:Lkotlinx/datetime/format/LocalDateTimeFormat;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/AbstractDateTimeFormat;->format(Lkotlinx/datetime/LocalDateTime;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0

    .line 56
    :cond_1
    const v7, 0x20015

    .line 57
    .line 58
    .line 59
    move-wide v5, p1

    .line 60
    move-wide v3, p1

    .line 61
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_2
    move-wide v3, p1

    .line 70
    invoke-virtual {v0}, Lkotlinx/datetime/LocalDateTime;->getDate()Lkotlinx/datetime/LocalDate;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v1}, Lkotlinx/datetime/LocalDateTime;->getDate()Lkotlinx/datetime/LocalDate;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Lkotlinx/datetime/LocalDate;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    :goto_0
    move v7, p0

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    invoke-virtual {v0}, Lkotlinx/datetime/LocalDateTime;->getDate()Lkotlinx/datetime/LocalDate;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v1}, Lkotlinx/datetime/LocalDateTime;->getDate()Lkotlinx/datetime/LocalDate;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    sget p3, Lkotlinx/datetime/LocalDateJvmKt;->$r8$clinit:I

    .line 95
    .line 96
    iget-object p1, p1, Lkotlinx/datetime/LocalDate;->value:Lj$/time/LocalDate;

    .line 97
    .line 98
    iget-object p2, p2, Lkotlinx/datetime/LocalDate;->value:Lj$/time/LocalDate;

    .line 99
    .line 100
    sget-object p3, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 101
    .line 102
    invoke-virtual {p1, p2, p3}, Lj$/time/LocalDate;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    .line 103
    .line 104
    .line 105
    move-result-wide p1

    .line 106
    const-wide/32 v5, 0x7fffffff

    .line 107
    .line 108
    .line 109
    cmp-long p3, p1, v5

    .line 110
    .line 111
    if-lez p3, :cond_4

    .line 112
    .line 113
    const p1, 0x7fffffff

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    const-wide/32 v5, -0x80000000

    .line 118
    .line 119
    .line 120
    cmp-long p3, p1, v5

    .line 121
    .line 122
    if-gez p3, :cond_5

    .line 123
    .line 124
    const/high16 p1, -0x80000000

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    long-to-int p1, p1

    .line 128
    :goto_1
    if-gt p0, p1, :cond_6

    .line 129
    .line 130
    const/4 p0, 0x7

    .line 131
    if-ge p1, p0, :cond_6

    .line 132
    .line 133
    const p0, 0x8002

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_6
    iget-object p0, v0, Lkotlinx/datetime/LocalDateTime;->value:Lj$/time/LocalDateTime;

    .line 138
    .line 139
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->getYear()I

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    iget-object p1, v1, Lkotlinx/datetime/LocalDateTime;->value:Lj$/time/LocalDateTime;

    .line 144
    .line 145
    invoke-virtual {p1}, Lj$/time/LocalDateTime;->getYear()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-ne p0, p1, :cond_7

    .line 150
    .line 151
    const p0, 0x10010

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_7
    const p0, 0x20014

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :goto_2
    move-wide v5, v3

    .line 160
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    return-object p0
.end method
