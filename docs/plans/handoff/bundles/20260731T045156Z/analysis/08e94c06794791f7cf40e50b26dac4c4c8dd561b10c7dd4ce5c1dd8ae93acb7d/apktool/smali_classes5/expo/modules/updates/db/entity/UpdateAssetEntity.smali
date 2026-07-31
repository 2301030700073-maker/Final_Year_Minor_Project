.class public final Lexpo/modules/updates/db/entity/UpdateAssetEntity;
.super Ljava/lang/Object;
.source "UpdateAssetEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/updates/db/entity/UpdateAssetEntity;",
        "",
        "updateId",
        "Ljava/util/UUID;",
        "assetId",
        "",
        "<init>",
        "(Ljava/util/UUID;J)V",
        "getUpdateId",
        "()Ljava/util/UUID;",
        "setUpdateId",
        "(Ljava/util/UUID;)V",
        "getAssetId",
        "()J",
        "setAssetId",
        "(J)V",
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
.field private assetId:J

.field private updateId:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;J)V
    .locals 1

    const-string v0, "updateId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lexpo/modules/updates/db/entity/UpdateAssetEntity;->updateId:Ljava/util/UUID;

    .line 36
    iput-wide p2, p0, Lexpo/modules/updates/db/entity/UpdateAssetEntity;->assetId:J

    return-void
.end method


# virtual methods
.method public final getAssetId()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lexpo/modules/updates/db/entity/UpdateAssetEntity;->assetId:J

    return-wide v0
.end method

.method public final getUpdateId()Ljava/util/UUID;
    .locals 1

    .line 35
    iget-object v0, p0, Lexpo/modules/updates/db/entity/UpdateAssetEntity;->updateId:Ljava/util/UUID;

    return-object v0
.end method

.method public final setAssetId(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lexpo/modules/updates/db/entity/UpdateAssetEntity;->assetId:J

    return-void
.end method

.method public final setUpdateId(Ljava/util/UUID;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lexpo/modules/updates/db/entity/UpdateAssetEntity;->updateId:Ljava/util/UUID;

    return-void
.end method
