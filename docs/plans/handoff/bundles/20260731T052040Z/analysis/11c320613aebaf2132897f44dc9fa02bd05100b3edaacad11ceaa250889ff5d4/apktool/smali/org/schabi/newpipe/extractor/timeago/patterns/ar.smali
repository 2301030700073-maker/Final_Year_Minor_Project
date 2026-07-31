.class public Lorg/schabi/newpipe/extractor/timeago/patterns/ar;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ar;

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
    const-string/jumbo v0, "\u062b\u0627\u0646\u064a\u062a\u064a\u0646"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "\u062b\u0648\u0627\u0646\u064d"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "\u062b\u0627\u0646\u064a\u0629"

    .line 8
    .line 9
    .line 10
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->SECONDS:[Ljava/lang/String;

    .line 15
    .line 16
    const-string/jumbo v0, "\u062f\u0642\u064a\u0642\u0629"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v1, "\u062f\u0642\u064a\u0642\u062a\u064a\u0646"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v2, "\u062f\u0642\u0627\u0626\u0642"

    .line 23
    .line 24
    .line 25
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->MINUTES:[Ljava/lang/String;

    .line 30
    .line 31
    const-string/jumbo v0, "\u0633\u0627\u0639\u0629"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v1, "\u0633\u0627\u0639\u062a\u064a\u0646"

    .line 35
    .line 36
    .line 37
    const-string/jumbo v2, "\u0633\u0627\u0639\u0627\u062a"

    .line 38
    .line 39
    .line 40
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->HOURS:[Ljava/lang/String;

    .line 45
    .line 46
    const-string/jumbo v0, "\u064a\u0648\u0645"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v1, "\u064a\u0648\u0645\u064a\u0646"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v2, "\u0623\u064a\u0627\u0645"

    .line 53
    .line 54
    .line 55
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->DAYS:[Ljava/lang/String;

    .line 60
    .line 61
    const-string/jumbo v0, "\u0623\u0633\u0628\u0648\u0639"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v1, "\u0623\u0633\u0628\u0648\u0639\u064a\u0646"

    .line 65
    .line 66
    .line 67
    const-string/jumbo v2, "\u0623\u0633\u0627\u0628\u064a\u0639"

    .line 68
    .line 69
    .line 70
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->WEEKS:[Ljava/lang/String;

    .line 75
    .line 76
    const-string/jumbo v0, "\u0634\u0647\u0631\u064a\u0646"

    .line 77
    .line 78
    .line 79
    const-string/jumbo v1, "\u0634\u0647\u0631\u064b\u0627"

    .line 80
    .line 81
    .line 82
    const-string/jumbo v2, "\u0623\u0634\u0647\u0631"

    .line 83
    .line 84
    .line 85
    const-string/jumbo v3, "\u0634\u0647\u0631"

    .line 86
    .line 87
    .line 88
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->MONTHS:[Ljava/lang/String;

    .line 93
    .line 94
    const-string/jumbo v0, "\u0633\u0646\u062a\u064a\u0646"

    .line 95
    .line 96
    .line 97
    const-string/jumbo v1, "\u0633\u0646\u0648\u0627\u062a"

    .line 98
    .line 99
    .line 100
    const-string/jumbo v2, "\u0633\u0646\u0629"

    .line 101
    .line 102
    .line 103
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->YEARS:[Ljava/lang/String;

    .line 108
    .line 109
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;

    .line 110
    .line 111
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;-><init>()V

    .line 112
    .line 113
    .line 114
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ar;

    .line 115
    .line 116
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/ar;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ar;

    .line 2
    .line 3
    return-object v0
.end method
