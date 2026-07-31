.class public final enum Lexpo/modules/updates/codesigning/ValidationResult;
.super Ljava/lang/Enum;
.source "CodeSigningConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/updates/codesigning/ValidationResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lexpo/modules/updates/codesigning/ValidationResult;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "VALID",
        "INVALID",
        "SKIPPED",
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

.field private static final synthetic $VALUES:[Lexpo/modules/updates/codesigning/ValidationResult;

.field public static final enum INVALID:Lexpo/modules/updates/codesigning/ValidationResult;

.field public static final enum SKIPPED:Lexpo/modules/updates/codesigning/ValidationResult;

.field public static final enum VALID:Lexpo/modules/updates/codesigning/ValidationResult;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/updates/codesigning/ValidationResult;
    .locals 3

    sget-object v0, Lexpo/modules/updates/codesigning/ValidationResult;->VALID:Lexpo/modules/updates/codesigning/ValidationResult;

    sget-object v1, Lexpo/modules/updates/codesigning/ValidationResult;->INVALID:Lexpo/modules/updates/codesigning/ValidationResult;

    sget-object v2, Lexpo/modules/updates/codesigning/ValidationResult;->SKIPPED:Lexpo/modules/updates/codesigning/ValidationResult;

    filled-new-array {v0, v1, v2}, [Lexpo/modules/updates/codesigning/ValidationResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lexpo/modules/updates/codesigning/ValidationResult;

    const-string v1, "VALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lexpo/modules/updates/codesigning/ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/updates/codesigning/ValidationResult;->VALID:Lexpo/modules/updates/codesigning/ValidationResult;

    .line 15
    new-instance v0, Lexpo/modules/updates/codesigning/ValidationResult;

    const-string v1, "INVALID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lexpo/modules/updates/codesigning/ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/updates/codesigning/ValidationResult;->INVALID:Lexpo/modules/updates/codesigning/ValidationResult;

    .line 16
    new-instance v0, Lexpo/modules/updates/codesigning/ValidationResult;

    const-string v1, "SKIPPED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lexpo/modules/updates/codesigning/ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/updates/codesigning/ValidationResult;->SKIPPED:Lexpo/modules/updates/codesigning/ValidationResult;

    invoke-static {}, Lexpo/modules/updates/codesigning/ValidationResult;->$values()[Lexpo/modules/updates/codesigning/ValidationResult;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/codesigning/ValidationResult;->$VALUES:[Lexpo/modules/updates/codesigning/ValidationResult;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/codesigning/ValidationResult;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/updates/codesigning/ValidationResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/updates/codesigning/ValidationResult;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/updates/codesigning/ValidationResult;
    .locals 1

    const-class v0, Lexpo/modules/updates/codesigning/ValidationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 17
    check-cast p0, Lexpo/modules/updates/codesigning/ValidationResult;

    return-object p0
.end method

.method public static values()[Lexpo/modules/updates/codesigning/ValidationResult;
    .locals 1

    sget-object v0, Lexpo/modules/updates/codesigning/ValidationResult;->$VALUES:[Lexpo/modules/updates/codesigning/ValidationResult;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, [Lexpo/modules/updates/codesigning/ValidationResult;

    return-object v0
.end method
