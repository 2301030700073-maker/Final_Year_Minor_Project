.class public final enum Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

.field public static final enum COMMUNITY:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

.field public static final enum PERSONALIZED:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;


# instance fields
.field private final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 2
    .line 3
    const v1, 0x7f120212

    .line 4
    .line 5
    .line 6
    const-string v2, "COMMUNITY"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v2, v3, v1}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->COMMUNITY:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 13
    .line 14
    new-instance v1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 15
    .line 16
    const v2, 0x7f120213

    .line 17
    .line 18
    .line 19
    const-string v4, "PERSONALIZED"

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-direct {v1, v4, v5, v2}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->PERSONALIZED:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    new-array v2, v2, [Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 29
    .line 30
    aput-object v0, v2, v3

    .line 31
    .line 32
    aput-object v1, v2, v5

    .line 33
    .line 34
    sput-object v2, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->$VALUES:[Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 35
    .line 36
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 37
    .line 38
    invoke-direct {v0, v2}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->titleRes:I

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->$VALUES:[Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getTitleRes()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->titleRes:I

    .line 2
    .line 3
    return p0
.end method
