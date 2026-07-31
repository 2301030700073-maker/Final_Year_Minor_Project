.class public final enum Lrnauthenticator/authenticator/network/http/HttpRequest$Method;
.super Ljava/lang/Enum;
.source "HttpRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrnauthenticator/authenticator/network/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrnauthenticator/authenticator/network/http/HttpRequest$Method;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lrnauthenticator/authenticator/network/http/HttpRequest$Method;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "GET",
        "POST",
        "DELETE",
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

.field private static final synthetic $VALUES:[Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

.field public static final enum DELETE:Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

.field public static final enum GET:Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

.field public static final enum POST:Lrnauthenticator/authenticator/network/http/HttpRequest$Method;


# direct methods
.method private static final synthetic $values()[Lrnauthenticator/authenticator/network/http/HttpRequest$Method;
    .locals 3

    sget-object v0, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->GET:Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    sget-object v1, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->POST:Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    sget-object v2, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->DELETE:Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    filled-new-array {v0, v1, v2}, [Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->GET:Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    new-instance v0, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    const-string v1, "POST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->POST:Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    new-instance v0, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    const-string v1, "DELETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->DELETE:Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    invoke-static {}, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->$values()[Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    move-result-object v0

    sput-object v0, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->$VALUES:[Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lrnauthenticator/authenticator/network/http/HttpRequest$Method;",
            ">;"
        }
    .end annotation

    sget-object v0, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrnauthenticator/authenticator/network/http/HttpRequest$Method;
    .locals 1

    const-class v0, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 14
    check-cast p0, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    return-object p0
.end method

.method public static values()[Lrnauthenticator/authenticator/network/http/HttpRequest$Method;
    .locals 1

    sget-object v0, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->$VALUES:[Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, [Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    return-object v0
.end method
