.class public final enum Lorg/wikipedia/search/SearchResult$SearchResultType;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/search/SearchResult$SearchResultType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/search/SearchResult$SearchResultType;

.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/wikipedia/search/SearchResult$SearchResultType$Companion;

.field public static final enum FULL_TEXT:Lorg/wikipedia/search/SearchResult$SearchResultType;

.field public static final enum HISTORY:Lorg/wikipedia/search/SearchResult$SearchResultType;

.field public static final enum PREFIX:Lorg/wikipedia/search/SearchResult$SearchResultType;

.field public static final enum READING_LIST:Lorg/wikipedia/search/SearchResult$SearchResultType;

.field public static final enum SEMANTIC:Lorg/wikipedia/search/SearchResult$SearchResultType;

.field public static final enum TAB_LIST:Lorg/wikipedia/search/SearchResult$SearchResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 2
    .line 3
    const-string v1, "PREFIX"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/wikipedia/search/SearchResult$SearchResultType;->PREFIX:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 10
    .line 11
    new-instance v1, Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 12
    .line 13
    const-string v3, "FULL_TEXT"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lorg/wikipedia/search/SearchResult$SearchResultType;->FULL_TEXT:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 20
    .line 21
    new-instance v3, Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 22
    .line 23
    const-string v5, "HISTORY"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lorg/wikipedia/search/SearchResult$SearchResultType;->HISTORY:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 30
    .line 31
    new-instance v5, Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 32
    .line 33
    const-string v7, "READING_LIST"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lorg/wikipedia/search/SearchResult$SearchResultType;->READING_LIST:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 40
    .line 41
    new-instance v7, Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 42
    .line 43
    const-string v9, "TAB_LIST"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lorg/wikipedia/search/SearchResult$SearchResultType;->TAB_LIST:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 50
    .line 51
    new-instance v9, Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 52
    .line 53
    const-string v11, "SEMANTIC"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lorg/wikipedia/search/SearchResult$SearchResultType;->SEMANTIC:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 60
    .line 61
    const/4 v11, 0x6

    .line 62
    new-array v11, v11, [Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 63
    .line 64
    aput-object v0, v11, v2

    .line 65
    .line 66
    aput-object v1, v11, v4

    .line 67
    .line 68
    aput-object v3, v11, v6

    .line 69
    .line 70
    aput-object v5, v11, v8

    .line 71
    .line 72
    aput-object v7, v11, v10

    .line 73
    .line 74
    aput-object v9, v11, v12

    .line 75
    .line 76
    sput-object v11, Lorg/wikipedia/search/SearchResult$SearchResultType;->$VALUES:[Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 77
    .line 78
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 79
    .line 80
    invoke-direct {v0, v11}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lorg/wikipedia/search/SearchResult$SearchResultType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 84
    .line 85
    new-instance v0, Lorg/wikipedia/search/SearchResult$SearchResultType$Companion;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lorg/wikipedia/search/SearchResult$SearchResultType;->Companion:Lorg/wikipedia/search/SearchResult$SearchResultType$Companion;

    .line 91
    .line 92
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 93
    .line 94
    new-instance v1, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    const/16 v2, 0x8

    .line 97
    .line 98
    invoke-direct {v1, v2}, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sput-object v0, Lorg/wikipedia/search/SearchResult$SearchResultType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    .line 106
    .line 107
    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/search/SearchResult$SearchResultType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/search/SearchResult$SearchResultType;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/search/SearchResult$SearchResultType;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/search/SearchResult$SearchResultType;->$VALUES:[Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 8
    .line 9
    return-object v0
.end method
