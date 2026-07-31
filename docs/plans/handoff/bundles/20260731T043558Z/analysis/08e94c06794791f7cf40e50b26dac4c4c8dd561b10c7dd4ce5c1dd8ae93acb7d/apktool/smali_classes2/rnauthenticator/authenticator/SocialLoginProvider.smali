.class public final enum Lrnauthenticator/authenticator/SocialLoginProvider;
.super Ljava/lang/Enum;
.source "SocialLoginProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrnauthenticator/authenticator/SocialLoginProvider;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lrnauthenticator/authenticator/SocialLoginProvider;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "FACEBOOK",
        "GOOGLE",
        "APPLE",
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

.field private static final synthetic $VALUES:[Lrnauthenticator/authenticator/SocialLoginProvider;

.field public static final enum APPLE:Lrnauthenticator/authenticator/SocialLoginProvider;

.field public static final enum FACEBOOK:Lrnauthenticator/authenticator/SocialLoginProvider;

.field public static final enum GOOGLE:Lrnauthenticator/authenticator/SocialLoginProvider;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lrnauthenticator/authenticator/SocialLoginProvider;
    .locals 3

    sget-object v0, Lrnauthenticator/authenticator/SocialLoginProvider;->FACEBOOK:Lrnauthenticator/authenticator/SocialLoginProvider;

    sget-object v1, Lrnauthenticator/authenticator/SocialLoginProvider;->GOOGLE:Lrnauthenticator/authenticator/SocialLoginProvider;

    sget-object v2, Lrnauthenticator/authenticator/SocialLoginProvider;->APPLE:Lrnauthenticator/authenticator/SocialLoginProvider;

    filled-new-array {v0, v1, v2}, [Lrnauthenticator/authenticator/SocialLoginProvider;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lrnauthenticator/authenticator/SocialLoginProvider;

    const/4 v1, 0x0

    const-string v2, "facebook"

    const-string v3, "FACEBOOK"

    invoke-direct {v0, v3, v1, v2}, Lrnauthenticator/authenticator/SocialLoginProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lrnauthenticator/authenticator/SocialLoginProvider;->FACEBOOK:Lrnauthenticator/authenticator/SocialLoginProvider;

    .line 5
    new-instance v0, Lrnauthenticator/authenticator/SocialLoginProvider;

    const/4 v1, 0x1

    const-string v2, "google"

    const-string v3, "GOOGLE"

    invoke-direct {v0, v3, v1, v2}, Lrnauthenticator/authenticator/SocialLoginProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lrnauthenticator/authenticator/SocialLoginProvider;->GOOGLE:Lrnauthenticator/authenticator/SocialLoginProvider;

    .line 6
    new-instance v0, Lrnauthenticator/authenticator/SocialLoginProvider;

    const/4 v1, 0x2

    const-string v2, "apple"

    const-string v3, "APPLE"

    invoke-direct {v0, v3, v1, v2}, Lrnauthenticator/authenticator/SocialLoginProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lrnauthenticator/authenticator/SocialLoginProvider;->APPLE:Lrnauthenticator/authenticator/SocialLoginProvider;

    invoke-static {}, Lrnauthenticator/authenticator/SocialLoginProvider;->$values()[Lrnauthenticator/authenticator/SocialLoginProvider;

    move-result-object v0

    sput-object v0, Lrnauthenticator/authenticator/SocialLoginProvider;->$VALUES:[Lrnauthenticator/authenticator/SocialLoginProvider;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lrnauthenticator/authenticator/SocialLoginProvider;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lrnauthenticator/authenticator/SocialLoginProvider;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lrnauthenticator/authenticator/SocialLoginProvider;",
            ">;"
        }
    .end annotation

    sget-object v0, Lrnauthenticator/authenticator/SocialLoginProvider;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrnauthenticator/authenticator/SocialLoginProvider;
    .locals 1

    const-class v0, Lrnauthenticator/authenticator/SocialLoginProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 7
    check-cast p0, Lrnauthenticator/authenticator/SocialLoginProvider;

    return-object p0
.end method

.method public static values()[Lrnauthenticator/authenticator/SocialLoginProvider;
    .locals 1

    sget-object v0, Lrnauthenticator/authenticator/SocialLoginProvider;->$VALUES:[Lrnauthenticator/authenticator/SocialLoginProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, [Lrnauthenticator/authenticator/SocialLoginProvider;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lrnauthenticator/authenticator/SocialLoginProvider;->value:Ljava/lang/String;

    return-object v0
.end method
