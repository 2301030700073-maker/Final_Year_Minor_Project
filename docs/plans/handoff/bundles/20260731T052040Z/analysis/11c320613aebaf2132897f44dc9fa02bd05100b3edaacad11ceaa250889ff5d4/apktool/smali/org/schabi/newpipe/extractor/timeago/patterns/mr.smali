.class public Lorg/schabi/newpipe/extractor/timeago/patterns/mr;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/mr;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = ""

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "\u0938\u0947\u0915\u0902\u0926\u093e\u0902\u092a\u0942\u0930\u094d\u0935\u0940"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "\u0938\u0947\u0915\u0902\u0926\u093e\u092a\u0942\u0930\u094d\u0935\u0940"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->SECONDS:[Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v0, "\u092e\u093f\u0928\u093f\u091f\u093e\u0902\u092a\u0942\u0930\u094d\u0935\u0940"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "\u092e\u093f\u0928\u093f\u091f\u093e\u092a\u0942\u0930\u094d\u0935\u0940"

    .line 17
    .line 18
    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->MINUTES:[Ljava/lang/String;

    .line 24
    .line 25
    const-string/jumbo v0, "\u0924\u093e\u0938\u093e\u0902\u092a\u0942\u0930\u094d\u0935\u0940"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "\u0924\u093e\u0938\u093e\u092a\u0942\u0930\u094d\u0935\u0940"

    .line 29
    .line 30
    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->HOURS:[Ljava/lang/String;

    .line 36
    .line 37
    const-string/jumbo v0, "\u0926\u093f\u0935\u0938\u093e\u0902\u092a\u0942\u0930\u094d\u0935\u0940"

    .line 38
    .line 39
    .line 40
    const-string/jumbo v1, "\u0926\u093f\u0935\u0938\u093e\u092a\u0942\u0930\u094d\u0935\u0940"

    .line 41
    .line 42
    .line 43
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->DAYS:[Ljava/lang/String;

    .line 48
    .line 49
    const-string/jumbo v0, "\u0906\u0920\u0935\u0921\u094d\u092f\u093e\u0902\u092a\u0942\u0930\u094d\u0935\u0940"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v1, "\u0906\u0920\u0935\u0921\u094d\u092f\u093e\u092a\u0942\u0930\u094d\u0935\u0940"

    .line 53
    .line 54
    .line 55
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->WEEKS:[Ljava/lang/String;

    .line 60
    .line 61
    const-string/jumbo v0, "\u092e\u0939\u093f\u0928\u094d\u092f\u093e\u0902\u092a\u0942\u0930\u094d\u0935\u0940"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v1, "\u092e\u0939\u093f\u0928\u094d\u092f\u093e\u092a\u0942\u0930\u094d\u0935\u0940"

    .line 65
    .line 66
    .line 67
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->MONTHS:[Ljava/lang/String;

    .line 72
    .line 73
    const-string/jumbo v0, "\u0935\u0930\u094d\u0937\u093e\u0902\u092a\u0942\u0930\u094d\u0935\u0940"

    .line 74
    .line 75
    .line 76
    const-string/jumbo v1, "\u0935\u0930\u094d\u0937\u093e\u092a\u0942\u0930\u094d\u0935\u0940"

    .line 77
    .line 78
    .line 79
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->YEARS:[Ljava/lang/String;

    .line 84
    .line 85
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;

    .line 86
    .line 87
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;-><init>()V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/mr;

    .line 91
    .line 92
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->SECONDS:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->MINUTES:[Ljava/lang/String;

    .line 4
    .line 5
    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->HOURS:[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->DAYS:[Ljava/lang/String;

    .line 8
    .line 9
    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->WEEKS:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->MONTHS:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->YEARS:[Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, ""

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

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/mr;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/mr;

    .line 2
    .line 3
    return-object v0
.end method
