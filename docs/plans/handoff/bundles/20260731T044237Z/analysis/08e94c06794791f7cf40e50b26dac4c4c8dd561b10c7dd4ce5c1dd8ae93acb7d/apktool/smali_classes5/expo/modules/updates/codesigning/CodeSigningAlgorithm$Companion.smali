.class public final Lexpo/modules/updates/codesigning/CodeSigningAlgorithm$Companion;
.super Ljava/lang/Object;
.source "CodeSigningAlgorithm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/updates/codesigning/CodeSigningAlgorithm$Companion;",
        "",
        "<init>",
        "()V",
        "parseFromString",
        "Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;",
        "str",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseFromString(Ljava/lang/String;)Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;
    .locals 3

    .line 14
    sget-object v0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->RSA_SHA256:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    invoke-virtual {v0}, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->RSA_SHA256:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 15
    sget-object p1, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->RSA_SHA256:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    :goto_0
    return-object p1

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid code signing algorithm name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
