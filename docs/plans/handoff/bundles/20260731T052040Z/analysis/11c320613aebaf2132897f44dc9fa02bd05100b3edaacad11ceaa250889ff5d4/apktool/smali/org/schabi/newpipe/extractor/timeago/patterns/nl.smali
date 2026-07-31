.class public Lorg/schabi/newpipe/extractor/timeago/patterns/nl;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/nl;

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
    const-string v0, "seconde"

    .line 2
    .line 3
    const-string v1, "seconden"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->SECONDS:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "minuten"

    .line 12
    .line 13
    const-string v1, "minuut"

    .line 14
    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->MINUTES:[Ljava/lang/String;

    .line 20
    .line 21
    const-string/jumbo v0, "uur"

    .line 22
    .line 23
    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->HOURS:[Ljava/lang/String;

    .line 29
    .line 30
    const-string v0, "dag"

    .line 31
    .line 32
    const-string v1, "dagen"

    .line 33
    .line 34
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->DAYS:[Ljava/lang/String;

    .line 39
    .line 40
    const-string/jumbo v0, "week"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "weken"

    .line 44
    .line 45
    .line 46
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->WEEKS:[Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "maand"

    .line 53
    .line 54
    const-string v1, "maanden"

    .line 55
    .line 56
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->MONTHS:[Ljava/lang/String;

    .line 61
    .line 62
    const-string v0, "jaar"

    .line 63
    .line 64
    filled-new-array {v0}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->YEARS:[Ljava/lang/String;

    .line 69
    .line 70
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;

    .line 71
    .line 72
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;-><init>()V

    .line 73
    .line 74
    .line 75
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/nl;

    .line 76
    .line 77
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/nl;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/nl;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/nl;

    .line 2
    .line 3
    return-object v0
.end method
