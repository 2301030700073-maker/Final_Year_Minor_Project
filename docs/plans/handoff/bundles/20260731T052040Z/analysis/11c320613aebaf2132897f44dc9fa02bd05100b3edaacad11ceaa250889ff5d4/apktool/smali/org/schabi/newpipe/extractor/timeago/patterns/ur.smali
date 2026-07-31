.class public Lorg/schabi/newpipe/extractor/timeago/patterns/ur;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ur;

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
    const-string/jumbo v0, "\u0633\u06cc\u06a9\u0646\u0688"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "\u0633\u06cc\u06a9\u0646\u0688\u0632"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->SECONDS:[Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v0, "\u0645\u0646\u0679"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "\u0645\u0646\u0679\u0633"

    .line 17
    .line 18
    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->MINUTES:[Ljava/lang/String;

    .line 24
    .line 25
    const-string/jumbo v0, "\u06af\u06be\u0646\u0679\u06c1"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "\u06af\u06be\u0646\u0679\u06d2"

    .line 29
    .line 30
    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->HOURS:[Ljava/lang/String;

    .line 36
    .line 37
    const-string/jumbo v0, "\u062f\u0646"

    .line 38
    .line 39
    .line 40
    filled-new-array {v0}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->DAYS:[Ljava/lang/String;

    .line 45
    .line 46
    const-string/jumbo v0, "\u06c1\u0641\u062a\u06c1"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v1, "\u06c1\u0641\u062a\u06d2"

    .line 50
    .line 51
    .line 52
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->WEEKS:[Ljava/lang/String;

    .line 57
    .line 58
    const-string/jumbo v0, "\u0645\u0627\u06c1"

    .line 59
    .line 60
    .line 61
    filled-new-array {v0}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->MONTHS:[Ljava/lang/String;

    .line 66
    .line 67
    const-string/jumbo v0, "\u0633\u0627\u0644"

    .line 68
    .line 69
    .line 70
    filled-new-array {v0}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->YEARS:[Ljava/lang/String;

    .line 75
    .line 76
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;

    .line 77
    .line 78
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;-><init>()V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ur;

    .line 82
    .line 83
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/ur;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ur;

    .line 2
    .line 3
    return-object v0
.end method
