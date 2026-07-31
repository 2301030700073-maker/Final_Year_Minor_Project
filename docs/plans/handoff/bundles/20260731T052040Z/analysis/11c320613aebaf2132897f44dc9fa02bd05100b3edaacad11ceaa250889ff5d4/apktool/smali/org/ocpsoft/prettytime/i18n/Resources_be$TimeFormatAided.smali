.class Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/ocpsoft/prettytime/TimeFormat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ocpsoft/prettytime/i18n/Resources_be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeFormatAided"
.end annotation


# instance fields
.field private final pluarls:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;->pluarls:[Ljava/lang/String;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "Wrong plural forms number for slavic language!"

    .line 12
    .line 13
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method

.method private performDecoration(ZZJLjava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const-wide/16 v0, 0xa

    .line 2
    .line 3
    rem-long v2, p3, v0

    .line 4
    .line 5
    const-wide/16 v4, 0x1

    .line 6
    .line 7
    cmp-long v4, v2, v4

    .line 8
    .line 9
    const-wide/16 v5, 0x64

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    rem-long v7, p3, v5

    .line 14
    .line 15
    const-wide/16 v9, 0xb

    .line 16
    .line 17
    cmp-long v4, v7, v9

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-wide/16 v7, 0x2

    .line 24
    .line 25
    cmp-long v4, v2, v7

    .line 26
    .line 27
    if-ltz v4, :cond_2

    .line 28
    .line 29
    const-wide/16 v7, 0x4

    .line 30
    .line 31
    cmp-long v2, v2, v7

    .line 32
    .line 33
    if-gtz v2, :cond_2

    .line 34
    .line 35
    rem-long/2addr p3, v5

    .line 36
    cmp-long v0, p3, v0

    .line 37
    .line 38
    if-ltz v0, :cond_1

    .line 39
    .line 40
    const-wide/16 v0, 0x14

    .line 41
    .line 42
    cmp-long p3, p3, v0

    .line 43
    .line 44
    if-ltz p3, :cond_2

    .line 45
    .line 46
    :cond_1
    const/4 p3, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 p3, 0x2

    .line 49
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    const-string/jumbo p2, "\u043f\u0440\u0430\u0437 "

    .line 57
    .line 58
    .line 59
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_3
    move-object/from16 p2, p5

    .line 63
    .line 64
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/16 p2, 0x20

    .line 68
    .line 69
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;->pluarls:[Ljava/lang/String;

    .line 73
    .line 74
    aget-object p0, p0, p3

    .line 75
    .line 76
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    const-string p0, " \u0442\u0430\u043c\u0443"

    .line 82
    .line 83
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method


# virtual methods
.method public decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    check-cast p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->isInPast()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->isInFuture()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v0, 0x32

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getQuantityRounded(I)J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    move-object v0, p0

    .line 18
    move-object v5, p2

    .line 19
    invoke-direct/range {v0 .. v5}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;->performDecoration(ZZJLjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    check-cast p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->isInPast()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->isInFuture()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-wide v3, p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    move-object v5, p2

    .line 15
    invoke-direct/range {v0 .. v5}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;->performDecoration(ZZJLjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 0

    .line 1
    const/16 p0, 0x32

    .line 2
    .line 3
    check-cast p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getQuantityRounded(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    .line 2
    .line 3
    iget-wide p0, p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    .line 4
    .line 5
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
