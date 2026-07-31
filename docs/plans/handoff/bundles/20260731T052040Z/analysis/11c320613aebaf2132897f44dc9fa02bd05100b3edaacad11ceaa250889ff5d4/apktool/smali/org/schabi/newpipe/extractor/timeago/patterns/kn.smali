.class public Lorg/schabi/newpipe/extractor/timeago/patterns/kn;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/kn;

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
    const-string/jumbo v0, "\u0cb8\u0cc6\u0c95\u0cc6\u0c82\u0ca1\u0cc1\u0c97\u0cb3"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "\u0cb8\u0cc6\u0c95\u0cc6\u0c82\u0ca1\u0ccd"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->SECONDS:[Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v0, "\u0ca8\u0cbf\u0cae\u0cbf\u0cb7\u0c97\u0cb3"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "\u0ca8\u0cbf\u0cae\u0cbf\u0cb7\u0ca6"

    .line 17
    .line 18
    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->MINUTES:[Ljava/lang/String;

    .line 24
    .line 25
    const-string/jumbo v0, "\u0c97\u0c82\u0c9f\u0cc6\u0c97\u0cb3"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "\u0c97\u0c82\u0c9f\u0cc6\u0caf"

    .line 29
    .line 30
    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->HOURS:[Ljava/lang/String;

    .line 36
    .line 37
    const-string/jumbo v0, "\u0ca6\u0cbf\u0ca8\u0c97\u0cb3"

    .line 38
    .line 39
    .line 40
    const-string/jumbo v1, "\u0ca6\u0cbf\u0ca8\u0ca6"

    .line 41
    .line 42
    .line 43
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->DAYS:[Ljava/lang/String;

    .line 48
    .line 49
    const-string/jumbo v0, "\u0cb5\u0cbe\u0cb0\u0c97\u0cb3"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v1, "\u0cb5\u0cbe\u0cb0\u0ca6"

    .line 53
    .line 54
    .line 55
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->WEEKS:[Ljava/lang/String;

    .line 60
    .line 61
    const-string/jumbo v0, "\u0ca4\u0cbf\u0c82\u0c97\u0cb3"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v1, "\u0ca4\u0cbf\u0c82\u0c97\u0cb3\u0cc1\u0c97\u0cb3"

    .line 65
    .line 66
    .line 67
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->MONTHS:[Ljava/lang/String;

    .line 72
    .line 73
    const-string/jumbo v0, "\u0cb5\u0cb0\u0ccd\u0cb7\u0c97\u0cb3"

    .line 74
    .line 75
    .line 76
    const-string/jumbo v1, "\u0cb5\u0cb0\u0ccd\u0cb7\u0ca6"

    .line 77
    .line 78
    .line 79
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->YEARS:[Ljava/lang/String;

    .line 84
    .line 85
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;

    .line 86
    .line 87
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;-><init>()V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/kn;

    .line 91
    .line 92
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/kn;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/kn;

    .line 2
    .line 3
    return-object v0
.end method
