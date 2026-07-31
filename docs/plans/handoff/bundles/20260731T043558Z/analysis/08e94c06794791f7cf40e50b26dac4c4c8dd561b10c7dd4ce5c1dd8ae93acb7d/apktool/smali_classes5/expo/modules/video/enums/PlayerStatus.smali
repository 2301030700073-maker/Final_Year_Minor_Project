.class public final enum Lexpo/modules/video/enums/PlayerStatus;
.super Ljava/lang/Enum;
.source "PlayerStatus.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/video/enums/PlayerStatus;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/video/enums/PlayerStatus;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "IDLE",
        "LOADING",
        "READY_TO_PLAY",
        "ERROR",
        "expo-video_release"
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

.field private static final synthetic $VALUES:[Lexpo/modules/video/enums/PlayerStatus;

.field public static final enum ERROR:Lexpo/modules/video/enums/PlayerStatus;

.field public static final enum IDLE:Lexpo/modules/video/enums/PlayerStatus;

.field public static final enum LOADING:Lexpo/modules/video/enums/PlayerStatus;

.field public static final enum READY_TO_PLAY:Lexpo/modules/video/enums/PlayerStatus;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/video/enums/PlayerStatus;
    .locals 4

    sget-object v0, Lexpo/modules/video/enums/PlayerStatus;->IDLE:Lexpo/modules/video/enums/PlayerStatus;

    sget-object v1, Lexpo/modules/video/enums/PlayerStatus;->LOADING:Lexpo/modules/video/enums/PlayerStatus;

    sget-object v2, Lexpo/modules/video/enums/PlayerStatus;->READY_TO_PLAY:Lexpo/modules/video/enums/PlayerStatus;

    sget-object v3, Lexpo/modules/video/enums/PlayerStatus;->ERROR:Lexpo/modules/video/enums/PlayerStatus;

    filled-new-array {v0, v1, v2, v3}, [Lexpo/modules/video/enums/PlayerStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lexpo/modules/video/enums/PlayerStatus;

    const/4 v1, 0x0

    const-string v2, "idle"

    const-string v3, "IDLE"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/PlayerStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/PlayerStatus;->IDLE:Lexpo/modules/video/enums/PlayerStatus;

    .line 7
    new-instance v0, Lexpo/modules/video/enums/PlayerStatus;

    const/4 v1, 0x1

    const-string v2, "loading"

    const-string v3, "LOADING"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/PlayerStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/PlayerStatus;->LOADING:Lexpo/modules/video/enums/PlayerStatus;

    .line 8
    new-instance v0, Lexpo/modules/video/enums/PlayerStatus;

    const/4 v1, 0x2

    const-string v2, "readyToPlay"

    const-string v3, "READY_TO_PLAY"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/PlayerStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/PlayerStatus;->READY_TO_PLAY:Lexpo/modules/video/enums/PlayerStatus;

    .line 9
    new-instance v0, Lexpo/modules/video/enums/PlayerStatus;

    const/4 v1, 0x3

    const-string v2, "error"

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/PlayerStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/PlayerStatus;->ERROR:Lexpo/modules/video/enums/PlayerStatus;

    invoke-static {}, Lexpo/modules/video/enums/PlayerStatus;->$values()[Lexpo/modules/video/enums/PlayerStatus;

    move-result-object v0

    sput-object v0, Lexpo/modules/video/enums/PlayerStatus;->$VALUES:[Lexpo/modules/video/enums/PlayerStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/video/enums/PlayerStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/video/enums/PlayerStatus;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/video/enums/PlayerStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/video/enums/PlayerStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/video/enums/PlayerStatus;
    .locals 1

    const-class v0, Lexpo/modules/video/enums/PlayerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 10
    check-cast p0, Lexpo/modules/video/enums/PlayerStatus;

    return-object p0
.end method

.method public static values()[Lexpo/modules/video/enums/PlayerStatus;
    .locals 1

    sget-object v0, Lexpo/modules/video/enums/PlayerStatus;->$VALUES:[Lexpo/modules/video/enums/PlayerStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, [Lexpo/modules/video/enums/PlayerStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lexpo/modules/video/enums/PlayerStatus;->value:Ljava/lang/String;

    return-object v0
.end method
