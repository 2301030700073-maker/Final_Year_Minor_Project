.class public final enum Lexpo/modules/updates/logging/UpdatesErrorCode;
.super Ljava/lang/Enum;
.source "UpdatesErrorCode.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/updates/logging/UpdatesErrorCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/updates/logging/UpdatesErrorCode;",
        "",
        "code",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getCode",
        "()Ljava/lang/String;",
        "None",
        "NoUpdatesAvailable",
        "UpdateAssetsNotAvailable",
        "UpdateServerUnreachable",
        "UpdateHasInvalidSignature",
        "UpdateCodeSigningError",
        "UpdateFailedToLoad",
        "AssetsFailedToLoad",
        "JSRuntimeError",
        "InitializationError",
        "Unknown",
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

.field private static final synthetic $VALUES:[Lexpo/modules/updates/logging/UpdatesErrorCode;

.field public static final enum AssetsFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

.field public static final enum InitializationError:Lexpo/modules/updates/logging/UpdatesErrorCode;

.field public static final enum JSRuntimeError:Lexpo/modules/updates/logging/UpdatesErrorCode;

.field public static final enum NoUpdatesAvailable:Lexpo/modules/updates/logging/UpdatesErrorCode;

.field public static final enum None:Lexpo/modules/updates/logging/UpdatesErrorCode;

.field public static final enum Unknown:Lexpo/modules/updates/logging/UpdatesErrorCode;

.field public static final enum UpdateAssetsNotAvailable:Lexpo/modules/updates/logging/UpdatesErrorCode;

.field public static final enum UpdateCodeSigningError:Lexpo/modules/updates/logging/UpdatesErrorCode;

.field public static final enum UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

.field public static final enum UpdateHasInvalidSignature:Lexpo/modules/updates/logging/UpdatesErrorCode;

.field public static final enum UpdateServerUnreachable:Lexpo/modules/updates/logging/UpdatesErrorCode;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/updates/logging/UpdatesErrorCode;
    .locals 11

    sget-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    sget-object v1, Lexpo/modules/updates/logging/UpdatesErrorCode;->NoUpdatesAvailable:Lexpo/modules/updates/logging/UpdatesErrorCode;

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateAssetsNotAvailable:Lexpo/modules/updates/logging/UpdatesErrorCode;

    sget-object v3, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateServerUnreachable:Lexpo/modules/updates/logging/UpdatesErrorCode;

    sget-object v4, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateHasInvalidSignature:Lexpo/modules/updates/logging/UpdatesErrorCode;

    sget-object v5, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateCodeSigningError:Lexpo/modules/updates/logging/UpdatesErrorCode;

    sget-object v6, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    sget-object v7, Lexpo/modules/updates/logging/UpdatesErrorCode;->AssetsFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    sget-object v8, Lexpo/modules/updates/logging/UpdatesErrorCode;->JSRuntimeError:Lexpo/modules/updates/logging/UpdatesErrorCode;

    sget-object v9, Lexpo/modules/updates/logging/UpdatesErrorCode;->InitializationError:Lexpo/modules/updates/logging/UpdatesErrorCode;

    sget-object v10, Lexpo/modules/updates/logging/UpdatesErrorCode;->Unknown:Lexpo/modules/updates/logging/UpdatesErrorCode;

    filled-new-array/range {v0 .. v10}, [Lexpo/modules/updates/logging/UpdatesErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/updates/logging/UpdatesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 8
    new-instance v0, Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v1, "NoUpdatesAvailable"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/updates/logging/UpdatesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->NoUpdatesAvailable:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 9
    new-instance v0, Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v1, "UpdateAssetsNotAvailable"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/updates/logging/UpdatesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateAssetsNotAvailable:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 10
    new-instance v0, Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v1, "UpdateServerUnreachable"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/updates/logging/UpdatesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateServerUnreachable:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 11
    new-instance v0, Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v1, "UpdateHasInvalidSignature"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/updates/logging/UpdatesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateHasInvalidSignature:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 12
    new-instance v0, Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v1, "UpdateCodeSigningError"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/updates/logging/UpdatesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateCodeSigningError:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 13
    new-instance v0, Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v1, "UpdateFailedToLoad"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/updates/logging/UpdatesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 14
    new-instance v0, Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v1, "AssetsFailedToLoad"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/updates/logging/UpdatesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->AssetsFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 15
    new-instance v0, Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v1, "JSRuntimeError"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/updates/logging/UpdatesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->JSRuntimeError:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 16
    new-instance v0, Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v1, "InitializationError"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/updates/logging/UpdatesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->InitializationError:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 17
    new-instance v0, Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v1, "Unknown"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/updates/logging/UpdatesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->Unknown:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-static {}, Lexpo/modules/updates/logging/UpdatesErrorCode;->$values()[Lexpo/modules/updates/logging/UpdatesErrorCode;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->$VALUES:[Lexpo/modules/updates/logging/UpdatesErrorCode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/updates/logging/UpdatesErrorCode;->code:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/updates/logging/UpdatesErrorCode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/updates/logging/UpdatesErrorCode;
    .locals 1

    const-class v0, Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 18
    check-cast p0, Lexpo/modules/updates/logging/UpdatesErrorCode;

    return-object p0
.end method

.method public static values()[Lexpo/modules/updates/logging/UpdatesErrorCode;
    .locals 1

    sget-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->$VALUES:[Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, [Lexpo/modules/updates/logging/UpdatesErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lexpo/modules/updates/logging/UpdatesErrorCode;->code:Ljava/lang/String;

    return-object v0
.end method
