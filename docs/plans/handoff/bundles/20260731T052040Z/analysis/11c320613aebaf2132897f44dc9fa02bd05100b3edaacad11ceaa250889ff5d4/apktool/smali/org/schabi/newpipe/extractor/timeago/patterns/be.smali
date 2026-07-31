.class public Lorg/schabi/newpipe/extractor/timeago/patterns/be;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/be;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "\u0441\u0435\u043a\u0443\u043d\u0434\u0443"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "\u0441\u0435\u043a\u0443\u043d\u0434\u044b"

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
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->SECONDS:[Ljava/lang/String;

    .line 15
    .line 16
    const-string/jumbo v0, "\u0445\u0432\u0456\u043b\u0456\u043d\u0443"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v1, "\u0445\u0432\u0456\u043b\u0456\u043d\u044b"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v2, "\u0445\u0432\u0456\u043b\u0456\u043d"

    .line 23
    .line 24
    .line 25
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->MINUTES:[Ljava/lang/String;

    .line 30
    .line 31
    const-string/jumbo v0, "\u0433\u0430\u0434\u0437\u0456\u043d\u0443"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v1, "\u0433\u0430\u0434\u0437\u0456\u043d\u044b"

    .line 35
    .line 36
    .line 37
    const-string/jumbo v2, "\u0433\u0430\u0434\u0437\u0456\u043d"

    .line 38
    .line 39
    .line 40
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->HOURS:[Ljava/lang/String;

    .line 45
    .line 46
    const-string/jumbo v0, "\u0434\u043d\u044f"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v1, "\u0434\u043d\u0456"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v2, "\u0434\u0437\u0435\u043d\u044c"

    .line 53
    .line 54
    .line 55
    const-string/jumbo v3, "\u0434\u0437\u0451\u043d"

    .line 56
    .line 57
    .line 58
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->DAYS:[Ljava/lang/String;

    .line 63
    .line 64
    const-string/jumbo v0, "\u0442\u044b\u0434\u043d\u044f"

    .line 65
    .line 66
    .line 67
    const-string/jumbo v1, "\u0442\u044b\u0434\u043d\u0456"

    .line 68
    .line 69
    .line 70
    const-string/jumbo v2, "\u0442\u044b\u0434\u0437\u0435\u043d\u044c"

    .line 71
    .line 72
    .line 73
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->WEEKS:[Ljava/lang/String;

    .line 78
    .line 79
    const-string/jumbo v0, "\u043c\u0435\u0441\u044f\u0446\u044b"

    .line 80
    .line 81
    .line 82
    const-string/jumbo v1, "\u043c\u0435\u0441\u044f\u0446\u0430\u045e"

    .line 83
    .line 84
    .line 85
    const-string/jumbo v2, "\u043c\u0435\u0441\u044f\u0446"

    .line 86
    .line 87
    .line 88
    const-string/jumbo v3, "\u043c\u0435\u0441\u044f\u0446\u0430"

    .line 89
    .line 90
    .line 91
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->MONTHS:[Ljava/lang/String;

    .line 96
    .line 97
    const-string/jumbo v0, "\u0433\u0430\u0434\u044b"

    .line 98
    .line 99
    .line 100
    const-string/jumbo v1, "\u0433\u0430\u0434\u043e\u045e"

    .line 101
    .line 102
    .line 103
    const-string/jumbo v2, "\u0433\u043e\u0434"

    .line 104
    .line 105
    .line 106
    const-string/jumbo v3, "\u0433\u043e\u0434\u0430"

    .line 107
    .line 108
    .line 109
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->YEARS:[Ljava/lang/String;

    .line 114
    .line 115
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/be;

    .line 116
    .line 117
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/be;-><init>()V

    .line 118
    .line 119
    .line 120
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/be;

    .line 121
    .line 122
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/be;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/be;

    .line 2
    .line 3
    return-object v0
.end method
