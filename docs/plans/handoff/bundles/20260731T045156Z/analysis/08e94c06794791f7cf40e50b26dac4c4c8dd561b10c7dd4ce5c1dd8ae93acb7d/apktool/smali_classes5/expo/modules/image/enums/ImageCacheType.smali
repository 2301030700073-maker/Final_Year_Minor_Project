.class public final enum Lexpo/modules/image/enums/ImageCacheType;
.super Ljava/lang/Enum;
.source "ImageCacheType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/image/enums/ImageCacheType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/image/enums/ImageCacheType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u001d\u0008\u0002\u0012\u0012\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0018\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/image/enums/ImageCacheType;",
        "",
        "dataSources",
        "",
        "Lcom/bumptech/glide/load/DataSource;",
        "<init>",
        "(Ljava/lang/String;I[Lcom/bumptech/glide/load/DataSource;)V",
        "[Lcom/bumptech/glide/load/DataSource;",
        "NONE",
        "DISK",
        "MEMORY",
        "Companion",
        "expo-image_release"
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

.field private static final synthetic $VALUES:[Lexpo/modules/image/enums/ImageCacheType;

.field public static final Companion:Lexpo/modules/image/enums/ImageCacheType$Companion;

.field public static final enum DISK:Lexpo/modules/image/enums/ImageCacheType;

.field public static final enum MEMORY:Lexpo/modules/image/enums/ImageCacheType;

.field public static final enum NONE:Lexpo/modules/image/enums/ImageCacheType;


# instance fields
.field private final dataSources:[Lcom/bumptech/glide/load/DataSource;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/image/enums/ImageCacheType;
    .locals 3

    sget-object v0, Lexpo/modules/image/enums/ImageCacheType;->NONE:Lexpo/modules/image/enums/ImageCacheType;

    sget-object v1, Lexpo/modules/image/enums/ImageCacheType;->DISK:Lexpo/modules/image/enums/ImageCacheType;

    sget-object v2, Lexpo/modules/image/enums/ImageCacheType;->MEMORY:Lexpo/modules/image/enums/ImageCacheType;

    filled-new-array {v0, v1, v2}, [Lexpo/modules/image/enums/ImageCacheType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 6
    new-instance v0, Lexpo/modules/image/enums/ImageCacheType;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/bumptech/glide/load/DataSource;

    sget-object v3, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "NONE"

    invoke-direct {v0, v3, v4, v2}, Lexpo/modules/image/enums/ImageCacheType;-><init>(Ljava/lang/String;I[Lcom/bumptech/glide/load/DataSource;)V

    sput-object v0, Lexpo/modules/image/enums/ImageCacheType;->NONE:Lexpo/modules/image/enums/ImageCacheType;

    .line 7
    new-instance v0, Lexpo/modules/image/enums/ImageCacheType;

    new-array v2, v1, [Lcom/bumptech/glide/load/DataSource;

    sget-object v3, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    aput-object v3, v2, v4

    sget-object v3, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    aput-object v3, v2, v5

    const-string v3, "DISK"

    invoke-direct {v0, v3, v5, v2}, Lexpo/modules/image/enums/ImageCacheType;-><init>(Ljava/lang/String;I[Lcom/bumptech/glide/load/DataSource;)V

    sput-object v0, Lexpo/modules/image/enums/ImageCacheType;->DISK:Lexpo/modules/image/enums/ImageCacheType;

    .line 8
    new-instance v0, Lexpo/modules/image/enums/ImageCacheType;

    new-array v2, v5, [Lcom/bumptech/glide/load/DataSource;

    sget-object v3, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    aput-object v3, v2, v4

    const-string v3, "MEMORY"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/image/enums/ImageCacheType;-><init>(Ljava/lang/String;I[Lcom/bumptech/glide/load/DataSource;)V

    sput-object v0, Lexpo/modules/image/enums/ImageCacheType;->MEMORY:Lexpo/modules/image/enums/ImageCacheType;

    invoke-static {}, Lexpo/modules/image/enums/ImageCacheType;->$values()[Lexpo/modules/image/enums/ImageCacheType;

    move-result-object v0

    sput-object v0, Lexpo/modules/image/enums/ImageCacheType;->$VALUES:[Lexpo/modules/image/enums/ImageCacheType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/image/enums/ImageCacheType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lexpo/modules/image/enums/ImageCacheType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/image/enums/ImageCacheType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/image/enums/ImageCacheType;->Companion:Lexpo/modules/image/enums/ImageCacheType$Companion;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/bumptech/glide/load/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/image/enums/ImageCacheType;->dataSources:[Lcom/bumptech/glide/load/DataSource;

    return-void
.end method

.method public static final synthetic access$getDataSources$p(Lexpo/modules/image/enums/ImageCacheType;)[Lcom/bumptech/glide/load/DataSource;
    .locals 0

    .line 5
    iget-object p0, p0, Lexpo/modules/image/enums/ImageCacheType;->dataSources:[Lcom/bumptech/glide/load/DataSource;

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/image/enums/ImageCacheType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/image/enums/ImageCacheType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/image/enums/ImageCacheType;
    .locals 1

    const-class v0, Lexpo/modules/image/enums/ImageCacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 14
    check-cast p0, Lexpo/modules/image/enums/ImageCacheType;

    return-object p0
.end method

.method public static values()[Lexpo/modules/image/enums/ImageCacheType;
    .locals 1

    sget-object v0, Lexpo/modules/image/enums/ImageCacheType;->$VALUES:[Lexpo/modules/image/enums/ImageCacheType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, [Lexpo/modules/image/enums/ImageCacheType;

    return-object v0
.end method
