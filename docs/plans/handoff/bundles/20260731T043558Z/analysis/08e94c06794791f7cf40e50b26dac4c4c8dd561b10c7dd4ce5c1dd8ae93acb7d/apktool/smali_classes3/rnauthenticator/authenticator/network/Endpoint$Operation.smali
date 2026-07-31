.class public final enum Lrnauthenticator/authenticator/network/Endpoint$Operation;
.super Ljava/lang/Enum;
.source "Endpoint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrnauthenticator/authenticator/network/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrnauthenticator/authenticator/network/Endpoint$Operation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0010\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lrnauthenticator/authenticator/network/Endpoint$Operation;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "LOGIN",
        "OTP_LOGIN",
        "SIGN_UP",
        "TOKEN_EXCHANGE",
        "RESET_PASSWORD",
        "VERIFY_EMAIL",
        "UPDATE_PASSWORD",
        "VERIFY_TOKEN",
        "USER_EXIST",
        "DELETE_ACCOUNT",
        "GENERATE_OTP",
        "SET_PASSWORD",
        "VERIFY_OTP",
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

.field private static final synthetic $VALUES:[Lrnauthenticator/authenticator/network/Endpoint$Operation;

.field public static final enum DELETE_ACCOUNT:Lrnauthenticator/authenticator/network/Endpoint$Operation;

.field public static final enum GENERATE_OTP:Lrnauthenticator/authenticator/network/Endpoint$Operation;

.field public static final enum LOGIN:Lrnauthenticator/authenticator/network/Endpoint$Operation;

.field public static final enum OTP_LOGIN:Lrnauthenticator/authenticator/network/Endpoint$Operation;

.field public static final enum RESET_PASSWORD:Lrnauthenticator/authenticator/network/Endpoint$Operation;

.field public static final enum SET_PASSWORD:Lrnauthenticator/authenticator/network/Endpoint$Operation;

.field public static final enum SIGN_UP:Lrnauthenticator/authenticator/network/Endpoint$Operation;

.field public static final enum TOKEN_EXCHANGE:Lrnauthenticator/authenticator/network/Endpoint$Operation;

.field public static final enum UPDATE_PASSWORD:Lrnauthenticator/authenticator/network/Endpoint$Operation;

.field public static final enum USER_EXIST:Lrnauthenticator/authenticator/network/Endpoint$Operation;

.field public static final enum VERIFY_EMAIL:Lrnauthenticator/authenticator/network/Endpoint$Operation;

.field public static final enum VERIFY_OTP:Lrnauthenticator/authenticator/network/Endpoint$Operation;

.field public static final enum VERIFY_TOKEN:Lrnauthenticator/authenticator/network/Endpoint$Operation;


# direct methods
.method private static final synthetic $values()[Lrnauthenticator/authenticator/network/Endpoint$Operation;
    .locals 13

    sget-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->LOGIN:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    sget-object v1, Lrnauthenticator/authenticator/network/Endpoint$Operation;->OTP_LOGIN:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    sget-object v2, Lrnauthenticator/authenticator/network/Endpoint$Operation;->SIGN_UP:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    sget-object v3, Lrnauthenticator/authenticator/network/Endpoint$Operation;->TOKEN_EXCHANGE:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    sget-object v4, Lrnauthenticator/authenticator/network/Endpoint$Operation;->RESET_PASSWORD:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    sget-object v5, Lrnauthenticator/authenticator/network/Endpoint$Operation;->VERIFY_EMAIL:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    sget-object v6, Lrnauthenticator/authenticator/network/Endpoint$Operation;->UPDATE_PASSWORD:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    sget-object v7, Lrnauthenticator/authenticator/network/Endpoint$Operation;->VERIFY_TOKEN:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    sget-object v8, Lrnauthenticator/authenticator/network/Endpoint$Operation;->USER_EXIST:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    sget-object v9, Lrnauthenticator/authenticator/network/Endpoint$Operation;->DELETE_ACCOUNT:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    sget-object v10, Lrnauthenticator/authenticator/network/Endpoint$Operation;->GENERATE_OTP:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    sget-object v11, Lrnauthenticator/authenticator/network/Endpoint$Operation;->SET_PASSWORD:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    sget-object v12, Lrnauthenticator/authenticator/network/Endpoint$Operation;->VERIFY_OTP:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    filled-new-array/range {v0 .. v12}, [Lrnauthenticator/authenticator/network/Endpoint$Operation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;

    const-string v1, "LOGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/Endpoint$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->LOGIN:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    .line 12
    new-instance v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;

    const-string v1, "OTP_LOGIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/Endpoint$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->OTP_LOGIN:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    .line 13
    new-instance v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;

    const-string v1, "SIGN_UP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/Endpoint$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->SIGN_UP:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    .line 14
    new-instance v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;

    const-string v1, "TOKEN_EXCHANGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/Endpoint$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->TOKEN_EXCHANGE:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    .line 15
    new-instance v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;

    const-string v1, "RESET_PASSWORD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/Endpoint$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->RESET_PASSWORD:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    .line 16
    new-instance v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;

    const-string v1, "VERIFY_EMAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/Endpoint$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->VERIFY_EMAIL:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    .line 17
    new-instance v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;

    const-string v1, "UPDATE_PASSWORD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/Endpoint$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->UPDATE_PASSWORD:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    .line 18
    new-instance v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;

    const-string v1, "VERIFY_TOKEN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/Endpoint$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->VERIFY_TOKEN:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    .line 19
    new-instance v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;

    const-string v1, "USER_EXIST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/Endpoint$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->USER_EXIST:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    .line 20
    new-instance v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;

    const-string v1, "DELETE_ACCOUNT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/Endpoint$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->DELETE_ACCOUNT:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    .line 21
    new-instance v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;

    const-string v1, "GENERATE_OTP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/Endpoint$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->GENERATE_OTP:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    .line 22
    new-instance v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;

    const-string v1, "SET_PASSWORD"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/Endpoint$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->SET_PASSWORD:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    .line 23
    new-instance v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;

    const-string v1, "VERIFY_OTP"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/Endpoint$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->VERIFY_OTP:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-static {}, Lrnauthenticator/authenticator/network/Endpoint$Operation;->$values()[Lrnauthenticator/authenticator/network/Endpoint$Operation;

    move-result-object v0

    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->$VALUES:[Lrnauthenticator/authenticator/network/Endpoint$Operation;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lrnauthenticator/authenticator/network/Endpoint$Operation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrnauthenticator/authenticator/network/Endpoint$Operation;
    .locals 1

    const-class v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 24
    check-cast p0, Lrnauthenticator/authenticator/network/Endpoint$Operation;

    return-object p0
.end method

.method public static values()[Lrnauthenticator/authenticator/network/Endpoint$Operation;
    .locals 1

    sget-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->$VALUES:[Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 24
    check-cast v0, [Lrnauthenticator/authenticator/network/Endpoint$Operation;

    return-object v0
.end method
