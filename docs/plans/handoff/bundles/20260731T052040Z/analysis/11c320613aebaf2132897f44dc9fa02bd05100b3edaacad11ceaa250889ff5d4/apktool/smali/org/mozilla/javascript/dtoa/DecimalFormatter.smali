.class public Lorg/mozilla/javascript/dtoa/DecimalFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_FIXED:D = 1.0E21


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static fillZeroes(Ljava/lang/StringBuilder;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p1, :cond_0

    .line 3
    .line 4
    const/16 v1, 0x30

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method

.method public static toExponential(DI)Ljava/lang/String;
    .locals 6

    .line 1
    if-gez p2, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimal(D)Lorg/mozilla/javascript/dtoa/Decimal;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object p1, Lorg/mozilla/javascript/dtoa/Decimal$Mode;->TO_EXPONENTIAL:Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->toString(Lorg/mozilla/javascript/dtoa/Decimal$Mode;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmpg-double v0, v0, v2

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-gez v0, :cond_1

    .line 24
    .line 25
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide p0

    .line 34
    :cond_2
    new-instance v2, Ljava/math/BigDecimal;

    .line 35
    .line 36
    new-instance v3, Ljava/math/MathContext;

    .line 37
    .line 38
    add-int/lit8 v4, p2, 0x1

    .line 39
    .line 40
    sget-object v5, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 41
    .line 42
    invoke-direct {v3, v4, v5}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, p0, p1, v3}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-ltz p0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/math/BigDecimal;->precision()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    sub-int/2addr p0, p1

    .line 63
    :goto_1
    sub-int/2addr p0, v1

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-virtual {v2}, Ljava/math/BigDecimal;->precision()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    neg-int p1, p1

    .line 74
    add-int/2addr p0, p1

    .line 75
    goto :goto_1

    .line 76
    :goto_2
    invoke-static {v2, p0, p2, v0}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->toExponentialString(Ljava/math/BigDecimal;IIZ)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method private static toExponentialString(Ljava/math/BigDecimal;IIZ)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    add-int v2, v0, p2

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x7

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 20
    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    const/16 p3, 0x2d

    .line 25
    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 p3, 0x0

    .line 30
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/4 p3, 0x1

    .line 38
    if-gt v0, p3, :cond_1

    .line 39
    .line 40
    if-lt p2, p3, :cond_2

    .line 41
    .line 42
    :cond_1
    const/16 v2, 0x2e

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    sub-int/2addr v0, p3

    .line 55
    sub-int/2addr p2, v0

    .line 56
    invoke-static {v1, p2}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->fillZeroes(Ljava/lang/StringBuilder;I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    const/16 p0, 0x65

    .line 60
    .line 61
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    if-ltz p1, :cond_3

    .line 65
    .line 66
    const/16 p0, 0x2b

    .line 67
    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public static toFixed(DI)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmpg-double v0, v0, v2

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-wide v1, p0

    .line 22
    :goto_1
    const-wide v3, 0x444b1ae4d6e2ef50L    # 1.0E21

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmpl-double v3, v1, v3

    .line 28
    .line 29
    if-ltz v3, :cond_2

    .line 30
    .line 31
    invoke-static {p0, p1}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toString(D)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_2
    new-instance p0, Ljava/math/BigDecimal;

    .line 37
    .line 38
    sget-object p1, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    .line 39
    .line 40
    invoke-direct {p0, v1, v2, p1}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-le p1, p2, :cond_3

    .line 48
    .line 49
    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 50
    .line 51
    invoke-virtual {p0, p2, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :cond_3
    invoke-static {p0, p2, v0}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->toFixedString(Ljava/math/BigDecimal;IZ)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method private static toFixedString(Ljava/math/BigDecimal;IZ)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const-string p1, "-"

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_0
    return-object p0

    .line 30
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    mul-int/lit8 v3, v1, 0x2

    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x3

    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 37
    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    const/16 p2, 0x2d

    .line 42
    .line 43
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :cond_2
    if-lt v0, v1, :cond_3

    .line 47
    .line 48
    const-string p2, "0."

    .line 49
    .line 50
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    sub-int p2, v0, v1

    .line 54
    .line 55
    invoke-static {v2, p2}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->fillZeroes(Ljava/lang/StringBuilder;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    sub-int/2addr v1, v0

    .line 63
    const/4 p2, 0x0

    .line 64
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const/16 p2, 0x2e

    .line 72
    .line 73
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    :goto_0
    sub-int/2addr p1, v0

    .line 84
    invoke-static {v2, p1}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->fillZeroes(Ljava/lang/StringBuilder;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method public static toPrecision(DI)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmpg-double v0, v0, v2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    neg-double p0, p0

    .line 19
    :cond_1
    new-instance v3, Ljava/math/BigDecimal;

    .line 20
    .line 21
    new-instance v4, Ljava/math/MathContext;

    .line 22
    .line 23
    sget-object v5, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 24
    .line 25
    invoke-direct {v4, p2, v5}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, p0, p1, v4}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/math/BigDecimal;->scale()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-virtual {v3}, Ljava/math/BigDecimal;->precision()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ltz p0, :cond_3

    .line 40
    .line 41
    if-lt p0, p1, :cond_2

    .line 42
    .line 43
    move v1, p2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    sub-int v1, p1, p0

    .line 46
    .line 47
    sub-int v1, p2, v1

    .line 48
    .line 49
    :goto_1
    sub-int/2addr p1, p0

    .line 50
    :goto_2
    sub-int/2addr p1, v2

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    neg-int p0, p0

    .line 53
    add-int/2addr p1, p0

    .line 54
    goto :goto_2

    .line 55
    :goto_3
    const/4 p0, -0x6

    .line 56
    if-lt p1, p0, :cond_5

    .line 57
    .line 58
    if-lt p1, p2, :cond_4

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_4
    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->toFixedString(Ljava/math/BigDecimal;IZ)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_5
    :goto_4
    sub-int/2addr p2, v2

    .line 67
    invoke-static {v3, p1, p2, v0}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->toExponentialString(Ljava/math/BigDecimal;IIZ)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method
