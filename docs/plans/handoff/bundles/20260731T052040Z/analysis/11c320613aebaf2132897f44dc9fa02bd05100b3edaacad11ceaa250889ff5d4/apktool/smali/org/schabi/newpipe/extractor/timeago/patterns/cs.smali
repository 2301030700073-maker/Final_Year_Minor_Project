.class public Lorg/schabi/newpipe/extractor/timeago/patterns/cs;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/cs;

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
    const-string v1, "sekundou"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->SECONDS:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "minutami"

    .line 12
    .line 13
    const-string v1, "minutou"

    .line 14
    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->MINUTES:[Ljava/lang/String;

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
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->HOURS:[Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "dny"

    .line 32
    .line 33
    const-string/jumbo v1, "v\u010dera"

    .line 34
    .line 35
    .line 36
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->DAYS:[Ljava/lang/String;

    .line 41
    .line 42
    const-string/jumbo v0, "t\u00fddnem"

    .line 43
    .line 44
    .line 45
    const-string/jumbo v1, "t\u00fddny"

    .line 46
    .line 47
    .line 48
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->WEEKS:[Ljava/lang/String;

    .line 53
    .line 54
    const-string v0, "m\u011bs\u00edcem"

    .line 55
    .line 56
    const-string v1, "m\u011bs\u00edci"

    .line 57
    .line 58
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->MONTHS:[Ljava/lang/String;

    .line 63
    .line 64
    const-string v0, "roky"

    .line 65
    .line 66
    const-string v1, "lety"

    .line 67
    .line 68
    const-string v2, "rokem"

    .line 69
    .line 70
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->YEARS:[Ljava/lang/String;

    .line 75
    .line 76
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;

    .line 77
    .line 78
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;-><init>()V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/cs;

    .line 82
    .line 83
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/cs;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/cs;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/cs;

    .line 2
    .line 3
    return-object v0
.end method
