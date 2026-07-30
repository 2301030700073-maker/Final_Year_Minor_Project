.class public final Lexpo/modules/updates/loader/Loader$LoaderResult;
.super Ljava/lang/Object;
.source "Loader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/loader/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoaderResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/updates/loader/Loader$LoaderResult;",
        "",
        "updateEntity",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "updateDirective",
        "Lexpo/modules/updates/loader/UpdateDirective;",
        "<init>",
        "(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/loader/UpdateDirective;)V",
        "getUpdateEntity",
        "()Lexpo/modules/updates/db/entity/UpdateEntity;",
        "getUpdateDirective",
        "()Lexpo/modules/updates/loader/UpdateDirective;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final updateDirective:Lexpo/modules/updates/loader/UpdateDirective;

.field private final updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;


# direct methods
.method public constructor <init>(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/loader/UpdateDirective;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    iput-object p2, p0, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateDirective:Lexpo/modules/updates/loader/UpdateDirective;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/updates/loader/Loader$LoaderResult;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/loader/UpdateDirective;ILjava/lang/Object;)Lexpo/modules/updates/loader/Loader$LoaderResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateDirective:Lexpo/modules/updates/loader/UpdateDirective;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/loader/Loader$LoaderResult;->copy(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/loader/UpdateDirective;)Lexpo/modules/updates/loader/Loader$LoaderResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lexpo/modules/updates/db/entity/UpdateEntity;
    .locals 1

    iget-object v0, p0, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    return-object v0
.end method

.method public final component2()Lexpo/modules/updates/loader/UpdateDirective;
    .locals 1

    iget-object v0, p0, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateDirective:Lexpo/modules/updates/loader/UpdateDirective;

    return-object v0
.end method

.method public final copy(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/loader/UpdateDirective;)Lexpo/modules/updates/loader/Loader$LoaderResult;
    .locals 1

    new-instance v0, Lexpo/modules/updates/loader/Loader$LoaderResult;

    invoke-direct {v0, p1, p2}, Lexpo/modules/updates/loader/Loader$LoaderResult;-><init>(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/loader/UpdateDirective;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/updates/loader/Loader$LoaderResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/updates/loader/Loader$LoaderResult;

    iget-object v1, p0, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    iget-object v3, p1, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateDirective:Lexpo/modules/updates/loader/UpdateDirective;

    iget-object p1, p1, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateDirective:Lexpo/modules/updates/loader/UpdateDirective;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getUpdateDirective()Lexpo/modules/updates/loader/UpdateDirective;
    .locals 1

    .line 43
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateDirective:Lexpo/modules/updates/loader/UpdateDirective;

    return-object v0
.end method

.method public final getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;
    .locals 1

    .line 43
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateDirective:Lexpo/modules/updates/loader/UpdateDirective;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lexpo/modules/updates/loader/UpdateDirective;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    iget-object v1, p0, Lexpo/modules/updates/loader/Loader$LoaderResult;->updateDirective:Lexpo/modules/updates/loader/UpdateDirective;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LoaderResult(updateEntity="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", updateDirective="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
