.class public final enum Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;
.super Ljava/lang/Enum;
.source "CodeSigningAlgorithm.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/codesigning/CodeSigningAlgorithm$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;",
        "",
        "algorithmName",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getAlgorithmName",
        "()Ljava/lang/String;",
        "RSA_SHA256",
        "Companion",
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

.field private static final synthetic $VALUES:[Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

.field public static final Companion:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm$Companion;

.field public static final enum RSA_SHA256:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;


# instance fields
.field private final algorithmName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;
    .locals 1

    sget-object v0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->RSA_SHA256:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    filled-new-array {v0}, [Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    const/4 v1, 0x0

    const-string v2, "rsa-v1_5-sha256"

    const-string v3, "RSA_SHA256"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->RSA_SHA256:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    invoke-static {}, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->$values()[Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->$VALUES:[Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->Companion:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm$Companion;

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

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->algorithmName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;
    .locals 1

    const-class v0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 20
    check-cast p0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    return-object p0
.end method

.method public static values()[Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;
    .locals 1

    sget-object v0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->$VALUES:[Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, [Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    return-object v0
.end method


# virtual methods
.method public final getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->algorithmName:Ljava/lang/String;

    return-object v0
.end method
