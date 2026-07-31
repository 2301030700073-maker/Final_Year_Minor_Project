.class public Lorg/schabi/newpipe/extractor/timeago/patterns/fi;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/fi;

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
    const-string v0, "sekunti"

    .line 2
    .line 3
    const-string v1, "sekuntia"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->SECONDS:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "minuutti"

    .line 12
    .line 13
    const-string v1, "minuuttia"

    .line 14
    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->MINUTES:[Ljava/lang/String;

    .line 20
    .line 21
    const-string/jumbo v0, "tunti"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v1, "tuntia"

    .line 25
    .line 26
    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->HOURS:[Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "p\u00e4iv\u00e4"

    .line 34
    .line 35
    const-string v1, "p\u00e4iv\u00e4\u00e4"

    .line 36
    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->DAYS:[Ljava/lang/String;

    .line 42
    .line 43
    const-string/jumbo v0, "viikko"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "viikkoa"

    .line 47
    .line 48
    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->WEEKS:[Ljava/lang/String;

    .line 54
    .line 55
    const-string v0, "kuukausi"

    .line 56
    .line 57
    const-string v1, "kuukautta"

    .line 58
    .line 59
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->MONTHS:[Ljava/lang/String;

    .line 64
    .line 65
    const-string/jumbo v0, "vuosi"

    .line 66
    .line 67
    .line 68
    const-string/jumbo v1, "vuotta"

    .line 69
    .line 70
    .line 71
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->YEARS:[Ljava/lang/String;

    .line 76
    .line 77
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;

    .line 78
    .line 79
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;-><init>()V

    .line 80
    .line 81
    .line 82
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/fi;

    .line 83
    .line 84
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/fi;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/fi;

    .line 2
    .line 3
    return-object v0
.end method
