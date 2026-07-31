.class Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/ocpsoft/prettytime/TimeFormat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ocpsoft/prettytime/i18n/Resources_ru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeFormatAided"
.end annotation


# instance fields
.field private final pluarls:[Ljava/lang/String;

.field final synthetic this$0:Lorg/ocpsoft/prettytime/i18n/Resources_ru;


# direct methods
.method public varargs constructor <init>(Lorg/ocpsoft/prettytime/i18n/Resources_ru;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->this$0:Lorg/ocpsoft/prettytime/i18n/Resources_ru;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length p1, p2

    .line 7
    const/4 v0, 0x4

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iput-object p2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->pluarls:[Ljava/lang/String;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    array-length p1, p2

    .line 16
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "Wrong plural forms number for russian language! Expected 4, got "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, "\nPlurals: "

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method


# virtual methods
.method public decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->requiresReformatting(Lorg/ocpsoft/prettytime/Duration;Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    .line 9
    .line 10
    const/16 p2, 0x32

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getQuantityRounded(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p0, v0, v1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performFormat(JZ)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performDecoration(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performDecoration(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->requiresReformatting(Lorg/ocpsoft/prettytime/Duration;Z)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object p2, p1

    .line 9
    check-cast p2, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    .line 10
    .line 11
    iget-wide v1, p2, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {p0, v1, v2, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performFormat(JZ)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performDecoration(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performDecoration(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    check-cast p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getQuantityRounded(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, v0, v1, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performFormat(JZ)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 2

    .line 1
    check-cast p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    .line 2
    .line 3
    iget-wide v0, p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, v0, v1, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performFormat(JZ)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public performDecoration(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->isInFuture()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const-string/jumbo p0, "\u0447\u0435\u0440\u0435\u0437 "

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p2}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->isInPast()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    const-string p0, " \u043d\u0430\u0437\u0430\u0434"

    .line 24
    .line 25
    invoke-static {p2, p0}, Landroidx/compose/ui/node/Owner$-CC;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    return-object p2
.end method

.method public performFormat(JZ)Ljava/lang/String;
    .locals 11

    .line 1
    const-wide/16 v0, 0xa

    .line 2
    .line 3
    rem-long v2, p1, v0

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
    rem-long v7, p1, v5

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
    const/4 v0, 0x0

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
    rem-long v2, p1, v5

    .line 36
    .line 37
    cmp-long v0, v2, v0

    .line 38
    .line 39
    if-ltz v0, :cond_1

    .line 40
    .line 41
    const-wide/16 v0, 0x14

    .line 42
    .line 43
    cmp-long v0, v2, v0

    .line 44
    .line 45
    if-ltz v0, :cond_2

    .line 46
    .line 47
    :cond_1
    const/4 v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x2

    .line 50
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 p1, 0x20

    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->pluarls:[Ljava/lang/String;

    .line 68
    .line 69
    if-eqz p3, :cond_3

    .line 70
    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    :goto_1
    aget-object p0, p0, v0

    .line 77
    .line 78
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public requiresReformatting(Lorg/ocpsoft/prettytime/Duration;Z)Z
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/16 p0, 0x32

    .line 4
    .line 5
    check-cast p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getQuantityRounded(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    check-cast p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    .line 17
    .line 18
    iget-wide p0, p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :goto_1
    const-wide/16 v0, 0x1

    .line 22
    .line 23
    cmp-long p0, p0, v0

    .line 24
    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method
