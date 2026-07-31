.class public final enum Lexpo/modules/updates/statemachine/UpdatesStateValue;
.super Ljava/lang/Enum;
.source "UpdatesStateValue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/updates/statemachine/UpdatesStateValue;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/updates/statemachine/UpdatesStateValue;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "Idle",
        "Checking",
        "Downloading",
        "Restarting",
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

.field private static final synthetic $VALUES:[Lexpo/modules/updates/statemachine/UpdatesStateValue;

.field public static final enum Checking:Lexpo/modules/updates/statemachine/UpdatesStateValue;

.field public static final enum Downloading:Lexpo/modules/updates/statemachine/UpdatesStateValue;

.field public static final enum Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

.field public static final enum Restarting:Lexpo/modules/updates/statemachine/UpdatesStateValue;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/updates/statemachine/UpdatesStateValue;
    .locals 4

    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    sget-object v1, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Checking:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Downloading:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    sget-object v3, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Restarting:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    filled-new-array {v0, v1, v2, v3}, [Lexpo/modules/updates/statemachine/UpdatesStateValue;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lexpo/modules/updates/statemachine/UpdatesStateValue;

    const/4 v1, 0x0

    const-string v2, "idle"

    const-string v3, "Idle"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/updates/statemachine/UpdatesStateValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    .line 8
    new-instance v0, Lexpo/modules/updates/statemachine/UpdatesStateValue;

    const/4 v1, 0x1

    const-string v2, "checking"

    const-string v3, "Checking"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/updates/statemachine/UpdatesStateValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Checking:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    .line 9
    new-instance v0, Lexpo/modules/updates/statemachine/UpdatesStateValue;

    const/4 v1, 0x2

    const-string v2, "downloading"

    const-string v3, "Downloading"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/updates/statemachine/UpdatesStateValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Downloading:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    .line 10
    new-instance v0, Lexpo/modules/updates/statemachine/UpdatesStateValue;

    const/4 v1, 0x3

    const-string v2, "restarting"

    const-string v3, "Restarting"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/updates/statemachine/UpdatesStateValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Restarting:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-static {}, Lexpo/modules/updates/statemachine/UpdatesStateValue;->$values()[Lexpo/modules/updates/statemachine/UpdatesStateValue;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/statemachine/UpdatesStateValue;->$VALUES:[Lexpo/modules/updates/statemachine/UpdatesStateValue;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/statemachine/UpdatesStateValue;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput-object p3, p0, Lexpo/modules/updates/statemachine/UpdatesStateValue;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/updates/statemachine/UpdatesStateValue;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateValue;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/updates/statemachine/UpdatesStateValue;
    .locals 1

    const-class v0, Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 11
    check-cast p0, Lexpo/modules/updates/statemachine/UpdatesStateValue;

    return-object p0
.end method

.method public static values()[Lexpo/modules/updates/statemachine/UpdatesStateValue;
    .locals 1

    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateValue;->$VALUES:[Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, [Lexpo/modules/updates/statemachine/UpdatesStateValue;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateValue;->value:Ljava/lang/String;

    return-object v0
.end method
