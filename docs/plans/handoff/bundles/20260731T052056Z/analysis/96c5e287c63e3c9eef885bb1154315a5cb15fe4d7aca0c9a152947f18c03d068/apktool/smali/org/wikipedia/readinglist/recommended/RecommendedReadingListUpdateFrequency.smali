.class public final enum Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

.field public static final enum DAILY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

.field public static final enum MONTHLY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

.field public static final enum WEEKLY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;


# instance fields
.field private final dialogStringRes:I

.field private final displayStringRes:I

.field private final snackbarStringRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 2
    .line 3
    const v3, 0x7f120817

    .line 4
    .line 5
    .line 6
    const v4, 0x7f1207f0

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const v2, 0x7f120816

    .line 11
    .line 12
    .line 13
    const-string v5, "DAILY"

    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;-><init>(IIIILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->DAILY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 19
    .line 20
    new-instance v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 21
    .line 22
    const v4, 0x7f120819

    .line 23
    .line 24
    .line 25
    const v5, 0x7f1207f2

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const v3, 0x7f12081b

    .line 30
    .line 31
    .line 32
    const-string v6, "WEEKLY"

    .line 33
    .line 34
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;-><init>(IIIILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->WEEKLY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 38
    .line 39
    new-instance v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 40
    .line 41
    const v5, 0x7f120818

    .line 42
    .line 43
    .line 44
    const v6, 0x7f1207f1

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    const v4, 0x7f12081a

    .line 49
    .line 50
    .line 51
    const-string v7, "MONTHLY"

    .line 52
    .line 53
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;-><init>(IIIILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sput-object v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->MONTHLY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 57
    .line 58
    const/4 v3, 0x3

    .line 59
    new-array v3, v3, [Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    aput-object v0, v3, v4

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    aput-object v1, v3, v0

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    aput-object v2, v3, v0

    .line 69
    .line 70
    sput-object v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->$VALUES:[Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 71
    .line 72
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 73
    .line 74
    invoke-direct {v0, v3}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 78
    .line 79
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->displayStringRes:I

    .line 5
    .line 6
    iput p3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->dialogStringRes:I

    .line 7
    .line 8
    iput p4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->snackbarStringRes:I

    .line 9
    .line 10
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->$VALUES:[Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDialogStringRes()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->dialogStringRes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getDisplayStringRes()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->displayStringRes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSnackbarStringRes()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->snackbarStringRes:I

    .line 2
    .line 3
    return p0
.end method
