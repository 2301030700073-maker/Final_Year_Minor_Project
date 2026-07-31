.class public Lorg/schabi/newpipe/extractor/timeago/patterns/sl;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sl;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "sekundami"

    .line 2
    .line 3
    const-string v1, "sekundo"

    .line 4
    .line 5
    const-string v2, "sekundama"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->SECONDS:[Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "minutami"

    .line 14
    .line 15
    const-string v1, "minuto"

    .line 16
    .line 17
    const-string v2, "minutama"

    .line 18
    .line 19
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->MINUTES:[Ljava/lang/String;

    .line 24
    .line 25
    const-string/jumbo v0, "urami"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "uro"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v2, "urama"

    .line 32
    .line 33
    .line 34
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->HOURS:[Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "dnevi"

    .line 41
    .line 42
    const-string v1, "dnevoma"

    .line 43
    .line 44
    const-string v2, "dnem"

    .line 45
    .line 46
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->DAYS:[Ljava/lang/String;

    .line 51
    .line 52
    const-string/jumbo v0, "tednom"

    .line 53
    .line 54
    .line 55
    const-string/jumbo v1, "tednoma"

    .line 56
    .line 57
    .line 58
    const-string/jumbo v2, "tedni"

    .line 59
    .line 60
    .line 61
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->WEEKS:[Ljava/lang/String;

    .line 66
    .line 67
    const-string v0, "mesecema"

    .line 68
    .line 69
    const-string v1, "meseci"

    .line 70
    .line 71
    const-string v2, "mesecem"

    .line 72
    .line 73
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->MONTHS:[Ljava/lang/String;

    .line 78
    .line 79
    const-string v0, "letom"

    .line 80
    .line 81
    const-string v1, "letoma"

    .line 82
    .line 83
    const-string v2, "leti"

    .line 84
    .line 85
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->YEARS:[Ljava/lang/String;

    .line 90
    .line 91
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;

    .line 92
    .line 93
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;-><init>()V

    .line 94
    .line 95
    .line 96
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sl;

    .line 97
    .line 98
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->YEARS:[Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, " "

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/sl;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sl;

    .line 2
    .line 3
    return-object v0
.end method
