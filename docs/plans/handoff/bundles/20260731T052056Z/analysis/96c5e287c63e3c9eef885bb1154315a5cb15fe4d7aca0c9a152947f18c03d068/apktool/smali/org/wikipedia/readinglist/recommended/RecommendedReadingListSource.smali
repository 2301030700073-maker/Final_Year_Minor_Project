.class public final enum Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

.field public static final enum HISTORY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

.field public static final enum INTERESTS:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

.field public static final enum READING_LIST:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;


# instance fields
.field private final eventString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 2
    .line 3
    const-string v1, "interests"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "INTERESTS"

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->INTERESTS:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 12
    .line 13
    new-instance v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 14
    .line 15
    const-string v3, "saved"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "READING_LIST"

    .line 19
    .line 20
    invoke-direct {v1, v4, v5, v3}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->READING_LIST:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 24
    .line 25
    new-instance v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 26
    .line 27
    const-string v5, "history"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "HISTORY"

    .line 31
    .line 32
    invoke-direct {v3, v6, v7, v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->HISTORY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    new-array v5, v5, [Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 39
    .line 40
    aput-object v0, v5, v2

    .line 41
    .line 42
    aput-object v1, v5, v4

    .line 43
    .line 44
    aput-object v3, v5, v6

    .line 45
    .line 46
    sput-object v5, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->$VALUES:[Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 47
    .line 48
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 49
    .line 50
    invoke-direct {v0, v5}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 54
    .line 55
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->eventString:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->$VALUES:[Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getEventString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->eventString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
