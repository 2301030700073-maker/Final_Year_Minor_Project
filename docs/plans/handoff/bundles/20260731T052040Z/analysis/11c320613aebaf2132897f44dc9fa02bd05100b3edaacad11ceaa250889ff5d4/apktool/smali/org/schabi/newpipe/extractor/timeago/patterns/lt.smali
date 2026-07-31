.class public Lorg/schabi/newpipe/extractor/timeago/patterns/lt;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/lt;

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
    const-string v0, "sekund\u0119"

    .line 2
    .line 3
    const-string v1, "sekund\u017ei\u0173"

    .line 4
    .line 5
    const-string v2, "sekundes"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->SECONDS:[Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "minut\u0119"

    .line 14
    .line 15
    const-string v1, "minu\u010di\u0173"

    .line 16
    .line 17
    const-string v2, "minutes"

    .line 18
    .line 19
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->MINUTES:[Ljava/lang/String;

    .line 24
    .line 25
    const-string/jumbo v0, "valand\u0105"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "valand\u0173"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v2, "valandas"

    .line 32
    .line 33
    .line 34
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->HOURS:[Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "dienas"

    .line 41
    .line 42
    const-string v1, "dien\u0105"

    .line 43
    .line 44
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->DAYS:[Ljava/lang/String;

    .line 49
    .line 50
    const-string v0, "savaites"

    .line 51
    .line 52
    const-string v1, "savait\u0119"

    .line 53
    .line 54
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->WEEKS:[Ljava/lang/String;

    .line 59
    .line 60
    const-string v0, "m\u0117nesi\u0173"

    .line 61
    .line 62
    const-string v1, "m\u0117nes\u012f"

    .line 63
    .line 64
    const-string v2, "m\u0117nesius"

    .line 65
    .line 66
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->MONTHS:[Ljava/lang/String;

    .line 71
    .line 72
    const-string v0, "metus"

    .line 73
    .line 74
    const-string v1, "met\u0173"

    .line 75
    .line 76
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->YEARS:[Ljava/lang/String;

    .line 81
    .line 82
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;

    .line 83
    .line 84
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;-><init>()V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/lt;

    .line 88
    .line 89
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/lt;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/lt;

    .line 2
    .line 3
    return-object v0
.end method
