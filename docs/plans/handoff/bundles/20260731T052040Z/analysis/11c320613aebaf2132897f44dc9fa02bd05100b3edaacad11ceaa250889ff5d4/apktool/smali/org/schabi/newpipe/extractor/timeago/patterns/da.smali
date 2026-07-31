.class public Lorg/schabi/newpipe/extractor/timeago/patterns/da;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/da;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "sekund"

    .line 2
    .line 3
    const-string v1, "sekunder"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->SECONDS:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "minut"

    .line 12
    .line 13
    const-string v1, "minutter"

    .line 14
    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->MINUTES:[Ljava/lang/String;

    .line 20
    .line 21
    const-string/jumbo v0, "time"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v1, "timer"

    .line 25
    .line 26
    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->HOURS:[Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "dag"

    .line 34
    .line 35
    const-string v1, "dage"

    .line 36
    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->DAYS:[Ljava/lang/String;

    .line 42
    .line 43
    const-string/jumbo v0, "uge"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "uger"

    .line 47
    .line 48
    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->WEEKS:[Ljava/lang/String;

    .line 54
    .line 55
    const-string v0, "m\u00e5ned"

    .line 56
    .line 57
    const-string v1, "m\u00e5neder"

    .line 58
    .line 59
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->MONTHS:[Ljava/lang/String;

    .line 64
    .line 65
    const-string/jumbo v0, "\u00e5r"

    .line 66
    .line 67
    .line 68
    filled-new-array {v0}, [Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->YEARS:[Ljava/lang/String;

    .line 73
    .line 74
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/da;

    .line 75
    .line 76
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/da;-><init>()V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/da;

    .line 80
    .line 81
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/da;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/da;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/da;

    .line 2
    .line 3
    return-object v0
.end method
