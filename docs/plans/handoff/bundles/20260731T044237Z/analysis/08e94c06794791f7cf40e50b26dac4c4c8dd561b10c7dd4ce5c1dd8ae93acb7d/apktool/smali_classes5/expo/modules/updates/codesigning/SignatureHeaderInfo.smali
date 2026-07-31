.class public final Lexpo/modules/updates/codesigning/SignatureHeaderInfo;
.super Ljava/lang/Object;
.source "SignatureHeaderInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/codesigning/SignatureHeaderInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/updates/codesigning/SignatureHeaderInfo;",
        "",
        "signature",
        "",
        "keyId",
        "algorithm",
        "Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;)V",
        "getSignature",
        "()Ljava/lang/String;",
        "getKeyId",
        "getAlgorithm",
        "()Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field public static final Companion:Lexpo/modules/updates/codesigning/SignatureHeaderInfo$Companion;


# instance fields
.field private final algorithm:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

.field private final keyId:Ljava/lang/String;

.field private final signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/codesigning/SignatureHeaderInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->Companion:Lexpo/modules/updates/codesigning/SignatureHeaderInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;)V
    .locals 1

    const-string v0, "signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->signature:Ljava/lang/String;

    iput-object p2, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->keyId:Ljava/lang/String;

    iput-object p3, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->algorithm:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/updates/codesigning/SignatureHeaderInfo;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;ILjava/lang/Object;)Lexpo/modules/updates/codesigning/SignatureHeaderInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->signature:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->keyId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->algorithm:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->copy(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;)Lexpo/modules/updates/codesigning/SignatureHeaderInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;
    .locals 1

    iget-object v0, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->algorithm:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;)Lexpo/modules/updates/codesigning/SignatureHeaderInfo;
    .locals 1

    const-string v0, "signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;

    iget-object v1, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->signature:Ljava/lang/String;

    iget-object v3, p1, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->signature:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->keyId:Ljava/lang/String;

    iget-object v3, p1, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->keyId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->algorithm:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    iget-object p1, p1, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->algorithm:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAlgorithm()Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;
    .locals 1

    .line 10
    iget-object v0, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->algorithm:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    return-object v0
.end method

.method public final getKeyId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->signature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->keyId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->algorithm:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    invoke-virtual {v1}, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->signature:Ljava/lang/String;

    iget-object v1, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->keyId:Ljava/lang/String;

    iget-object v2, p0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->algorithm:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SignatureHeaderInfo(signature="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", keyId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
