.class public Lorg/schabi/newpipe/extractor/timeago/patterns/sr;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sr;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string/jumbo v0, "\u0441\u0435\u043a\u0443\u043d\u0434\u0435"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->SECONDS:[Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v0, "\u043c\u0438\u043d\u0443\u0442\u0430"

    .line 14
    .line 15
    .line 16
    filled-new-array {v0}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->MINUTES:[Ljava/lang/String;

    .line 21
    .line 22
    const-string/jumbo v0, "\u0441\u0430\u0442\u0430"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v1, "\u0441\u0430\u0442\u0438"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v2, "\u0441\u0430\u0442"

    .line 29
    .line 30
    .line 31
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->HOURS:[Ljava/lang/String;

    .line 36
    .line 37
    const-string/jumbo v5, "\u041f\u0440\u0435 5 \u0434\u0430\u043d\u0430"

    .line 38
    .line 39
    .line 40
    const-string/jumbo v6, "\u041f\u0440\u0435 6 \u0434\u0430\u043d\u0430"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "\u041f\u0440\u0435 1 \u0434\u0430\u043d"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v2, "\u041f\u0440\u0435 2 \u0434\u0430\u043d\u0430"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v3, "\u041f\u0440\u0435 3 \u0434\u0430\u043d\u0430"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v4, "\u041f\u0440\u0435 4 \u0434\u0430\u043d\u0430"

    .line 53
    .line 54
    .line 55
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->DAYS:[Ljava/lang/String;

    .line 60
    .line 61
    const-string/jumbo v0, "\u043d\u0435\u0434\u0435\u0459\u0435"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v1, "\u043d\u0435\u0434\u0435\u0459\u0443"

    .line 65
    .line 66
    .line 67
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->WEEKS:[Ljava/lang/String;

    .line 72
    .line 73
    const-string/jumbo v0, "\u043c\u0435\u0441\u0435\u0446\u0430"

    .line 74
    .line 75
    .line 76
    const-string/jumbo v1, "\u043c\u0435\u0441\u0435\u0446\u0438"

    .line 77
    .line 78
    .line 79
    const-string/jumbo v2, "\u043c\u0435\u0441\u0435\u0446"

    .line 80
    .line 81
    .line 82
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->MONTHS:[Ljava/lang/String;

    .line 87
    .line 88
    const-string/jumbo v0, "\u0433\u043e\u0434\u0438\u043d\u0435"

    .line 89
    .line 90
    .line 91
    const-string/jumbo v1, "\u0433\u043e\u0434\u0438\u043d\u0443"

    .line 92
    .line 93
    .line 94
    const-string/jumbo v2, "\u0433\u043e\u0434\u0438\u043d\u0430"

    .line 95
    .line 96
    .line 97
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->YEARS:[Ljava/lang/String;

    .line 102
    .line 103
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;

    .line 104
    .line 105
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;-><init>()V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sr;

    .line 109
    .line 110
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/sr;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sr;

    .line 2
    .line 3
    return-object v0
.end method
