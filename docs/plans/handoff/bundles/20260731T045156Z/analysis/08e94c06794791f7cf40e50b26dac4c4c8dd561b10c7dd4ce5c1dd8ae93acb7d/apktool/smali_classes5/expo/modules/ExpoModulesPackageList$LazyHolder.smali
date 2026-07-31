.class Lexpo/modules/ExpoModulesPackageList$LazyHolder;
.super Ljava/lang/Object;
.source "ExpoModulesPackageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/ExpoModulesPackageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field static final modulesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lexpo/modules/kotlin/modules/Module;",
            ">;>;"
        }
    .end annotation
.end field

.field static final packagesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    .line 11
    new-array v1, v0, [Lexpo/modules/core/interfaces/Package;

    new-instance v2, Lexpo/modules/adapters/react/ReactAdapterPackage;

    invoke-direct {v2}, Lexpo/modules/adapters/react/ReactAdapterPackage;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lexpo/modules/constants/ConstantsPackage;

    invoke-direct {v2}, Lexpo/modules/constants/ConstantsPackage;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lexpo/modules/core/BasePackage;

    invoke-direct {v2}, Lexpo/modules/core/BasePackage;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lexpo/modules/updates/UpdatesPackage;

    invoke-direct {v2}, Lexpo/modules/updates/UpdatesPackage;-><init>()V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lexpo/modules/ExpoModulesPackageList$LazyHolder;->packagesList:Ljava/util/List;

    const/16 v1, 0xd

    .line 18
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lexpo/modules/fetch/ExpoFetchModule;

    aput-object v2, v1, v3

    const-class v2, Lexpo/modules/application/ApplicationModule;

    aput-object v2, v1, v4

    const-class v2, Lexpo/modules/asset/AssetModule;

    aput-object v2, v1, v5

    const-class v2, Lexpo/modules/blur/BlurModule;

    aput-object v2, v1, v6

    const-class v2, Lexpo/modules/clipboard/ClipboardModule;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-class v2, Lexpo/modules/constants/ConstantsModule;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-class v2, Lexpo/modules/device/DeviceModule;

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-class v2, Lexpo/modules/easclient/EASClientModule;

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-class v2, Lexpo/modules/image/ExpoImageModule;

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-class v2, Lexpo/modules/storereview/StoreReviewModule;

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-class v2, Lexpo/modules/updates/UpdatesModule;

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-class v2, Lexpo/modules/video/VideoModule;

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-class v2, Lexpo/modules/webbrowser/WebBrowserModule;

    aput-object v2, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lexpo/modules/ExpoModulesPackageList$LazyHolder;->modulesList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
