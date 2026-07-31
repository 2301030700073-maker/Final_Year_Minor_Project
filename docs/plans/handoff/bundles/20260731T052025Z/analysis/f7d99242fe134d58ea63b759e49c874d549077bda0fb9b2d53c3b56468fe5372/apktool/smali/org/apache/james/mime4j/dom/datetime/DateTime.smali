.class public final Lorg/apache/james/mime4j/dom/datetime/DateTime;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final date:Ljava/util/Date;

.field public final day:I

.field public final hour:I

.field public final minute:I

.field public final month:I

.field public final second:I

.field public final timeZone:I

.field public final year:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq p1, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq p1, v1, :cond_0

    .line 20
    .line 21
    :goto_0
    move v2, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit16 v0, v0, 0x76c

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-ltz v0, :cond_0

    .line 27
    .line 28
    const/16 p1, 0x32

    .line 29
    .line 30
    if-ge v0, p1, :cond_0

    .line 31
    .line 32
    add-int/lit16 v0, v0, 0x7d0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iput v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->year:I

    .line 36
    .line 37
    new-instance v1, Ljava/util/GregorianCalendar;

    .line 38
    .line 39
    const-string p1, "GMT+0"

    .line 40
    .line 41
    invoke-static {p1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v1, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v3, p2, -0x1

    .line 49
    .line 50
    move v4, p3

    .line 51
    move v5, p4

    .line 52
    move v6, p5

    .line 53
    move v7, p6

    .line 54
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 55
    .line 56
    .line 57
    const/16 p1, 0xe

    .line 58
    .line 59
    const/4 p3, 0x0

    .line 60
    invoke-virtual {v1, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 61
    .line 62
    .line 63
    const/high16 p1, -0x80000000

    .line 64
    .line 65
    if-eq p7, p1, :cond_2

    .line 66
    .line 67
    div-int/lit8 p1, p7, 0x64

    .line 68
    .line 69
    mul-int/lit8 p1, p1, 0x3c

    .line 70
    .line 71
    rem-int/lit8 p3, p7, 0x64

    .line 72
    .line 73
    add-int/2addr p3, p1

    .line 74
    mul-int/lit8 p3, p3, -0x1

    .line 75
    .line 76
    const/16 p1, 0xc

    .line 77
    .line 78
    invoke-virtual {v1, p1, p3}, Ljava/util/Calendar;->add(II)V

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->date:Ljava/util/Date;

    .line 86
    .line 87
    iput p2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->month:I

    .line 88
    .line 89
    iput v4, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->day:I

    .line 90
    .line 91
    iput v5, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->hour:I

    .line 92
    .line 93
    iput v6, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->minute:I

    .line 94
    .line 95
    iput v7, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->second:I

    .line 96
    .line 97
    iput p7, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->timeZone:I

    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    const-class v2, Lorg/apache/james/mime4j/dom/datetime/DateTime;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;

    .line 19
    .line 20
    iget-object v2, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->date:Ljava/util/Date;

    .line 21
    .line 22
    iget-object v3, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->date:Ljava/util/Date;

    .line 23
    .line 24
    if-nez v3, :cond_3

    .line 25
    .line 26
    if-eqz v2, :cond_4

    .line 27
    .line 28
    return v1

    .line 29
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_4

    .line 34
    .line 35
    return v1

    .line 36
    :cond_4
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->day:I

    .line 37
    .line 38
    iget v3, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->day:I

    .line 39
    .line 40
    if-eq v2, v3, :cond_5

    .line 41
    .line 42
    return v1

    .line 43
    :cond_5
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->hour:I

    .line 44
    .line 45
    iget v3, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->hour:I

    .line 46
    .line 47
    if-eq v2, v3, :cond_6

    .line 48
    .line 49
    return v1

    .line 50
    :cond_6
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->minute:I

    .line 51
    .line 52
    iget v3, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->minute:I

    .line 53
    .line 54
    if-eq v2, v3, :cond_7

    .line 55
    .line 56
    return v1

    .line 57
    :cond_7
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->month:I

    .line 58
    .line 59
    iget v3, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->month:I

    .line 60
    .line 61
    if-eq v2, v3, :cond_8

    .line 62
    .line 63
    return v1

    .line 64
    :cond_8
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->second:I

    .line 65
    .line 66
    iget v3, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->second:I

    .line 67
    .line 68
    if-eq v2, v3, :cond_9

    .line 69
    .line 70
    return v1

    .line 71
    :cond_9
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->timeZone:I

    .line 72
    .line 73
    iget v3, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->timeZone:I

    .line 74
    .line 75
    if-eq v2, v3, :cond_a

    .line 76
    .line 77
    return v1

    .line 78
    :cond_a
    iget p0, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->year:I

    .line 79
    .line 80
    iget p1, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->year:I

    .line 81
    .line 82
    if-ne p0, p1, :cond_b

    .line 83
    .line 84
    return v0

    .line 85
    :cond_b
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->date:Ljava/util/Date;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    const/16 v1, 0x1f

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    mul-int/2addr v0, v1

    .line 15
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->day:I

    .line 16
    .line 17
    add-int/2addr v0, v2

    .line 18
    mul-int/2addr v0, v1

    .line 19
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->hour:I

    .line 20
    .line 21
    add-int/2addr v0, v2

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->minute:I

    .line 24
    .line 25
    add-int/2addr v0, v2

    .line 26
    mul-int/2addr v0, v1

    .line 27
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->month:I

    .line 28
    .line 29
    add-int/2addr v0, v2

    .line 30
    mul-int/2addr v0, v1

    .line 31
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->second:I

    .line 32
    .line 33
    add-int/2addr v0, v2

    .line 34
    mul-int/2addr v0, v1

    .line 35
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->timeZone:I

    .line 36
    .line 37
    add-int/2addr v0, v2

    .line 38
    mul-int/2addr v0, v1

    .line 39
    iget p0, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->year:I

    .line 40
    .line 41
    add-int/2addr v0, p0

    .line 42
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->year:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->month:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->day:I

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "; "

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->hour:I

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->minute:I

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->second:I

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget p0, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->timeZone:I

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method
