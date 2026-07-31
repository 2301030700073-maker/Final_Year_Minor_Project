.class public final Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;
.super Lcom/android/tools/r8/RecordTag;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final locale:Ljava/util/Locale;

.field public final pitch:Ljava/text/DecimalFormat;

.field public final speed:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Ljava/text/DecimalFormat;Ljava/text/DecimalFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->locale:Ljava/util/Locale;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->speed:Ljava/text/DecimalFormat;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->pitch:Ljava/text/DecimalFormat;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->locale:Ljava/util/Locale;

    .line 8
    .line 9
    iget-object v1, p1, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->locale:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->speed:Ljava/text/DecimalFormat;

    .line 18
    .line 19
    iget-object v1, p1, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->speed:Ljava/text/DecimalFormat;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->pitch:Ljava/text/DecimalFormat;

    .line 28
    .line 29
    iget-object p1, p1, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->pitch:Ljava/text/DecimalFormat;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->locale:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->speed:Ljava/text/DecimalFormat;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->pitch:Ljava/text/DecimalFormat;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/2addr p0, v1

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->locale:Ljava/util/Locale;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iget-object v3, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->speed:Ljava/text/DecimalFormat;

    .line 11
    .line 12
    aput-object v3, v0, v2

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->pitch:Ljava/text/DecimalFormat;

    .line 16
    .line 17
    aput-object p0, v0, v3

    .line 18
    .line 19
    const-string p0, "locale;speed;pitch"

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    new-array p0, v1, [Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v3, ";"

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-class v4, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v4, "["

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :goto_1
    array-length v4, p0

    .line 56
    if-ge v1, v4, :cond_2

    .line 57
    .line 58
    aget-object v4, p0, v1

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, "="

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    aget-object v4, v0, v1

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    array-length v4, p0

    .line 74
    sub-int/2addr v4, v2

    .line 75
    if-eq v1, v4, :cond_1

    .line 76
    .line 77
    const-string v4, ", "

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const-string p0, "]"

    .line 86
    .line 87
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method
