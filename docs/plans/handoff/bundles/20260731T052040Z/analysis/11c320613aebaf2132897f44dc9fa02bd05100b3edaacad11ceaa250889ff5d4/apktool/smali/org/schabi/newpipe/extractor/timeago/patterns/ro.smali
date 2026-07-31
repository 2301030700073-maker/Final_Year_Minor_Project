.class public Lorg/schabi/newpipe/extractor/timeago/patterns/ro;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ro;

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
    const-string v0, "secunde"

    .line 2
    .line 3
    const-string v1, "secund\u0103"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->SECONDS:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "minut"

    .line 12
    .line 13
    const-string v1, "minute"

    .line 14
    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->MINUTES:[Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "ore"

    .line 22
    .line 23
    const-string v1, "or\u0103"

    .line 24
    .line 25
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->HOURS:[Ljava/lang/String;

    .line 30
    .line 31
    const-string/jumbo v0, "zi"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v1, "zile"

    .line 35
    .line 36
    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->DAYS:[Ljava/lang/String;

    .line 42
    .line 43
    const-string/jumbo v0, "s\u0103pt\u0103m\u00e2ni"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "s\u0103pt\u0103m\u00e2n\u0103"

    .line 47
    .line 48
    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->WEEKS:[Ljava/lang/String;

    .line 54
    .line 55
    const-string v0, "luni"

    .line 56
    .line 57
    const-string v1, "lun\u0103"

    .line 58
    .line 59
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->MONTHS:[Ljava/lang/String;

    .line 64
    .line 65
    const-string v0, "an"

    .line 66
    .line 67
    const-string v1, "ani"

    .line 68
    .line 69
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->YEARS:[Ljava/lang/String;

    .line 74
    .line 75
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;

    .line 76
    .line 77
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;-><init>()V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ro;

    .line 81
    .line 82
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/ro;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ro;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ro;

    .line 2
    .line 3
    return-object v0
.end method
