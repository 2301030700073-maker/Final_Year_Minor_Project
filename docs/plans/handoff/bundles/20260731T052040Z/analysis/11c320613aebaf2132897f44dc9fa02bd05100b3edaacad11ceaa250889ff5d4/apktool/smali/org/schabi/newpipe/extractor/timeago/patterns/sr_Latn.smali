.class public Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;

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
    const-string v0, "sekunde"

    .line 2
    .line 3
    const-string v1, "sekundi"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->SECONDS:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "minuta"

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->MINUTES:[Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "sati"

    .line 20
    .line 21
    const-string v1, "sata"

    .line 22
    .line 23
    const-string v2, "sat"

    .line 24
    .line 25
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->HOURS:[Ljava/lang/String;

    .line 30
    .line 31
    const-string v5, "Pre 5 dana"

    .line 32
    .line 33
    const-string v6, "Pre 6 dana"

    .line 34
    .line 35
    const-string v1, "Pre 1 dan"

    .line 36
    .line 37
    const-string v2, "Pre 2 dana"

    .line 38
    .line 39
    const-string v3, "Pre 3 dana"

    .line 40
    .line 41
    const-string v4, "Pre 4 dana"

    .line 42
    .line 43
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->DAYS:[Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "nedelje"

    .line 50
    .line 51
    const-string v1, "nedelju"

    .line 52
    .line 53
    const-string v2, "nedelja"

    .line 54
    .line 55
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->WEEKS:[Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "meseci"

    .line 62
    .line 63
    const-string v1, "meseca"

    .line 64
    .line 65
    const-string v2, "mesec"

    .line 66
    .line 67
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->MONTHS:[Ljava/lang/String;

    .line 72
    .line 73
    const-string v0, "godina"

    .line 74
    .line 75
    const-string v1, "godinu"

    .line 76
    .line 77
    const-string v2, "godine"

    .line 78
    .line 79
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->YEARS:[Ljava/lang/String;

    .line 84
    .line 85
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;

    .line 86
    .line 87
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;-><init>()V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;

    .line 91
    .line 92
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;

    .line 2
    .line 3
    return-object v0
.end method
