.class public Lorg/schabi/newpipe/extractor/timeago/patterns/no;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/no;

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
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->SECONDS:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "minutt"

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
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->MINUTES:[Ljava/lang/String;

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
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->HOURS:[Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "dag"

    .line 34
    .line 35
    const-string v1, "dager"

    .line 36
    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->DAYS:[Ljava/lang/String;

    .line 42
    .line 43
    const-string/jumbo v0, "uke"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "uker"

    .line 47
    .line 48
    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->WEEKS:[Ljava/lang/String;

    .line 54
    .line 55
    const-string v0, "md."

    .line 56
    .line 57
    filled-new-array {v0}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->MONTHS:[Ljava/lang/String;

    .line 62
    .line 63
    const-string/jumbo v0, "\u00e5r"

    .line 64
    .line 65
    .line 66
    filled-new-array {v0}, [Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->YEARS:[Ljava/lang/String;

    .line 71
    .line 72
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/no;

    .line 73
    .line 74
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/no;-><init>()V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/no;

    .line 78
    .line 79
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/no;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/no;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/no;

    .line 2
    .line 3
    return-object v0
.end method
