.class public final enum Lrnauthenticator/authenticator/Config$Locale;
.super Ljava/lang/Enum;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrnauthenticator/authenticator/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Locale"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrnauthenticator/authenticator/Config$Locale$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrnauthenticator/authenticator/Config$Locale;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u000e\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0008\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lrnauthenticator/authenticator/Config$Locale;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "EN_AU",
        "EN_SG",
        "EN_MY",
        "MS_MY",
        "ID_ID",
        "TH_TH",
        "toShort",
        "toShort$propertyguru_react_native_authenticator_release",
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

.field private static final synthetic $VALUES:[Lrnauthenticator/authenticator/Config$Locale;

.field public static final enum EN_AU:Lrnauthenticator/authenticator/Config$Locale;

.field public static final enum EN_MY:Lrnauthenticator/authenticator/Config$Locale;

.field public static final enum EN_SG:Lrnauthenticator/authenticator/Config$Locale;

.field public static final enum ID_ID:Lrnauthenticator/authenticator/Config$Locale;

.field public static final enum MS_MY:Lrnauthenticator/authenticator/Config$Locale;

.field public static final enum TH_TH:Lrnauthenticator/authenticator/Config$Locale;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lrnauthenticator/authenticator/Config$Locale;
    .locals 6

    sget-object v0, Lrnauthenticator/authenticator/Config$Locale;->EN_AU:Lrnauthenticator/authenticator/Config$Locale;

    sget-object v1, Lrnauthenticator/authenticator/Config$Locale;->EN_SG:Lrnauthenticator/authenticator/Config$Locale;

    sget-object v2, Lrnauthenticator/authenticator/Config$Locale;->EN_MY:Lrnauthenticator/authenticator/Config$Locale;

    sget-object v3, Lrnauthenticator/authenticator/Config$Locale;->MS_MY:Lrnauthenticator/authenticator/Config$Locale;

    sget-object v4, Lrnauthenticator/authenticator/Config$Locale;->ID_ID:Lrnauthenticator/authenticator/Config$Locale;

    sget-object v5, Lrnauthenticator/authenticator/Config$Locale;->TH_TH:Lrnauthenticator/authenticator/Config$Locale;

    filled-new-array/range {v0 .. v5}, [Lrnauthenticator/authenticator/Config$Locale;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lrnauthenticator/authenticator/Config$Locale;

    const/4 v1, 0x0

    const-string v2, "en_AU"

    const-string v3, "EN_AU"

    invoke-direct {v0, v3, v1, v2}, Lrnauthenticator/authenticator/Config$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lrnauthenticator/authenticator/Config$Locale;->EN_AU:Lrnauthenticator/authenticator/Config$Locale;

    .line 20
    new-instance v0, Lrnauthenticator/authenticator/Config$Locale;

    const/4 v1, 0x1

    const-string v2, "en_SG"

    const-string v3, "EN_SG"

    invoke-direct {v0, v3, v1, v2}, Lrnauthenticator/authenticator/Config$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lrnauthenticator/authenticator/Config$Locale;->EN_SG:Lrnauthenticator/authenticator/Config$Locale;

    .line 21
    new-instance v0, Lrnauthenticator/authenticator/Config$Locale;

    const/4 v1, 0x2

    const-string v2, "en_MY"

    const-string v3, "EN_MY"

    invoke-direct {v0, v3, v1, v2}, Lrnauthenticator/authenticator/Config$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lrnauthenticator/authenticator/Config$Locale;->EN_MY:Lrnauthenticator/authenticator/Config$Locale;

    .line 22
    new-instance v0, Lrnauthenticator/authenticator/Config$Locale;

    const/4 v1, 0x3

    const-string/jumbo v2, "ms_MY"

    const-string v3, "MS_MY"

    invoke-direct {v0, v3, v1, v2}, Lrnauthenticator/authenticator/Config$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lrnauthenticator/authenticator/Config$Locale;->MS_MY:Lrnauthenticator/authenticator/Config$Locale;

    .line 23
    new-instance v0, Lrnauthenticator/authenticator/Config$Locale;

    const/4 v1, 0x4

    const-string v2, "id_ID"

    const-string v3, "ID_ID"

    invoke-direct {v0, v3, v1, v2}, Lrnauthenticator/authenticator/Config$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lrnauthenticator/authenticator/Config$Locale;->ID_ID:Lrnauthenticator/authenticator/Config$Locale;

    .line 24
    new-instance v0, Lrnauthenticator/authenticator/Config$Locale;

    const/4 v1, 0x5

    const-string/jumbo v2, "th_TH"

    const-string v3, "TH_TH"

    invoke-direct {v0, v3, v1, v2}, Lrnauthenticator/authenticator/Config$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lrnauthenticator/authenticator/Config$Locale;->TH_TH:Lrnauthenticator/authenticator/Config$Locale;

    invoke-static {}, Lrnauthenticator/authenticator/Config$Locale;->$values()[Lrnauthenticator/authenticator/Config$Locale;

    move-result-object v0

    sput-object v0, Lrnauthenticator/authenticator/Config$Locale;->$VALUES:[Lrnauthenticator/authenticator/Config$Locale;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lrnauthenticator/authenticator/Config$Locale;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lrnauthenticator/authenticator/Config$Locale;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lrnauthenticator/authenticator/Config$Locale;",
            ">;"
        }
    .end annotation

    sget-object v0, Lrnauthenticator/authenticator/Config$Locale;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrnauthenticator/authenticator/Config$Locale;
    .locals 1

    const-class v0, Lrnauthenticator/authenticator/Config$Locale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 34
    check-cast p0, Lrnauthenticator/authenticator/Config$Locale;

    return-object p0
.end method

.method public static values()[Lrnauthenticator/authenticator/Config$Locale;
    .locals 1

    sget-object v0, Lrnauthenticator/authenticator/Config$Locale;->$VALUES:[Lrnauthenticator/authenticator/Config$Locale;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, [Lrnauthenticator/authenticator/Config$Locale;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lrnauthenticator/authenticator/Config$Locale;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toShort$propertyguru_react_native_authenticator_release()Ljava/lang/String;
    .locals 2

    .line 28
    sget-object v0, Lrnauthenticator/authenticator/Config$Locale$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lrnauthenticator/authenticator/Config$Locale;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 31
    const-string v0, "en"

    goto :goto_0

    .line 30
    :cond_0
    const-string/jumbo v0, "th"

    goto :goto_0

    .line 29
    :cond_1
    const-string v0, "id"

    :goto_0
    return-object v0
.end method
