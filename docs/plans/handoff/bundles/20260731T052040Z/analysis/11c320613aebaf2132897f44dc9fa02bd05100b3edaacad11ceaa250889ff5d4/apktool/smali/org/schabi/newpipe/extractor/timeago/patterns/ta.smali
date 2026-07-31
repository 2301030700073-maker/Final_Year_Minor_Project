.class public Lorg/schabi/newpipe/extractor/timeago/patterns/ta;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ta;

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
    const-string/jumbo v0, "\u0bb5\u0bbf\u0ba9\u0bbe\u0b9f\u0bbf"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "\u0bb5\u0bbf\u0ba9\u0bbe\u0b9f\u0bbf\u0b95\u0bb3\u0bc1\u0b95\u0bcd\u0b95\u0bc1"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->SECONDS:[Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v0, "\u0ba8\u0bbf\u0bae\u0bbf\u0b9f\u0b99\u0bcd\u0b95\u0bb3\u0bcd"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "\u0ba8\u0bbf\u0bae\u0bbf\u0b9f\u0bae\u0bcd"

    .line 17
    .line 18
    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->MINUTES:[Ljava/lang/String;

    .line 24
    .line 25
    const-string/jumbo v0, "\u0bae\u0ba3\u0bbf\u0ba8\u0bc7\u0bb0\u0ba4\u0bcd\u0ba4\u0bbf\u0bb1\u0bcd\u0b95\u0bc1"

    .line 26
    .line 27
    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->HOURS:[Ljava/lang/String;

    .line 33
    .line 34
    const-string/jumbo v0, "\u0ba8\u0bbe\u0b9f\u0bcd\u0b95\u0bb3\u0bc1\u0b95\u0bcd\u0b95\u0bc1"

    .line 35
    .line 36
    .line 37
    const-string/jumbo v1, "\u0ba8\u0bbe\u0bb3\u0bc1\u0b95\u0bcd\u0b95\u0bc1"

    .line 38
    .line 39
    .line 40
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->DAYS:[Ljava/lang/String;

    .line 45
    .line 46
    const-string/jumbo v0, "\u0bb5\u0bbe\u0bb0\u0b99\u0bcd\u0b95\u0bb3\u0bc1\u0b95\u0bcd\u0b95\u0bc1"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v1, "\u0bb5\u0bbe\u0bb0\u0bae\u0bcd"

    .line 50
    .line 51
    .line 52
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->WEEKS:[Ljava/lang/String;

    .line 57
    .line 58
    const-string/jumbo v0, "\u0bae\u0bbe\u0ba4\u0b99\u0bcd\u0b95\u0bb3\u0bcd"

    .line 59
    .line 60
    .line 61
    const-string/jumbo v1, "\u0bae\u0bbe\u0ba4\u0bae\u0bcd"

    .line 62
    .line 63
    .line 64
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->MONTHS:[Ljava/lang/String;

    .line 69
    .line 70
    const-string/jumbo v0, "\u0b86\u0ba3\u0bcd\u0b9f\u0bc1"

    .line 71
    .line 72
    .line 73
    const-string/jumbo v1, "\u0b86\u0ba3\u0bcd\u0b9f\u0bc1\u0b95\u0bb3\u0bc1\u0b95\u0bcd\u0b95\u0bc1"

    .line 74
    .line 75
    .line 76
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->YEARS:[Ljava/lang/String;

    .line 81
    .line 82
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;

    .line 83
    .line 84
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;-><init>()V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ta;

    .line 88
    .line 89
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/ta;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ta;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ta;

    .line 2
    .line 3
    return-object v0
.end method
