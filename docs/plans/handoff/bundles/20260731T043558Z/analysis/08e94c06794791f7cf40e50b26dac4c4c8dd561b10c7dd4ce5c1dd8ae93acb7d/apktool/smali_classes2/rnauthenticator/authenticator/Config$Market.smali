.class public final enum Lrnauthenticator/authenticator/Config$Market;
.super Ljava/lang/Enum;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrnauthenticator/authenticator/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Market"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrnauthenticator/authenticator/Config$Market;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lrnauthenticator/authenticator/Config$Market;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SINGAPORE",
        "MALAYSIA",
        "THAILAND",
        "INDONESIA",
        "propertyguru_react-native-authenticator_release"
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

.field private static final synthetic $VALUES:[Lrnauthenticator/authenticator/Config$Market;

.field public static final enum INDONESIA:Lrnauthenticator/authenticator/Config$Market;

.field public static final enum MALAYSIA:Lrnauthenticator/authenticator/Config$Market;

.field public static final enum SINGAPORE:Lrnauthenticator/authenticator/Config$Market;

.field public static final enum THAILAND:Lrnauthenticator/authenticator/Config$Market;


# direct methods
.method private static final synthetic $values()[Lrnauthenticator/authenticator/Config$Market;
    .locals 4

    sget-object v0, Lrnauthenticator/authenticator/Config$Market;->SINGAPORE:Lrnauthenticator/authenticator/Config$Market;

    sget-object v1, Lrnauthenticator/authenticator/Config$Market;->MALAYSIA:Lrnauthenticator/authenticator/Config$Market;

    sget-object v2, Lrnauthenticator/authenticator/Config$Market;->THAILAND:Lrnauthenticator/authenticator/Config$Market;

    sget-object v3, Lrnauthenticator/authenticator/Config$Market;->INDONESIA:Lrnauthenticator/authenticator/Config$Market;

    filled-new-array {v0, v1, v2, v3}, [Lrnauthenticator/authenticator/Config$Market;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lrnauthenticator/authenticator/Config$Market;

    const-string v1, "SINGAPORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/Config$Market;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/Config$Market;->SINGAPORE:Lrnauthenticator/authenticator/Config$Market;

    .line 44
    new-instance v0, Lrnauthenticator/authenticator/Config$Market;

    const-string v1, "MALAYSIA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/Config$Market;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/Config$Market;->MALAYSIA:Lrnauthenticator/authenticator/Config$Market;

    .line 45
    new-instance v0, Lrnauthenticator/authenticator/Config$Market;

    const-string v1, "THAILAND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/Config$Market;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/Config$Market;->THAILAND:Lrnauthenticator/authenticator/Config$Market;

    .line 46
    new-instance v0, Lrnauthenticator/authenticator/Config$Market;

    const-string v1, "INDONESIA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/Config$Market;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/Config$Market;->INDONESIA:Lrnauthenticator/authenticator/Config$Market;

    invoke-static {}, Lrnauthenticator/authenticator/Config$Market;->$values()[Lrnauthenticator/authenticator/Config$Market;

    move-result-object v0

    sput-object v0, Lrnauthenticator/authenticator/Config$Market;->$VALUES:[Lrnauthenticator/authenticator/Config$Market;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lrnauthenticator/authenticator/Config$Market;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lrnauthenticator/authenticator/Config$Market;",
            ">;"
        }
    .end annotation

    sget-object v0, Lrnauthenticator/authenticator/Config$Market;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrnauthenticator/authenticator/Config$Market;
    .locals 1

    const-class v0, Lrnauthenticator/authenticator/Config$Market;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 47
    check-cast p0, Lrnauthenticator/authenticator/Config$Market;

    return-object p0
.end method

.method public static values()[Lrnauthenticator/authenticator/Config$Market;
    .locals 1

    sget-object v0, Lrnauthenticator/authenticator/Config$Market;->$VALUES:[Lrnauthenticator/authenticator/Config$Market;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 47
    check-cast v0, [Lrnauthenticator/authenticator/Config$Market;

    return-object v0
.end method
