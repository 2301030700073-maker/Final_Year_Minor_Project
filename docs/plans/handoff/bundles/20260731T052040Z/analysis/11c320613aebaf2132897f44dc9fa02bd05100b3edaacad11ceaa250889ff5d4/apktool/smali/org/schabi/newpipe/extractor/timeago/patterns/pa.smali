.class public Lorg/schabi/newpipe/extractor/timeago/patterns/pa;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pa;

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
    const-string/jumbo v0, "\u0a38\u0a15\u0a3f\u0a70\u0a1f"

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->SECONDS:[Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v0, "\u0a2e\u0a3f\u0a70\u0a1f"

    .line 11
    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->MINUTES:[Ljava/lang/String;

    .line 18
    .line 19
    const-string/jumbo v0, "\u0a18\u0a70\u0a1f\u0a3e"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "\u0a18\u0a70\u0a1f\u0a47"

    .line 23
    .line 24
    .line 25
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->HOURS:[Ljava/lang/String;

    .line 30
    .line 31
    const-string/jumbo v0, "\u0a26\u0a3f\u0a28"

    .line 32
    .line 33
    .line 34
    filled-new-array {v0}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->DAYS:[Ljava/lang/String;

    .line 39
    .line 40
    const-string/jumbo v0, "\u0a39\u0a2b\u0a3c\u0a24\u0a3e"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "\u0a39\u0a2b\u0a3c\u0a24\u0a47"

    .line 44
    .line 45
    .line 46
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->WEEKS:[Ljava/lang/String;

    .line 51
    .line 52
    const-string/jumbo v0, "\u0a2e\u0a39\u0a40\u0a28\u0a3e"

    .line 53
    .line 54
    .line 55
    const-string/jumbo v1, "\u0a2e\u0a39\u0a40\u0a28\u0a47"

    .line 56
    .line 57
    .line 58
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->MONTHS:[Ljava/lang/String;

    .line 63
    .line 64
    const-string/jumbo v0, "\u0a38\u0a3e\u0a32"

    .line 65
    .line 66
    .line 67
    filled-new-array {v0}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->YEARS:[Ljava/lang/String;

    .line 72
    .line 73
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;

    .line 74
    .line 75
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;-><init>()V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pa;

    .line 79
    .line 80
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/pa;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pa;

    .line 2
    .line 3
    return-object v0
.end method
