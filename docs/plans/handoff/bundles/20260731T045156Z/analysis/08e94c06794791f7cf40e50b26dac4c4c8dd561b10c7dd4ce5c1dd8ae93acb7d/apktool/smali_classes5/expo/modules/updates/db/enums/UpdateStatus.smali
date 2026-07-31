.class public final enum Lexpo/modules/updates/db/enums/UpdateStatus;
.super Ljava/lang/Enum;
.source "UpdateStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/updates/db/enums/UpdateStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/updates/db/enums/UpdateStatus;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "READY",
        "PENDING",
        "EMBEDDED",
        "DEVELOPMENT",
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

.field private static final synthetic $VALUES:[Lexpo/modules/updates/db/enums/UpdateStatus;

.field public static final enum DEVELOPMENT:Lexpo/modules/updates/db/enums/UpdateStatus;

.field public static final enum EMBEDDED:Lexpo/modules/updates/db/enums/UpdateStatus;

.field public static final enum PENDING:Lexpo/modules/updates/db/enums/UpdateStatus;

.field public static final enum READY:Lexpo/modules/updates/db/enums/UpdateStatus;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/updates/db/enums/UpdateStatus;
    .locals 4

    sget-object v0, Lexpo/modules/updates/db/enums/UpdateStatus;->READY:Lexpo/modules/updates/db/enums/UpdateStatus;

    sget-object v1, Lexpo/modules/updates/db/enums/UpdateStatus;->PENDING:Lexpo/modules/updates/db/enums/UpdateStatus;

    sget-object v2, Lexpo/modules/updates/db/enums/UpdateStatus;->EMBEDDED:Lexpo/modules/updates/db/enums/UpdateStatus;

    sget-object v3, Lexpo/modules/updates/db/enums/UpdateStatus;->DEVELOPMENT:Lexpo/modules/updates/db/enums/UpdateStatus;

    filled-new-array {v0, v1, v2, v3}, [Lexpo/modules/updates/db/enums/UpdateStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lexpo/modules/updates/db/enums/UpdateStatus;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lexpo/modules/updates/db/enums/UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/updates/db/enums/UpdateStatus;->READY:Lexpo/modules/updates/db/enums/UpdateStatus;

    .line 17
    new-instance v0, Lexpo/modules/updates/db/enums/UpdateStatus;

    const-string v1, "PENDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lexpo/modules/updates/db/enums/UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/updates/db/enums/UpdateStatus;->PENDING:Lexpo/modules/updates/db/enums/UpdateStatus;

    .line 25
    new-instance v0, Lexpo/modules/updates/db/enums/UpdateStatus;

    const-string v1, "EMBEDDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lexpo/modules/updates/db/enums/UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/updates/db/enums/UpdateStatus;->EMBEDDED:Lexpo/modules/updates/db/enums/UpdateStatus;

    .line 31
    new-instance v0, Lexpo/modules/updates/db/enums/UpdateStatus;

    const-string v1, "DEVELOPMENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lexpo/modules/updates/db/enums/UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/updates/db/enums/UpdateStatus;->DEVELOPMENT:Lexpo/modules/updates/db/enums/UpdateStatus;

    invoke-static {}, Lexpo/modules/updates/db/enums/UpdateStatus;->$values()[Lexpo/modules/updates/db/enums/UpdateStatus;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/db/enums/UpdateStatus;->$VALUES:[Lexpo/modules/updates/db/enums/UpdateStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/db/enums/UpdateStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/updates/db/enums/UpdateStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/updates/db/enums/UpdateStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/updates/db/enums/UpdateStatus;
    .locals 1

    const-class v0, Lexpo/modules/updates/db/enums/UpdateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 32
    check-cast p0, Lexpo/modules/updates/db/enums/UpdateStatus;

    return-object p0
.end method

.method public static values()[Lexpo/modules/updates/db/enums/UpdateStatus;
    .locals 1

    sget-object v0, Lexpo/modules/updates/db/enums/UpdateStatus;->$VALUES:[Lexpo/modules/updates/db/enums/UpdateStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 32
    check-cast v0, [Lexpo/modules/updates/db/enums/UpdateStatus;

    return-object v0
.end method
