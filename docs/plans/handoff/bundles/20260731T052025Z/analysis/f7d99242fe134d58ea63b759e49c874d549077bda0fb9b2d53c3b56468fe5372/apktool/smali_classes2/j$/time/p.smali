.class public final Lj$/time/p;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = -0x6aa27b45e4ddb74eL


# instance fields
.field public a:B

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-byte p1, p0, Lj$/time/p;->a:B

    .line 5
    .line 6
    iput-object p2, p0, Lj$/time/p;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static a(BLjava/io/ObjectInput;)Ljava/lang/Object;
    .locals 6

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    sget-object p0, Lj$/time/o;->d:Lj$/time/o;

    .line 3
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    .line 4
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 5
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p1

    .line 6
    invoke-static {p0, v0, p1}, Lj$/time/o;->a(III)Lj$/time/o;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_1
    sget p0, Lj$/time/j;->c:I

    .line 8
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p0

    .line 9
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 10
    invoke-static {p0}, Lj$/time/Month;->X(I)Lj$/time/Month;

    move-result-object p0

    .line 11
    const-string v0, "month"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->L(J)V

    .line 13
    invoke-virtual {p0}, Lj$/time/Month;->W()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 14
    new-instance v0, Lj$/time/j;

    invoke-virtual {p0}, Lj$/time/Month;->getValue()I

    move-result p0

    invoke-direct {v0, p0, p1}, Lj$/time/j;-><init>(II)V

    return-object v0

    .line 15
    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal value for DayOfMonth field, value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not valid for month "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :pswitch_2
    sget-object p0, Lj$/time/YearMonth;->c:Lj$/time/format/DateTimeFormatter;

    .line 18
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    .line 19
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 20
    invoke-static {p0, p1}, Lj$/time/YearMonth;->of(II)Lj$/time/YearMonth;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_3
    sget p0, Lj$/time/r;->b:I

    .line 22
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-static {p0}, Lj$/time/r;->U(I)Lj$/time/r;

    move-result-object p0

    return-object p0

    .line 23
    :pswitch_4
    sget p0, Lj$/time/l;->c:I

    .line 24
    sget-object p0, Lj$/time/LocalDate;->MIN:Lj$/time/LocalDate;

    .line 25
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    .line 26
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 27
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 28
    invoke-static {p0, v0, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p0

    .line 29
    invoke-static {p1}, Lj$/time/LocalTime;->d0(Ljava/io/DataInput;)Lj$/time/LocalTime;

    move-result-object v0

    .line 30
    invoke-static {p0, v0}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object p0

    .line 31
    invoke-static {p1}, Lj$/time/ZoneOffset;->b0(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    move-result-object p1

    .line 32
    new-instance v0, Lj$/time/l;

    invoke-direct {v0, p0, p1}, Lj$/time/l;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    return-object v0

    .line 33
    :pswitch_5
    sget p0, Lj$/time/n;->c:I

    .line 34
    invoke-static {p1}, Lj$/time/LocalTime;->d0(Ljava/io/DataInput;)Lj$/time/LocalTime;

    move-result-object p0

    .line 35
    invoke-static {p1}, Lj$/time/ZoneOffset;->b0(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    move-result-object p1

    .line 36
    new-instance v0, Lj$/time/n;

    invoke-direct {v0, p0, p1}, Lj$/time/n;-><init>(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)V

    return-object v0

    .line 37
    :pswitch_6
    invoke-static {p1}, Lj$/time/ZoneOffset;->b0(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    .line 38
    :pswitch_7
    sget p0, Lj$/time/t;->d:I

    .line 39
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 40
    invoke-static {p0, p1}, Lj$/time/ZoneId;->V(Ljava/lang/String;Z)Lj$/time/ZoneId;

    move-result-object p0

    return-object p0

    .line 41
    :pswitch_8
    sget-object p0, Lj$/time/LocalDateTime;->MIN:Lj$/time/LocalDateTime;

    .line 42
    sget-object p0, Lj$/time/LocalDate;->MIN:Lj$/time/LocalDate;

    .line 43
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    .line 44
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 45
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 46
    invoke-static {p0, v0, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p0

    .line 47
    invoke-static {p1}, Lj$/time/LocalTime;->d0(Ljava/io/DataInput;)Lj$/time/LocalTime;

    move-result-object v0

    .line 48
    invoke-static {p0, v0}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object p0

    .line 49
    invoke-static {p1}, Lj$/time/ZoneOffset;->b0(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    move-result-object v0

    .line 50
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v1

    .line 51
    invoke-static {v1, p1}, Lj$/time/p;->a(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object p1

    .line 52
    check-cast p1, Lj$/time/ZoneId;

    .line 53
    const-string v1, "localDateTime"

    invoke-static {p0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    const-string v1, "offset"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    const-string v1, "zone"

    invoke-static {p1, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    instance-of v1, p1, Lj$/time/ZoneOffset;

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    const-string p0, "ZoneId must match ZoneOffset"

    invoke-static {p0}, Lj$/nio/file/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_2
    :goto_0
    new-instance v1, Lj$/time/ZonedDateTime;

    invoke-direct {v1, p0, p1, v0}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)V

    return-object v1

    .line 59
    :pswitch_9
    sget-object p0, Lj$/time/LocalDateTime;->MIN:Lj$/time/LocalDateTime;

    .line 60
    sget-object p0, Lj$/time/LocalDate;->MIN:Lj$/time/LocalDate;

    .line 61
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    .line 62
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 63
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 64
    invoke-static {p0, v0, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p0

    .line 65
    invoke-static {p1}, Lj$/time/LocalTime;->d0(Ljava/io/DataInput;)Lj$/time/LocalTime;

    move-result-object p1

    .line 66
    invoke-static {p0, p1}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 67
    :pswitch_a
    invoke-static {p1}, Lj$/time/LocalTime;->d0(Ljava/io/DataInput;)Lj$/time/LocalTime;

    move-result-object p0

    return-object p0

    .line 68
    :pswitch_b
    sget-object p0, Lj$/time/LocalDate;->MIN:Lj$/time/LocalDate;

    .line 69
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    .line 70
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 71
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 72
    invoke-static {p0, v0, p1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 73
    :pswitch_c
    sget-object p0, Lj$/time/Instant;->c:Lj$/time/Instant;

    .line 74
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 75
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    int-to-long p0, p0

    .line 76
    invoke-static {v0, v1, p0, p1}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object p0

    return-object p0

    .line 77
    :pswitch_d
    sget-object p0, Lj$/time/c;->c:Lj$/time/c;

    .line 78
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 79
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    int-to-long p0, p0

    const-wide/32 v2, 0x3b9aca00

    .line 80
    invoke-static {p0, p1, v2, v3}, Lj$/com/android/tools/r8/a;->C(JJ)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lj$/com/android/tools/r8/a;->Q(JJ)J

    move-result-wide v0

    .line 81
    invoke-static {p0, p1, v2, v3}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    .line 82
    invoke-static {v0, v1, p0}, Lj$/time/c;->m(JI)Lj$/time/c;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/time/p;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-byte v0, p0, Lj$/time/p;->a:B

    .line 6
    .line 7
    invoke-static {v0, p1}, Lj$/time/p;->a(BLjava/io/ObjectInput;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lj$/time/p;->b:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3

    .line 1
    iget-byte v0, p0, Lj$/time/p;->a:B

    .line 2
    .line 3
    iget-object p0, p0, Lj$/time/p;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/io/InvalidClassException;

    .line 12
    .line 13
    const-string p1, "Unknown serialized type"

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :pswitch_0
    check-cast p0, Lj$/time/o;

    .line 20
    .line 21
    iget v0, p0, Lj$/time/o;->a:I

    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lj$/time/o;->b:I

    .line 27
    .line 28
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p0, p0, Lj$/time/o;->c:I

    .line 32
    .line 33
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    check-cast p0, Lj$/time/j;

    .line 38
    .line 39
    iget v0, p0, Lj$/time/j;->a:I

    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 42
    .line 43
    .line 44
    iget p0, p0, Lj$/time/j;->b:I

    .line 45
    .line 46
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_2
    check-cast p0, Lj$/time/YearMonth;

    .line 51
    .line 52
    iget v0, p0, Lj$/time/YearMonth;->a:I

    .line 53
    .line 54
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 55
    .line 56
    .line 57
    iget p0, p0, Lj$/time/YearMonth;->b:I

    .line 58
    .line 59
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_3
    check-cast p0, Lj$/time/r;

    .line 64
    .line 65
    iget p0, p0, Lj$/time/r;->a:I

    .line 66
    .line 67
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_4
    check-cast p0, Lj$/time/l;

    .line 72
    .line 73
    iget-object v0, p0, Lj$/time/l;->a:Lj$/time/LocalDateTime;

    .line 74
    .line 75
    iget-object v1, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 76
    .line 77
    iget v2, v1, Lj$/time/LocalDate;->a:I

    .line 78
    .line 79
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 80
    .line 81
    .line 82
    iget-short v2, v1, Lj$/time/LocalDate;->b:S

    .line 83
    .line 84
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 85
    .line 86
    .line 87
    iget-short v1, v1, Lj$/time/LocalDate;->c:S

    .line 88
    .line 89
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v0, Lj$/time/LocalDateTime;->b:Lj$/time/LocalTime;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->i0(Ljava/io/DataOutput;)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lj$/time/l;->b:Lj$/time/ZoneOffset;

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lj$/time/ZoneOffset;->c0(Ljava/io/DataOutput;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_5
    check-cast p0, Lj$/time/n;

    .line 104
    .line 105
    iget-object v0, p0, Lj$/time/n;->a:Lj$/time/LocalTime;

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->i0(Ljava/io/DataOutput;)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lj$/time/n;->b:Lj$/time/ZoneOffset;

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lj$/time/ZoneOffset;->c0(Ljava/io/DataOutput;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_6
    check-cast p0, Lj$/time/ZoneOffset;

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lj$/time/ZoneOffset;->c0(Ljava/io/DataOutput;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_7
    check-cast p0, Lj$/time/t;

    .line 123
    .line 124
    iget-object p0, p0, Lj$/time/t;->b:Ljava/lang/String;

    .line 125
    .line 126
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :pswitch_8
    check-cast p0, Lj$/time/ZonedDateTime;

    .line 131
    .line 132
    iget-object v0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    .line 133
    .line 134
    iget-object v1, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 135
    .line 136
    iget v2, v1, Lj$/time/LocalDate;->a:I

    .line 137
    .line 138
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 139
    .line 140
    .line 141
    iget-short v2, v1, Lj$/time/LocalDate;->b:S

    .line 142
    .line 143
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 144
    .line 145
    .line 146
    iget-short v1, v1, Lj$/time/LocalDate;->c:S

    .line 147
    .line 148
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 149
    .line 150
    .line 151
    iget-object v0, v0, Lj$/time/LocalDateTime;->b:Lj$/time/LocalTime;

    .line 152
    .line 153
    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->i0(Ljava/io/DataOutput;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->c0(Ljava/io/DataOutput;)V

    .line 159
    .line 160
    .line 161
    iget-object p0, p0, Lj$/time/ZonedDateTime;->c:Lj$/time/ZoneId;

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Lj$/time/ZoneId;->Y(Ljava/io/DataOutput;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_9
    check-cast p0, Lj$/time/LocalDateTime;

    .line 168
    .line 169
    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 170
    .line 171
    iget v1, v0, Lj$/time/LocalDate;->a:I

    .line 172
    .line 173
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 174
    .line 175
    .line 176
    iget-short v1, v0, Lj$/time/LocalDate;->b:S

    .line 177
    .line 178
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 179
    .line 180
    .line 181
    iget-short v0, v0, Lj$/time/LocalDate;->c:S

    .line 182
    .line 183
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 184
    .line 185
    .line 186
    iget-object p0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/LocalTime;

    .line 187
    .line 188
    invoke-virtual {p0, p1}, Lj$/time/LocalTime;->i0(Ljava/io/DataOutput;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :pswitch_a
    check-cast p0, Lj$/time/LocalTime;

    .line 193
    .line 194
    invoke-virtual {p0, p1}, Lj$/time/LocalTime;->i0(Ljava/io/DataOutput;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_b
    check-cast p0, Lj$/time/LocalDate;

    .line 199
    .line 200
    iget v0, p0, Lj$/time/LocalDate;->a:I

    .line 201
    .line 202
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 203
    .line 204
    .line 205
    iget-short v0, p0, Lj$/time/LocalDate;->b:S

    .line 206
    .line 207
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 208
    .line 209
    .line 210
    iget-short p0, p0, Lj$/time/LocalDate;->c:S

    .line 211
    .line 212
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :pswitch_c
    check-cast p0, Lj$/time/Instant;

    .line 217
    .line 218
    iget-wide v0, p0, Lj$/time/Instant;->a:J

    .line 219
    .line 220
    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 221
    .line 222
    .line 223
    iget p0, p0, Lj$/time/Instant;->b:I

    .line 224
    .line 225
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :pswitch_d
    check-cast p0, Lj$/time/c;

    .line 230
    .line 231
    iget-wide v0, p0, Lj$/time/c;->a:J

    .line 232
    .line 233
    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 234
    .line 235
    .line 236
    iget p0, p0, Lj$/time/c;->b:I

    .line 237
    .line 238
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
