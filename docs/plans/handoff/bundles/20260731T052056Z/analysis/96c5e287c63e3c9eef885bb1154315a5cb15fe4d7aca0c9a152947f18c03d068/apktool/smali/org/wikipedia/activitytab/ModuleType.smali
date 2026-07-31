.class public final enum Lorg/wikipedia/activitytab/ModuleType;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/activitytab/ModuleType;

.field public static final enum DONATIONS:Lorg/wikipedia/activitytab/ModuleType;

.field public static final enum EDITING_INSIGHTS:Lorg/wikipedia/activitytab/ModuleType;

.field public static final enum GAMES:Lorg/wikipedia/activitytab/ModuleType;

.field public static final enum IMPACT:Lorg/wikipedia/activitytab/ModuleType;

.field public static final enum READING_INSIGHTS:Lorg/wikipedia/activitytab/ModuleType;

.field public static final enum TIMELINE:Lorg/wikipedia/activitytab/ModuleType;

.field public static final enum TIME_SPENT:Lorg/wikipedia/activitytab/ModuleType;


# instance fields
.field private final displayName:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lorg/wikipedia/activitytab/ModuleType;

    .line 2
    .line 3
    const v1, 0x7f12003f

    .line 4
    .line 5
    .line 6
    const-string v2, "TIME_SPENT"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v2, v3, v1}, Lorg/wikipedia/activitytab/ModuleType;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lorg/wikipedia/activitytab/ModuleType;->TIME_SPENT:Lorg/wikipedia/activitytab/ModuleType;

    .line 13
    .line 14
    new-instance v1, Lorg/wikipedia/activitytab/ModuleType;

    .line 15
    .line 16
    const v2, 0x7f12003e

    .line 17
    .line 18
    .line 19
    const-string v4, "READING_INSIGHTS"

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-direct {v1, v4, v5, v2}, Lorg/wikipedia/activitytab/ModuleType;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lorg/wikipedia/activitytab/ModuleType;->READING_INSIGHTS:Lorg/wikipedia/activitytab/ModuleType;

    .line 26
    .line 27
    new-instance v2, Lorg/wikipedia/activitytab/ModuleType;

    .line 28
    .line 29
    const v4, 0x7f120039

    .line 30
    .line 31
    .line 32
    const-string v6, "EDITING_INSIGHTS"

    .line 33
    .line 34
    const/4 v7, 0x2

    .line 35
    invoke-direct {v2, v6, v7, v4}, Lorg/wikipedia/activitytab/ModuleType;-><init>(Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Lorg/wikipedia/activitytab/ModuleType;->EDITING_INSIGHTS:Lorg/wikipedia/activitytab/ModuleType;

    .line 39
    .line 40
    new-instance v4, Lorg/wikipedia/activitytab/ModuleType;

    .line 41
    .line 42
    const v6, 0x7f12003b

    .line 43
    .line 44
    .line 45
    const-string v8, "IMPACT"

    .line 46
    .line 47
    const/4 v9, 0x3

    .line 48
    invoke-direct {v4, v8, v9, v6}, Lorg/wikipedia/activitytab/ModuleType;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v4, Lorg/wikipedia/activitytab/ModuleType;->IMPACT:Lorg/wikipedia/activitytab/ModuleType;

    .line 52
    .line 53
    new-instance v6, Lorg/wikipedia/activitytab/ModuleType;

    .line 54
    .line 55
    const v8, 0x7f12003a

    .line 56
    .line 57
    .line 58
    const-string v10, "GAMES"

    .line 59
    .line 60
    const/4 v11, 0x4

    .line 61
    invoke-direct {v6, v10, v11, v8}, Lorg/wikipedia/activitytab/ModuleType;-><init>(Ljava/lang/String;II)V

    .line 62
    .line 63
    .line 64
    sput-object v6, Lorg/wikipedia/activitytab/ModuleType;->GAMES:Lorg/wikipedia/activitytab/ModuleType;

    .line 65
    .line 66
    new-instance v8, Lorg/wikipedia/activitytab/ModuleType;

    .line 67
    .line 68
    const v10, 0x7f120038

    .line 69
    .line 70
    .line 71
    const-string v12, "DONATIONS"

    .line 72
    .line 73
    const/4 v13, 0x5

    .line 74
    invoke-direct {v8, v12, v13, v10}, Lorg/wikipedia/activitytab/ModuleType;-><init>(Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    sput-object v8, Lorg/wikipedia/activitytab/ModuleType;->DONATIONS:Lorg/wikipedia/activitytab/ModuleType;

    .line 78
    .line 79
    new-instance v10, Lorg/wikipedia/activitytab/ModuleType;

    .line 80
    .line 81
    const v12, 0x7f120040

    .line 82
    .line 83
    .line 84
    const-string v14, "TIMELINE"

    .line 85
    .line 86
    const/4 v15, 0x6

    .line 87
    invoke-direct {v10, v14, v15, v12}, Lorg/wikipedia/activitytab/ModuleType;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v10, Lorg/wikipedia/activitytab/ModuleType;->TIMELINE:Lorg/wikipedia/activitytab/ModuleType;

    .line 91
    .line 92
    const/4 v12, 0x7

    .line 93
    new-array v12, v12, [Lorg/wikipedia/activitytab/ModuleType;

    .line 94
    .line 95
    aput-object v0, v12, v3

    .line 96
    .line 97
    aput-object v1, v12, v5

    .line 98
    .line 99
    aput-object v2, v12, v7

    .line 100
    .line 101
    aput-object v4, v12, v9

    .line 102
    .line 103
    aput-object v6, v12, v11

    .line 104
    .line 105
    aput-object v8, v12, v13

    .line 106
    .line 107
    aput-object v10, v12, v15

    .line 108
    .line 109
    sput-object v12, Lorg/wikipedia/activitytab/ModuleType;->$VALUES:[Lorg/wikipedia/activitytab/ModuleType;

    .line 110
    .line 111
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 112
    .line 113
    invoke-direct {v0, v12}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 114
    .line 115
    .line 116
    sput-object v0, Lorg/wikipedia/activitytab/ModuleType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 117
    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/wikipedia/activitytab/ModuleType;->displayName:I

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/activitytab/ModuleType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/activitytab/ModuleType;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/activitytab/ModuleType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/activitytab/ModuleType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/activitytab/ModuleType;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/activitytab/ModuleType;->$VALUES:[Lorg/wikipedia/activitytab/ModuleType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/activitytab/ModuleType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDisplayName()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/activitytab/ModuleType;->displayName:I

    .line 2
    .line 3
    return p0
.end method
