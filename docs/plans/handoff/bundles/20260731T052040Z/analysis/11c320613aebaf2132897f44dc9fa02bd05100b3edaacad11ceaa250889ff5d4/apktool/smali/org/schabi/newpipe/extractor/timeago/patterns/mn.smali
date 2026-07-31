.class public Lorg/schabi/newpipe/extractor/timeago/patterns/mn;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/mn;

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
    const-string/jumbo v0, "\u0441\u0435\u043a\u0443\u043d\u0434\u044b\u043d"

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->SECONDS:[Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v0, "\u043c\u0438\u043d\u0443\u0442\u044b\u043d"

    .line 11
    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->MINUTES:[Ljava/lang/String;

    .line 18
    .line 19
    const-string/jumbo v0, "\u0446\u0430\u0433\u0438\u0439\u043d"

    .line 20
    .line 21
    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->HOURS:[Ljava/lang/String;

    .line 27
    .line 28
    const-string/jumbo v0, "\u04e9\u0434\u0440\u0438\u0439\u043d"

    .line 29
    .line 30
    .line 31
    filled-new-array {v0}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->DAYS:[Ljava/lang/String;

    .line 36
    .line 37
    const-string/jumbo v0, "\u0434\u043e\u043b\u043e\u043e"

    .line 38
    .line 39
    .line 40
    const-string/jumbo v1, "\u0445\u043e\u043d\u043e\u0433\u0438\u0439\u043d"

    .line 41
    .line 42
    .line 43
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->WEEKS:[Ljava/lang/String;

    .line 48
    .line 49
    const-string/jumbo v0, "\u0441\u0430\u0440\u044b\u043d"

    .line 50
    .line 51
    .line 52
    filled-new-array {v0}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->MONTHS:[Ljava/lang/String;

    .line 57
    .line 58
    const-string/jumbo v0, "\u0436\u0438\u043b\u0438\u0439\u043d"

    .line 59
    .line 60
    .line 61
    filled-new-array {v0}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->YEARS:[Ljava/lang/String;

    .line 66
    .line 67
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;

    .line 68
    .line 69
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;-><init>()V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/mn;

    .line 73
    .line 74
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/mn;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mn;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/mn;

    .line 2
    .line 3
    return-object v0
.end method
