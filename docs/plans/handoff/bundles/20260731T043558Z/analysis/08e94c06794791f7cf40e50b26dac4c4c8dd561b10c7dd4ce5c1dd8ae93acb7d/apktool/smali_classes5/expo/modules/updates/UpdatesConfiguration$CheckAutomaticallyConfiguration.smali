.class public enum Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;
.super Ljava/lang/Enum;
.source "UpdatesConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/UpdatesConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckAutomaticallyConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration$ALWAYS;,
        Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration$ERROR_RECOVERY_ONLY;,
        Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration$NEVER;,
        Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration$WIFI_ONLY;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NEVER",
        "ERROR_RECOVERY_ONLY",
        "WIFI_ONLY",
        "ALWAYS",
        "toJSString",
        "",
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

.field private static final synthetic $VALUES:[Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

.field public static final enum ALWAYS:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

.field public static final enum ERROR_RECOVERY_ONLY:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

.field public static final enum NEVER:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

.field public static final enum WIFI_ONLY:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;
    .locals 4

    sget-object v0, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->NEVER:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    sget-object v1, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->ERROR_RECOVERY_ONLY:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    sget-object v2, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->WIFI_ONLY:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    sget-object v3, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->ALWAYS:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    filled-new-array {v0, v1, v2, v3}, [Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration$NEVER;

    const-string v1, "NEVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration$NEVER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->NEVER:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    .line 47
    new-instance v0, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration$ERROR_RECOVERY_ONLY;

    const-string v1, "ERROR_RECOVERY_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration$ERROR_RECOVERY_ONLY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->ERROR_RECOVERY_ONLY:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    .line 50
    new-instance v0, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration$WIFI_ONLY;

    const-string v1, "WIFI_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration$WIFI_ONLY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->WIFI_ONLY:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    .line 53
    new-instance v0, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration$ALWAYS;

    const-string v1, "ALWAYS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration$ALWAYS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->ALWAYS:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    invoke-static {}, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->$values()[Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->$VALUES:[Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;
    .locals 1

    const-class v0, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 60
    check-cast p0, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    return-object p0
.end method

.method public static values()[Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;
    .locals 1

    sget-object v0, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->$VALUES:[Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 60
    check-cast v0, [Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    return-object v0
.end method


# virtual methods
.method public toJSString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Lexpo/modules/core/errors/InvalidArgumentException;

    const-string v1, "Unsupported CheckAutomaticallyConfiguration value"

    invoke-direct {v0, v1}, Lexpo/modules/core/errors/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
