.class public final Lexpo/modules/updates/db/dao/JSONDataDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "JSONDataDao_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/db/dao/JSONDataDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lexpo/modules/updates/db/entity/JSONDataEntity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0014J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "expo/modules/updates/db/dao/JSONDataDao_Impl$1",
        "Landroidx/room/EntityInsertionAdapter;",
        "Lexpo/modules/updates/db/entity/JSONDataEntity;",
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
.field final synthetic this$0:Lexpo/modules/updates/db/dao/JSONDataDao_Impl;


# direct methods
.method constructor <init>(Landroidx/room/RoomDatabase;Lexpo/modules/updates/db/dao/JSONDataDao_Impl;)V
    .locals 0

    iput-object p2, p0, Lexpo/modules/updates/db/dao/JSONDataDao_Impl$1;->this$0:Lexpo/modules/updates/db/dao/JSONDataDao_Impl;

    .line 45
    invoke-direct {p0, p1}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lexpo/modules/updates/db/entity/JSONDataEntity;)V
    .locals 4

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/JSONDataEntity;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 52
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/JSONDataEntity;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 53
    iget-object v0, p0, Lexpo/modules/updates/db/dao/JSONDataDao_Impl$1;->this$0:Lexpo/modules/updates/db/dao/JSONDataDao_Impl;

    invoke-static {v0}, Lexpo/modules/updates/db/dao/JSONDataDao_Impl;->access$get__converters$p(Lexpo/modules/updates/db/dao/JSONDataDao_Impl;)Lexpo/modules/updates/db/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/JSONDataEntity;->getLastUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/updates/db/Converters;->dateToLong(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 55
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_0
    const/4 v0, 0x4

    .line 59
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/JSONDataEntity;->getScopeKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x5

    .line 60
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/JSONDataEntity;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Lexpo/modules/updates/db/entity/JSONDataEntity;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/db/dao/JSONDataDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lexpo/modules/updates/db/entity/JSONDataEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "INSERT OR ABORT INTO `json_data` (`key`,`value`,`last_updated`,`scope_key`,`id`) VALUES (?,?,?,?,nullif(?, 0))"

    return-object v0
.end method
