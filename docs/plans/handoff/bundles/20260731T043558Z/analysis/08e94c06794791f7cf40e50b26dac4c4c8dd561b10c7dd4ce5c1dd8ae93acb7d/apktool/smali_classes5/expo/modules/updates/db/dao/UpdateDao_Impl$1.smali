.class public final Lexpo/modules/updates/db/dao/UpdateDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "UpdateDao_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/db/dao/UpdateDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0014J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "expo/modules/updates/db/dao/UpdateDao_Impl$1",
        "Landroidx/room/EntityInsertionAdapter;",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "createQuery",
        "",
        "bind",
        "",
        "statement",
        "Landroidx/sqlite/db/SupportSQLiteStatement;",
        "entity",
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
.field final synthetic this$0:Lexpo/modules/updates/db/dao/UpdateDao_Impl;


# direct methods
.method constructor <init>(Landroidx/room/RoomDatabase;Lexpo/modules/updates/db/dao/UpdateDao_Impl;)V
    .locals 0

    iput-object p2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$1;->this$0:Lexpo/modules/updates/db/dao/UpdateDao_Impl;

    .line 64
    invoke-direct {p0, p1}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lexpo/modules/updates/db/entity/UpdateEntity;)V
    .locals 4

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$1;->this$0:Lexpo/modules/updates/db/dao/UpdateDao_Impl;

    invoke-static {v0}, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->access$get__converters$p(Lexpo/modules/updates/db/dao/UpdateDao_Impl;)Lexpo/modules/updates/db/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/updates/db/Converters;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v0

    const/4 v1, 0x1

    .line 70
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 71
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$1;->this$0:Lexpo/modules/updates/db/dao/UpdateDao_Impl;

    invoke-static {v0}, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->access$get__converters$p(Lexpo/modules/updates/db/dao/UpdateDao_Impl;)Lexpo/modules/updates/db/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getCommitTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/updates/db/Converters;->dateToLong(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 73
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_0
    const/4 v0, 0x3

    .line 77
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getRuntimeVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 78
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getScopeKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 79
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$1;->this$0:Lexpo/modules/updates/db/dao/UpdateDao_Impl;

    invoke-static {v0}, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->access$get__converters$p(Lexpo/modules/updates/db/dao/UpdateDao_Impl;)Lexpo/modules/updates/db/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getManifest()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/updates/db/Converters;->jsonObjectToString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 81
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 83
    :cond_1
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 85
    :goto_1
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getLaunchAssetId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_2

    .line 87
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 91
    :goto_2
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$1;->this$0:Lexpo/modules/updates/db/dao/UpdateDao_Impl;

    invoke-static {v0}, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->access$get__converters$p(Lexpo/modules/updates/db/dao/UpdateDao_Impl;)Lexpo/modules/updates/db/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getStatus()Lexpo/modules/updates/db/enums/UpdateStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/updates/db/Converters;->statusToInt(Lexpo/modules/updates/db/enums/UpdateStatus;)I

    move-result v0

    const/4 v1, 0x7

    int-to-long v2, v0

    .line 92
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 93
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getKeep()Z

    move-result v0

    const/16 v1, 0x8

    int-to-long v2, v0

    .line 94
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 95
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$1;->this$0:Lexpo/modules/updates/db/dao/UpdateDao_Impl;

    invoke-static {v0}, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->access$get__converters$p(Lexpo/modules/updates/db/dao/UpdateDao_Impl;)Lexpo/modules/updates/db/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getLastAccessed()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/updates/db/Converters;->dateToLong(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_3

    .line 97
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 99
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 101
    :goto_3
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getSuccessfulLaunchCount()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 102
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getFailedLaunchCount()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0xb

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p2, Lexpo/modules/updates/db/entity/UpdateEntity;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/db/dao/UpdateDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lexpo/modules/updates/db/entity/UpdateEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "INSERT OR ABORT INTO `updates` (`id`,`commit_time`,`runtime_version`,`scope_key`,`manifest`,`launch_asset_id`,`status`,`keep`,`last_accessed`,`successful_launch_count`,`failed_launch_count`) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
