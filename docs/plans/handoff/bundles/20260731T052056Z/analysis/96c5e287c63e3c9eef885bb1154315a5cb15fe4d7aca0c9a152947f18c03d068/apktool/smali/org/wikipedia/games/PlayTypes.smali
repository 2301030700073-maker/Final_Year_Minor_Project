.class public final enum Lorg/wikipedia/games/PlayTypes;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/games/PlayTypes;

.field public static final enum PLAYED_ON_ARCHIVE:Lorg/wikipedia/games/PlayTypes;

.field public static final enum PLAYED_ON_SAME_DAY:Lorg/wikipedia/games/PlayTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/wikipedia/games/PlayTypes;

    .line 2
    .line 3
    const-string v1, "PLAYED_ON_SAME_DAY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/wikipedia/games/PlayTypes;->PLAYED_ON_SAME_DAY:Lorg/wikipedia/games/PlayTypes;

    .line 10
    .line 11
    new-instance v1, Lorg/wikipedia/games/PlayTypes;

    .line 12
    .line 13
    const-string v3, "PLAYED_ON_ARCHIVE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lorg/wikipedia/games/PlayTypes;->PLAYED_ON_ARCHIVE:Lorg/wikipedia/games/PlayTypes;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lorg/wikipedia/games/PlayTypes;

    .line 23
    .line 24
    aput-object v0, v3, v2

    .line 25
    .line 26
    aput-object v1, v3, v4

    .line 27
    .line 28
    sput-object v3, Lorg/wikipedia/games/PlayTypes;->$VALUES:[Lorg/wikipedia/games/PlayTypes;

    .line 29
    .line 30
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 31
    .line 32
    invoke-direct {v0, v3}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lorg/wikipedia/games/PlayTypes;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 36
    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/games/PlayTypes;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/games/PlayTypes;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/games/PlayTypes;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/games/PlayTypes;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/games/PlayTypes;->$VALUES:[Lorg/wikipedia/games/PlayTypes;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/games/PlayTypes;

    .line 8
    .line 9
    return-object v0
.end method
