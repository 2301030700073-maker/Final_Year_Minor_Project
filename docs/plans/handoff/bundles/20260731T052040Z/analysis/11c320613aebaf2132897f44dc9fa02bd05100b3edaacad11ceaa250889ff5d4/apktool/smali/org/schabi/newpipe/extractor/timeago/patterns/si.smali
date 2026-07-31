.class public Lorg/schabi/newpipe/extractor/timeago/patterns/si;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/si;

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
    const-string/jumbo v0, "\u0dad\u0dad\u0dca\u0db4\u0dbb"

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->SECONDS:[Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v0, "\u0db8\u0dd2\u0db1\u0dd2\u0dad\u0dca\u0dad\u0dd4"

    .line 11
    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->MINUTES:[Ljava/lang/String;

    .line 18
    .line 19
    const-string/jumbo v0, "\u0db4\u0dd0\u0dba"

    .line 20
    .line 21
    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->HOURS:[Ljava/lang/String;

    .line 27
    .line 28
    const-string/jumbo v0, "\u0daf\u0dd2\u0db1"

    .line 29
    .line 30
    .line 31
    filled-new-array {v0}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->DAYS:[Ljava/lang/String;

    .line 36
    .line 37
    const-string/jumbo v0, "\u0dc3\u0dad\u0dd2"

    .line 38
    .line 39
    .line 40
    filled-new-array {v0}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->WEEKS:[Ljava/lang/String;

    .line 45
    .line 46
    const-string/jumbo v0, "\u0db8\u0dcf\u0dc3"

    .line 47
    .line 48
    .line 49
    filled-new-array {v0}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->MONTHS:[Ljava/lang/String;

    .line 54
    .line 55
    const-string/jumbo v0, "\u0dc0\u0dc3\u0dbb"

    .line 56
    .line 57
    .line 58
    filled-new-array {v0}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->YEARS:[Ljava/lang/String;

    .line 63
    .line 64
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/si;

    .line 65
    .line 66
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/si;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/si;

    .line 70
    .line 71
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/si;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/si;

    .line 2
    .line 3
    return-object v0
.end method
