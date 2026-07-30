.class public final enum Lcom/segmentanalyticsreactnative/ConnectionType;
.super Ljava/lang/Enum;
.source "AnalyticsReactNativeModule.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/segmentanalyticsreactnative/ConnectionType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/segmentanalyticsreactnative/ConnectionType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Cellular",
        "Unknown",
        "Wifi",
        "segment_analytics-react-native_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/segmentanalyticsreactnative/ConnectionType;

.field public static final enum Cellular:Lcom/segmentanalyticsreactnative/ConnectionType;

.field public static final enum Unknown:Lcom/segmentanalyticsreactnative/ConnectionType;

.field public static final enum Wifi:Lcom/segmentanalyticsreactnative/ConnectionType;


# direct methods
.method private static final synthetic $values()[Lcom/segmentanalyticsreactnative/ConnectionType;
    .locals 3

    sget-object v0, Lcom/segmentanalyticsreactnative/ConnectionType;->Cellular:Lcom/segmentanalyticsreactnative/ConnectionType;

    sget-object v1, Lcom/segmentanalyticsreactnative/ConnectionType;->Unknown:Lcom/segmentanalyticsreactnative/ConnectionType;

    sget-object v2, Lcom/segmentanalyticsreactnative/ConnectionType;->Wifi:Lcom/segmentanalyticsreactnative/ConnectionType;

    filled-new-array {v0, v1, v2}, [Lcom/segmentanalyticsreactnative/ConnectionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/segmentanalyticsreactnative/ConnectionType;

    const-string v1, "Cellular"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/segmentanalyticsreactnative/ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/segmentanalyticsreactnative/ConnectionType;->Cellular:Lcom/segmentanalyticsreactnative/ConnectionType;

    new-instance v0, Lcom/segmentanalyticsreactnative/ConnectionType;

    const-string v1, "Unknown"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/segmentanalyticsreactnative/ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/segmentanalyticsreactnative/ConnectionType;->Unknown:Lcom/segmentanalyticsreactnative/ConnectionType;

    new-instance v0, Lcom/segmentanalyticsreactnative/ConnectionType;

    const-string v1, "Wifi"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/segmentanalyticsreactnative/ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/segmentanalyticsreactnative/ConnectionType;->Wifi:Lcom/segmentanalyticsreactnative/ConnectionType;

    invoke-static {}, Lcom/segmentanalyticsreactnative/ConnectionType;->$values()[Lcom/segmentanalyticsreactnative/ConnectionType;

    move-result-object v0

    sput-object v0, Lcom/segmentanalyticsreactnative/ConnectionType;->$VALUES:[Lcom/segmentanalyticsreactnative/ConnectionType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/segmentanalyticsreactnative/ConnectionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/segmentanalyticsreactnative/ConnectionType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/segmentanalyticsreactnative/ConnectionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/segmentanalyticsreactnative/ConnectionType;
    .locals 1

    const-class v0, Lcom/segmentanalyticsreactnative/ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 29
    check-cast p0, Lcom/segmentanalyticsreactnative/ConnectionType;

    return-object p0
.end method

.method public static values()[Lcom/segmentanalyticsreactnative/ConnectionType;
    .locals 1

    sget-object v0, Lcom/segmentanalyticsreactnative/ConnectionType;->$VALUES:[Lcom/segmentanalyticsreactnative/ConnectionType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, [Lcom/segmentanalyticsreactnative/ConnectionType;

    return-object v0
.end method
