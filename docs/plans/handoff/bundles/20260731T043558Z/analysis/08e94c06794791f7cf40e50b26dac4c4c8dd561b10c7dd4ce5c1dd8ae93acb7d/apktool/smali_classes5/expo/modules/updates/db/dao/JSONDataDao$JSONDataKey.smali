.class public final enum Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;
.super Ljava/lang/Enum;
.source "JSONDataDao.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/db/dao/JSONDataDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JSONDataKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;",
        "",
        "key",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getKey",
        "()Ljava/lang/String;",
        "STATIC_BUILD_DATA",
        "EXTRA_PARAMS",
        "MANIFEST_SERVER_DEFINED_HEADERS",
        "MANIFEST_FILTERS",
        "expo-updates_release"
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

.field private static final synthetic $VALUES:[Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

.field public static final enum EXTRA_PARAMS:Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

.field public static final enum MANIFEST_FILTERS:Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

.field public static final enum MANIFEST_SERVER_DEFINED_HEADERS:Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

.field public static final enum STATIC_BUILD_DATA:Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;
    .locals 4

    sget-object v0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->STATIC_BUILD_DATA:Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    sget-object v1, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->EXTRA_PARAMS:Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    sget-object v2, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->MANIFEST_SERVER_DEFINED_HEADERS:Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    sget-object v3, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->MANIFEST_FILTERS:Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    filled-new-array {v0, v1, v2, v3}, [Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 16
    new-instance v0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    const/4 v1, 0x0

    const-string v2, "staticBuildData"

    const-string v3, "STATIC_BUILD_DATA"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->STATIC_BUILD_DATA:Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    .line 17
    new-instance v0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    const/4 v1, 0x1

    const-string v2, "extraParams"

    const-string v3, "EXTRA_PARAMS"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->EXTRA_PARAMS:Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    .line 18
    new-instance v0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    const/4 v1, 0x2

    const-string v2, "serverDefinedHeaders"

    const-string v3, "MANIFEST_SERVER_DEFINED_HEADERS"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->MANIFEST_SERVER_DEFINED_HEADERS:Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    .line 19
    new-instance v0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    const/4 v1, 0x3

    const-string v2, "manifestFilters"

    const-string v3, "MANIFEST_FILTERS"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->MANIFEST_FILTERS:Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    invoke-static {}, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->$values()[Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->$VALUES:[Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->key:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;
    .locals 1

    const-class v0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 20
    check-cast p0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    return-object p0
.end method

.method public static values()[Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;
    .locals 1

    sget-object v0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->$VALUES:[Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, [Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->key:Ljava/lang/String;

    return-object v0
.end method
