.class public final enum Lorg/wikipedia/watchlist/WatchlistExpiry;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/watchlist/WatchlistExpiry;

.field public static final enum NEVER:Lorg/wikipedia/watchlist/WatchlistExpiry;

.field public static final enum ONE_MONTH:Lorg/wikipedia/watchlist/WatchlistExpiry;

.field public static final enum ONE_WEEK:Lorg/wikipedia/watchlist/WatchlistExpiry;

.field public static final enum SIX_MONTH:Lorg/wikipedia/watchlist/WatchlistExpiry;

.field public static final enum THREE_MONTH:Lorg/wikipedia/watchlist/WatchlistExpiry;


# instance fields
.field private final expiry:Ljava/lang/String;

.field private final icon:Ljava/lang/Integer;

.field private final stringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 2
    .line 3
    const v1, 0x7f0801ea

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    const-string v1, "NEVER"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "never"

    .line 14
    .line 15
    const v4, 0x7f120a3b

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/watchlist/WatchlistExpiry;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Integer;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lorg/wikipedia/watchlist/WatchlistExpiry;->NEVER:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 22
    .line 23
    new-instance v1, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 24
    .line 25
    const v2, 0x7f080126

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const-string v2, "ONE_WEEK"

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    const-string v4, "1 week"

    .line 36
    .line 37
    const v5, 0x7f120a38

    .line 38
    .line 39
    .line 40
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/watchlist/WatchlistExpiry;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Integer;)V

    .line 41
    .line 42
    .line 43
    sput-object v1, Lorg/wikipedia/watchlist/WatchlistExpiry;->ONE_WEEK:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 44
    .line 45
    new-instance v2, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 46
    .line 47
    const v6, 0x7f120a37

    .line 48
    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    const-string v3, "ONE_MONTH"

    .line 52
    .line 53
    const/4 v4, 0x2

    .line 54
    const-string v5, "1 month"

    .line 55
    .line 56
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/watchlist/WatchlistExpiry;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Integer;)V

    .line 57
    .line 58
    .line 59
    sput-object v2, Lorg/wikipedia/watchlist/WatchlistExpiry;->ONE_MONTH:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 60
    .line 61
    new-instance v3, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 62
    .line 63
    const v7, 0x7f120a3a

    .line 64
    .line 65
    .line 66
    const/4 v8, 0x0

    .line 67
    const-string v4, "THREE_MONTH"

    .line 68
    .line 69
    const/4 v5, 0x3

    .line 70
    const-string v6, "3 months"

    .line 71
    .line 72
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/watchlist/WatchlistExpiry;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Integer;)V

    .line 73
    .line 74
    .line 75
    sput-object v3, Lorg/wikipedia/watchlist/WatchlistExpiry;->THREE_MONTH:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 76
    .line 77
    new-instance v4, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 78
    .line 79
    const v8, 0x7f120a39

    .line 80
    .line 81
    .line 82
    const/4 v9, 0x0

    .line 83
    const-string v5, "SIX_MONTH"

    .line 84
    .line 85
    const/4 v6, 0x4

    .line 86
    const-string v7, "6 months"

    .line 87
    .line 88
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/watchlist/WatchlistExpiry;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Integer;)V

    .line 89
    .line 90
    .line 91
    sput-object v4, Lorg/wikipedia/watchlist/WatchlistExpiry;->SIX_MONTH:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 92
    .line 93
    const/4 v5, 0x5

    .line 94
    new-array v5, v5, [Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    aput-object v0, v5, v6

    .line 98
    .line 99
    const/4 v0, 0x1

    .line 100
    aput-object v1, v5, v0

    .line 101
    .line 102
    const/4 v0, 0x2

    .line 103
    aput-object v2, v5, v0

    .line 104
    .line 105
    const/4 v0, 0x3

    .line 106
    aput-object v3, v5, v0

    .line 107
    .line 108
    const/4 v0, 0x4

    .line 109
    aput-object v4, v5, v0

    .line 110
    .line 111
    sput-object v5, Lorg/wikipedia/watchlist/WatchlistExpiry;->$VALUES:[Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 112
    .line 113
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 114
    .line 115
    invoke-direct {v0, v5}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 116
    .line 117
    .line 118
    sput-object v0, Lorg/wikipedia/watchlist/WatchlistExpiry;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 119
    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/wikipedia/watchlist/WatchlistExpiry;->expiry:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lorg/wikipedia/watchlist/WatchlistExpiry;->stringId:I

    .line 7
    .line 8
    iput-object p5, p0, Lorg/wikipedia/watchlist/WatchlistExpiry;->icon:Ljava/lang/Integer;

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/watchlist/WatchlistExpiry;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/watchlist/WatchlistExpiry;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistExpiry;->$VALUES:[Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getExpiry()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistExpiry;->expiry:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getIcon()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistExpiry;->icon:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStringId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/watchlist/WatchlistExpiry;->stringId:I

    .line 2
    .line 3
    return p0
.end method
