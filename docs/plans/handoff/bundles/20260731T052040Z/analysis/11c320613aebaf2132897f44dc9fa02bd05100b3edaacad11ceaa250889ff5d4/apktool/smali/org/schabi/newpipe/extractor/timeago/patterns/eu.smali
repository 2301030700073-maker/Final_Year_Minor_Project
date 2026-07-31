.class public Lorg/schabi/newpipe/extractor/timeago/patterns/eu;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/eu;

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
    const-string v0, "segundo"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->SECONDS:[Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "minutu"

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->MINUTES:[Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "ordu"

    .line 18
    .line 19
    const-string v1, "ordubete"

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->HOURS:[Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "egun"

    .line 28
    .line 29
    filled-new-array {v0}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->DAYS:[Ljava/lang/String;

    .line 34
    .line 35
    const-string v0, "aste"

    .line 36
    .line 37
    const-string v1, "astebete"

    .line 38
    .line 39
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->WEEKS:[Ljava/lang/String;

    .line 44
    .line 45
    const-string v0, "hilabete"

    .line 46
    .line 47
    filled-new-array {v0}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->MONTHS:[Ljava/lang/String;

    .line 52
    .line 53
    const-string/jumbo v0, "urte"

    .line 54
    .line 55
    .line 56
    const-string/jumbo v1, "urtebete"

    .line 57
    .line 58
    .line 59
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->YEARS:[Ljava/lang/String;

    .line 64
    .line 65
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;

    .line 66
    .line 67
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;-><init>()V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/eu;

    .line 71
    .line 72
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->YEARS:[Ljava/lang/String;

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/eu;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/eu;

    .line 2
    .line 3
    return-object v0
.end method
