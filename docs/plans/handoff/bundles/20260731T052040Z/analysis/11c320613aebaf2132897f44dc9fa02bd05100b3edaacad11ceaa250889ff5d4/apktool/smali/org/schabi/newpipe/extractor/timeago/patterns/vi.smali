.class public Lorg/schabi/newpipe/extractor/timeago/patterns/vi;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/vi;

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
    const-string v0, "gi\u00e2y"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->SECONDS:[Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "ph\u00fat"

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->MINUTES:[Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "gi\u1edd"

    .line 18
    .line 19
    const-string/jumbo v1, "ti\u1ebfng"

    .line 20
    .line 21
    .line 22
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->HOURS:[Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "ng\u00e0y"

    .line 29
    .line 30
    filled-new-array {v0}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->DAYS:[Ljava/lang/String;

    .line 35
    .line 36
    const-string/jumbo v0, "tu\u1ea7n"

    .line 37
    .line 38
    .line 39
    filled-new-array {v0}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->WEEKS:[Ljava/lang/String;

    .line 44
    .line 45
    const-string/jumbo v0, "th\u00e1ng"

    .line 46
    .line 47
    .line 48
    filled-new-array {v0}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->MONTHS:[Ljava/lang/String;

    .line 53
    .line 54
    const-string v0, "n\u0103m"

    .line 55
    .line 56
    filled-new-array {v0}, [Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->YEARS:[Ljava/lang/String;

    .line 61
    .line 62
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;

    .line 63
    .line 64
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;-><init>()V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/vi;

    .line 68
    .line 69
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/vi;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/vi;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/vi;

    .line 2
    .line 3
    return-object v0
.end method
