.class public Lorg/schabi/newpipe/extractor/timeago/patterns/sk;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sk;

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
    const-string v0, "sekundami"

    .line 2
    .line 3
    const-string v1, "sekundou"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->SECONDS:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "min\u00fatami"

    .line 12
    .line 13
    const-string v1, "min\u00fatou"

    .line 14
    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->MINUTES:[Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "hodinami"

    .line 22
    .line 23
    const-string v1, "hodinou"

    .line 24
    .line 25
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->HOURS:[Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "d\u0148ami"

    .line 32
    .line 33
    const-string v1, "d\u0148om"

    .line 34
    .line 35
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->DAYS:[Ljava/lang/String;

    .line 40
    .line 41
    const-string/jumbo v0, "t\u00fd\u017ed\u0148ami"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v1, "t\u00fd\u017ed\u0148om"

    .line 45
    .line 46
    .line 47
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->WEEKS:[Ljava/lang/String;

    .line 52
    .line 53
    const-string v0, "mesiacmi"

    .line 54
    .line 55
    const-string v1, "mesiacom"

    .line 56
    .line 57
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->MONTHS:[Ljava/lang/String;

    .line 62
    .line 63
    const-string v0, "rokmi"

    .line 64
    .line 65
    const-string v1, "rokom"

    .line 66
    .line 67
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->YEARS:[Ljava/lang/String;

    .line 72
    .line 73
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;

    .line 74
    .line 75
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;-><init>()V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sk;

    .line 79
    .line 80
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/sk;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sk;

    .line 2
    .line 3
    return-object v0
.end method
