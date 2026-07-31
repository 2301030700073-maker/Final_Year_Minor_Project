.class public final enum Lorg/wikipedia/games/WikiGames;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/games/WikiGames;

.field public static final enum WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;


# instance fields
.field private final baseLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final supportLanguages$delegate:Lkotlin/Lazy;

.field private final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lorg/wikipedia/games/WikiGames;

    .line 2
    .line 3
    const-string/jumbo v8, "tr"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v9, "zh"

    .line 7
    .line 8
    .line 9
    const-string v1, "en"

    .line 10
    .line 11
    const-string v2, "de"

    .line 12
    .line 13
    const-string v3, "fr"

    .line 14
    .line 15
    const-string v4, "es"

    .line 16
    .line 17
    const-string v5, "pt"

    .line 18
    .line 19
    const-string v6, "ru"

    .line 20
    .line 21
    const-string v7, "ar"

    .line 22
    .line 23
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Lorg/wikipedia/games/WikiGames;-><init>(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    new-array v1, v1, [Lorg/wikipedia/games/WikiGames;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    aput-object v0, v1, v2

    .line 41
    .line 42
    sput-object v1, Lorg/wikipedia/games/WikiGames;->$VALUES:[Lorg/wikipedia/games/WikiGames;

    .line 43
    .line 44
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 45
    .line 46
    invoke-direct {v0, v1}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lorg/wikipedia/games/WikiGames;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "WHICH_CAME_FIRST"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f1204f3

    .line 8
    .line 9
    .line 10
    iput v0, p0, Lorg/wikipedia/games/WikiGames;->titleRes:I

    .line 11
    .line 12
    iput-object p1, p0, Lorg/wikipedia/games/WikiGames;->baseLanguages:Ljava/util/List;

    .line 13
    .line 14
    new-instance p1, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {p1, v1, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/wikipedia/games/WikiGames;->supportLanguages$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/games/WikiGames;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final supportLanguages_delegate$lambda$0(Lorg/wikipedia/games/WikiGames;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/wikipedia/games/WikiGames;->baseLanguages:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 28
    .line 29
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2, v1}, Lorg/wikipedia/language/AppLanguageState;->getLanguageVariants(Ljava/lang/String;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    invoke-static {v1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :cond_0
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/games/WikiGames;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/games/WikiGames;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/games/WikiGames;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/games/WikiGames;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/games/WikiGames;->$VALUES:[Lorg/wikipedia/games/WikiGames;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/games/WikiGames;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getSupportLanguages()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/games/WikiGames;->supportLanguages$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getTitleRes()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/games/WikiGames;->titleRes:I

    .line 2
    .line 3
    return p0
.end method

.method public final varargs isLangSupported([Ljava/lang/String;)Z
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p1, v2

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/games/WikiGames;->getSupportLanguages()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v1
.end method
