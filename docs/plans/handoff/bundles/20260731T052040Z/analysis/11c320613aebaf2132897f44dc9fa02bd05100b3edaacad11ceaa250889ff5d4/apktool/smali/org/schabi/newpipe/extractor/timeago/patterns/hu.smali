.class public Lorg/schabi/newpipe/extractor/timeago/patterns/hu;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/hu;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "m\u00e1sodperce"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->SECONDS:[Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "perce"

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->MINUTES:[Ljava/lang/String;

    .line 16
    .line 17
    const-string/jumbo v0, "\u00f3r\u00e1ja"

    .line 18
    .line 19
    .line 20
    filled-new-array {v0}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->HOURS:[Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "napja"

    .line 27
    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->DAYS:[Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "hete"

    .line 35
    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->WEEKS:[Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "h\u00f3napja"

    .line 43
    .line 44
    filled-new-array {v0}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->MONTHS:[Ljava/lang/String;

    .line 49
    .line 50
    const-string/jumbo v0, "\u00e9ve"

    .line 51
    .line 52
    .line 53
    filled-new-array {v0}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->YEARS:[Ljava/lang/String;

    .line 58
    .line 59
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;

    .line 60
    .line 61
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;-><init>()V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/hu;

    .line 65
    .line 66
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/hu;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hu;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/hu;

    .line 2
    .line 3
    return-object v0
.end method
