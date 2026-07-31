.class public Lorg/schabi/newpipe/extractor/timeago/patterns/pl;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pl;

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
    const-string v0, "sekundy"

    .line 2
    .line 3
    const-string v1, "sekund\u0119"

    .line 4
    .line 5
    const-string v2, "sekund"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->SECONDS:[Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "minuty"

    .line 14
    .line 15
    const-string v1, "minut\u0119"

    .line 16
    .line 17
    const-string v2, "minut"

    .line 18
    .line 19
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->MINUTES:[Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "godziny"

    .line 26
    .line 27
    const-string v1, "godzin\u0119"

    .line 28
    .line 29
    const-string v2, "godzin"

    .line 30
    .line 31
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->HOURS:[Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "dni"

    .line 38
    .line 39
    const-string v1, "dzie\u0144"

    .line 40
    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->DAYS:[Ljava/lang/String;

    .line 46
    .line 47
    const-string/jumbo v0, "tydzie\u0144"

    .line 48
    .line 49
    .line 50
    const-string/jumbo v1, "tygodnie"

    .line 51
    .line 52
    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->WEEKS:[Ljava/lang/String;

    .line 58
    .line 59
    const-string v0, "miesi\u0105ce"

    .line 60
    .line 61
    const-string v1, "miesi\u0119cy"

    .line 62
    .line 63
    const-string v2, "miesi\u0105c"

    .line 64
    .line 65
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->MONTHS:[Ljava/lang/String;

    .line 70
    .line 71
    const-string v0, "lata"

    .line 72
    .line 73
    const-string v1, "rok"

    .line 74
    .line 75
    const-string v2, "lat"

    .line 76
    .line 77
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->YEARS:[Ljava/lang/String;

    .line 82
    .line 83
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;

    .line 84
    .line 85
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;-><init>()V

    .line 86
    .line 87
    .line 88
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pl;

    .line 89
    .line 90
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/pl;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pl;

    .line 2
    .line 3
    return-object v0
.end method
