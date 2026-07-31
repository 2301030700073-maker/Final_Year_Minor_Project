.class public Lorg/schabi/newpipe/extractor/timeago/patterns/uk;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/uk;

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
    const-string/jumbo v0, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "\u0441\u0435\u043a\u0443\u043d\u0434\u0443"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "\u0441\u0435\u043a\u0443\u043d\u0434"

    .line 8
    .line 9
    .line 10
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->SECONDS:[Ljava/lang/String;

    .line 15
    .line 16
    const-string/jumbo v0, "\u0445\u0432\u0438\u043b\u0438\u043d\u0438"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v1, "\u0445\u0432\u0438\u043b\u0438\u043d\u0443"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v2, "\u0445\u0432\u0438\u043b\u0438\u043d"

    .line 23
    .line 24
    .line 25
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->MINUTES:[Ljava/lang/String;

    .line 30
    .line 31
    const-string/jumbo v0, "\u0433\u043e\u0434\u0438\u043d\u0438"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v1, "\u0433\u043e\u0434\u0438\u043d\u0443"

    .line 35
    .line 36
    .line 37
    const-string/jumbo v2, "\u0433\u043e\u0434\u0438\u043d"

    .line 38
    .line 39
    .line 40
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->HOURS:[Ljava/lang/String;

    .line 45
    .line 46
    const-string/jumbo v0, "\u0434\u043d\u0456"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v1, "\u0434\u043d\u0456\u0432"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v2, "\u0434\u0435\u043d\u044c"

    .line 53
    .line 54
    .line 55
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->DAYS:[Ljava/lang/String;

    .line 60
    .line 61
    const-string/jumbo v0, "\u0442\u0438\u0436\u0434\u0435\u043d\u044c"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v1, "\u0442\u0438\u0436\u043d\u0456"

    .line 65
    .line 66
    .line 67
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->WEEKS:[Ljava/lang/String;

    .line 72
    .line 73
    const-string/jumbo v0, "\u043c\u0456\u0441\u044f\u0446\u0456"

    .line 74
    .line 75
    .line 76
    const-string/jumbo v1, "\u043c\u0456\u0441\u044f\u0446\u0456\u0432"

    .line 77
    .line 78
    .line 79
    const-string/jumbo v2, "\u043c\u0456\u0441\u044f\u0446\u044c"

    .line 80
    .line 81
    .line 82
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->MONTHS:[Ljava/lang/String;

    .line 87
    .line 88
    const-string/jumbo v0, "\u0440\u043e\u043a\u0456\u0432"

    .line 89
    .line 90
    .line 91
    const-string/jumbo v1, "\u0440\u0456\u043a"

    .line 92
    .line 93
    .line 94
    const-string/jumbo v2, "\u0440\u043e\u043a\u0438"

    .line 95
    .line 96
    .line 97
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->YEARS:[Ljava/lang/String;

    .line 102
    .line 103
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;

    .line 104
    .line 105
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;-><init>()V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/uk;

    .line 109
    .line 110
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/uk;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/uk;

    .line 2
    .line 3
    return-object v0
.end method
