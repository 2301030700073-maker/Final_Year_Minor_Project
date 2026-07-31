.class public final enum Lorg/wikimedia/testkitchen/config/DestinationEventService;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikimedia/testkitchen/config/DestinationEventService;

.field public static final enum ANALYTICS:Lorg/wikimedia/testkitchen/config/DestinationEventService;

.field public static final enum LOCAL:Lorg/wikimedia/testkitchen/config/DestinationEventService;

.field public static final enum LOGGING:Lorg/wikimedia/testkitchen/config/DestinationEventService;


# instance fields
.field private final baseUri:Ljava/lang/String;

.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 2
    .line 3
    const-string v1, "eventgate-analytics-external"

    .line 4
    .line 5
    const-string v2, "https://intake-analytics.wikimedia.org"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "ANALYTICS"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/wikimedia/testkitchen/config/DestinationEventService;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/wikimedia/testkitchen/config/DestinationEventService;->ANALYTICS:Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 14
    .line 15
    new-instance v1, Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 16
    .line 17
    const-string v2, "eventgate-logging-external"

    .line 18
    .line 19
    const-string v4, "https://intake-logging.wikimedia.org"

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    const-string v6, "LOGGING"

    .line 23
    .line 24
    invoke-direct {v1, v5, v6, v2, v4}, Lorg/wikimedia/testkitchen/config/DestinationEventService;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lorg/wikimedia/testkitchen/config/DestinationEventService;->LOGGING:Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 28
    .line 29
    new-instance v2, Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 30
    .line 31
    const-string v4, "eventgate-logging-local"

    .line 32
    .line 33
    const-string v6, "http://localhost:8192"

    .line 34
    .line 35
    const/4 v7, 0x2

    .line 36
    const-string v8, "LOCAL"

    .line 37
    .line 38
    invoke-direct {v2, v7, v8, v4, v6}, Lorg/wikimedia/testkitchen/config/DestinationEventService;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v2, Lorg/wikimedia/testkitchen/config/DestinationEventService;->LOCAL:Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    new-array v4, v4, [Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 45
    .line 46
    aput-object v0, v4, v3

    .line 47
    .line 48
    aput-object v1, v4, v5

    .line 49
    .line 50
    aput-object v2, v4, v7

    .line 51
    .line 52
    sput-object v4, Lorg/wikimedia/testkitchen/config/DestinationEventService;->$VALUES:[Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 53
    .line 54
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 55
    .line 56
    invoke-direct {v0, v4}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lorg/wikimedia/testkitchen/config/DestinationEventService;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 60
    .line 61
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/wikimedia/testkitchen/config/DestinationEventService;->id:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lorg/wikimedia/testkitchen/config/DestinationEventService;->baseUri:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikimedia/testkitchen/config/DestinationEventService;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikimedia/testkitchen/config/DestinationEventService;
    .locals 1

    .line 1
    const-class v0, Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikimedia/testkitchen/config/DestinationEventService;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikimedia/testkitchen/config/DestinationEventService;->$VALUES:[Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getBaseUri()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikimedia/testkitchen/config/DestinationEventService;->baseUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikimedia/testkitchen/config/DestinationEventService;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
