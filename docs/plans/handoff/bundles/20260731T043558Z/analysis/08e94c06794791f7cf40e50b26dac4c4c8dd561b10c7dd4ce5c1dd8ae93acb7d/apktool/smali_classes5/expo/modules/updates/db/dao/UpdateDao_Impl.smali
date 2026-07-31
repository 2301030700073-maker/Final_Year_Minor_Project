.class public final Lexpo/modules/updates/db/dao/UpdateDao_Impl;
.super Lexpo/modules/updates/db/dao/UpdateDao;
.source "UpdateDao_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/db/dao/UpdateDao_Impl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u0000 <2\u00020\u0001:\u0001<B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0008H\u0016J\u0016\u0010\u0018\u001a\u00020\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0014J\u0018\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020 H\u0014J\u0018\u0010$\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010%\u001a\u00020&H\u0016J\u0018\u0010\'\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010(\u001a\u00020)H\u0016J\u0018\u0010*\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010+\u001a\u00020)H\u0014J\u0010\u0010,\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0014J\u0010\u0010-\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0016J$\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001a2\u0006\u0010/\u001a\u00020&2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020#0\u001aH\u0014J\u0016\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001a2\u0006\u0010\u001f\u001a\u00020 H\u0014J\u0012\u00102\u001a\u0004\u0018\u0001032\u0006\u00104\u001a\u00020 H\u0014J\u000e\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001aH\u0016J\u0016\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001a2\u0006\u0010\"\u001a\u00020#H\u0016J\u0016\u00107\u001a\u0008\u0012\u0004\u0012\u00020 0\u001a2\u0006\u0010\"\u001a\u00020#H\u0016J\u000e\u00108\u001a\u0008\u0012\u0004\u0012\u00020 0\u001aH\u0016J\u001e\u00109\u001a\u00020\u00162\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020;0\u001a2\u0006\u0010\"\u001a\u00020#H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "Lexpo/modules/updates/db/dao/UpdateDao_Impl;",
        "Lexpo/modules/updates/db/dao/UpdateDao;",
        "__db",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "(Landroidx/room/RoomDatabase;)V",
        "__insertionAdapterOfUpdateEntity",
        "Landroidx/room/EntityInsertionAdapter;",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "__converters",
        "Lexpo/modules/updates/db/Converters;",
        "__deletionAdapterOfUpdateEntity",
        "Landroidx/room/EntityDeletionOrUpdateAdapter;",
        "__preparedStmtOfKeepUpdate",
        "Landroidx/room/SharedSQLiteStatement;",
        "__preparedStmtOfMarkUpdateWithStatus",
        "__preparedStmtOf_setUpdateScopeKeyInternal",
        "__preparedStmtOfSetUpdateCommitTimeInternal",
        "__preparedStmtOfMarkUpdateAccessedInternal",
        "__preparedStmtOfIncrementSuccessfulLaunchCountInternal",
        "__preparedStmtOfIncrementFailedLaunchCountInternal",
        "insertUpdate",
        "",
        "update",
        "deleteUpdates",
        "updates",
        "",
        "markUpdateFinished",
        "hasSkippedEmbeddedAssets",
        "",
        "keepUpdate",
        "id",
        "Ljava/util/UUID;",
        "markUpdateWithStatus",
        "status",
        "Lexpo/modules/updates/db/enums/UpdateStatus;",
        "_setUpdateScopeKeyInternal",
        "newScopeKey",
        "",
        "setUpdateCommitTimeInternal",
        "commitTime",
        "Ljava/util/Date;",
        "markUpdateAccessedInternal",
        "lastAccessed",
        "incrementSuccessfulLaunchCountInternal",
        "incrementFailedLaunchCountInternal",
        "loadLaunchableUpdatesForProjectWithStatuses",
        "scopeKey",
        "statuses",
        "loadUpdatesWithId",
        "loadLaunchAssetForUpdateInternal",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        "updateId",
        "loadAllUpdates",
        "loadAllUpdatesWithStatus",
        "loadAllUpdateIdsWithStatus",
        "loadRecentUpdateIdsWithFailedLaunch",
        "markUpdatesWithMissingAssets",
        "missingAssetIds",
        "",
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
.field public static final Companion:Lexpo/modules/updates/db/dao/UpdateDao_Impl$Companion;


# instance fields
.field private final __converters:Lexpo/modules/updates/db/Converters;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfUpdateEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lexpo/modules/updates/db/entity/UpdateEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfUpdateEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lexpo/modules/updates/db/entity/UpdateEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfIncrementFailedLaunchCountInternal:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfIncrementSuccessfulLaunchCountInternal:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfKeepUpdate:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfMarkUpdateAccessedInternal:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfMarkUpdateWithStatus:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetUpdateCommitTimeInternal:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOf_setUpdateScopeKeyInternal:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/db/dao/UpdateDao_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->Companion:Lexpo/modules/updates/db/dao/UpdateDao_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lexpo/modules/updates/db/dao/UpdateDao;-><init>()V

    .line 45
    new-instance v0, Lexpo/modules/updates/db/Converters;

    invoke-direct {v0}, Lexpo/modules/updates/db/Converters;-><init>()V

    iput-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    .line 63
    iput-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 64
    new-instance v0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$1;

    invoke-direct {v0, p1, p0}, Lexpo/modules/updates/db/dao/UpdateDao_Impl$1;-><init>(Landroidx/room/RoomDatabase;Lexpo/modules/updates/db/dao/UpdateDao_Impl;)V

    check-cast v0, Landroidx/room/EntityInsertionAdapter;

    iput-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__insertionAdapterOfUpdateEntity:Landroidx/room/EntityInsertionAdapter;

    .line 105
    new-instance v0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$2;

    invoke-direct {v0, p1, p0}, Lexpo/modules/updates/db/dao/UpdateDao_Impl$2;-><init>(Landroidx/room/RoomDatabase;Lexpo/modules/updates/db/dao/UpdateDao_Impl;)V

    check-cast v0, Landroidx/room/EntityDeletionOrUpdateAdapter;

    iput-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__deletionAdapterOfUpdateEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 114
    new-instance v0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$3;

    invoke-direct {v0, p1}, Lexpo/modules/updates/db/dao/UpdateDao_Impl$3;-><init>(Landroidx/room/RoomDatabase;)V

    check-cast v0, Landroidx/room/SharedSQLiteStatement;

    iput-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfKeepUpdate:Landroidx/room/SharedSQLiteStatement;

    .line 120
    new-instance v0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$4;

    invoke-direct {v0, p1}, Lexpo/modules/updates/db/dao/UpdateDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;)V

    check-cast v0, Landroidx/room/SharedSQLiteStatement;

    iput-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfMarkUpdateWithStatus:Landroidx/room/SharedSQLiteStatement;

    .line 126
    new-instance v0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$5;

    invoke-direct {v0, p1}, Lexpo/modules/updates/db/dao/UpdateDao_Impl$5;-><init>(Landroidx/room/RoomDatabase;)V

    check-cast v0, Landroidx/room/SharedSQLiteStatement;

    iput-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOf_setUpdateScopeKeyInternal:Landroidx/room/SharedSQLiteStatement;

    .line 132
    new-instance v0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$6;

    invoke-direct {v0, p1}, Lexpo/modules/updates/db/dao/UpdateDao_Impl$6;-><init>(Landroidx/room/RoomDatabase;)V

    check-cast v0, Landroidx/room/SharedSQLiteStatement;

    iput-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfSetUpdateCommitTimeInternal:Landroidx/room/SharedSQLiteStatement;

    .line 138
    new-instance v0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$7;

    invoke-direct {v0, p1}, Lexpo/modules/updates/db/dao/UpdateDao_Impl$7;-><init>(Landroidx/room/RoomDatabase;)V

    check-cast v0, Landroidx/room/SharedSQLiteStatement;

    iput-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfMarkUpdateAccessedInternal:Landroidx/room/SharedSQLiteStatement;

    .line 144
    new-instance v0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$8;

    invoke-direct {v0, p1}, Lexpo/modules/updates/db/dao/UpdateDao_Impl$8;-><init>(Landroidx/room/RoomDatabase;)V

    check-cast v0, Landroidx/room/SharedSQLiteStatement;

    iput-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfIncrementSuccessfulLaunchCountInternal:Landroidx/room/SharedSQLiteStatement;

    .line 152
    new-instance v0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$9;

    invoke-direct {v0, p1}, Lexpo/modules/updates/db/dao/UpdateDao_Impl$9;-><init>(Landroidx/room/RoomDatabase;)V

    check-cast v0, Landroidx/room/SharedSQLiteStatement;

    iput-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfIncrementFailedLaunchCountInternal:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static final synthetic access$get__converters$p(Lexpo/modules/updates/db/dao/UpdateDao_Impl;)Lexpo/modules/updates/db/Converters;
    .locals 0

    .line 36
    iget-object p0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    return-object p0
.end method

.method public static final getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->Companion:Lexpo/modules/updates/db/dao/UpdateDao_Impl$Companion;

    invoke-virtual {v0}, Lexpo/modules/updates/db/dao/UpdateDao_Impl$Companion;->getRequiredConverters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public _setUpdateScopeKeyInternal(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lio/sentry/Sentry;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "db.sql.room"

    const-string v2, "expo.modules.updates.db.dao.UpdateDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newScopeKey"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 236
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOf_setUpdateScopeKeyInternal:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 238
    invoke-interface {v1, v2, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 240
    iget-object p2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {p2, p1}, Lexpo/modules/updates/db/Converters;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object p1

    const/4 p2, 0x2

    .line 241
    invoke-interface {v1, p2, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 243
    :try_start_0
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    :try_start_1
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 246
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_1

    sget-object p1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, p1}, Lio/sentry/ISpan;->setStatus(Lio/sentry/SpanStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :cond_1
    :try_start_2
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 251
    :cond_2
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOf_setUpdateScopeKeyInternal:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 248
    :try_start_3
    iget-object p2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    :cond_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 251
    iget-object p2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOf_setUpdateScopeKeyInternal:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public deleteUpdates(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/UpdateEntity;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lio/sentry/Sentry;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "db.sql.room"

    const-string v2, "expo.modules.updates.db.dao.UpdateDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "updates"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 174
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 176
    :try_start_0
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__deletionAdapterOfUpdateEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {v1, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 177
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_1

    sget-object p1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, p1}, Lio/sentry/ISpan;->setStatus(Lio/sentry/SpanStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_1
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    :cond_3
    throw p1
.end method

.method public incrementFailedLaunchCountInternal(Ljava/util/UUID;)V
    .locals 3

    invoke-static {}, Lio/sentry/Sentry;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "db.sql.room"

    const-string v2, "expo.modules.updates.db.dao.UpdateDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 329
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfIncrementFailedLaunchCountInternal:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    .line 331
    iget-object v2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v2, p1}, Lexpo/modules/updates/db/Converters;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object p1

    const/4 v2, 0x1

    .line 332
    invoke-interface {v1, v2, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 334
    :try_start_0
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 336
    :try_start_1
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 337
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_1

    sget-object p1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, p1}, Lio/sentry/ISpan;->setStatus(Lio/sentry/SpanStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :cond_1
    :try_start_2
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 342
    :cond_2
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfIncrementFailedLaunchCountInternal:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 339
    :try_start_3
    iget-object v2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    :cond_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 342
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfIncrementFailedLaunchCountInternal:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method protected incrementSuccessfulLaunchCountInternal(Ljava/util/UUID;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 310
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfIncrementSuccessfulLaunchCountInternal:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v1, p1}, Lexpo/modules/updates/db/Converters;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object p1

    const/4 v1, 0x1

    .line 313
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 315
    :try_start_0
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 318
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :try_start_2
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 323
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfIncrementSuccessfulLaunchCountInternal:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 320
    :try_start_3
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 323
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfIncrementSuccessfulLaunchCountInternal:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public insertUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;)V
    .locals 3

    invoke-static {}, Lio/sentry/Sentry;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "db.sql.room"

    const-string v2, "expo.modules.updates.db.dao.UpdateDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "update"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 163
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 165
    :try_start_0
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__insertionAdapterOfUpdateEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v1, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 166
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_1

    sget-object p1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, p1}, Lio/sentry/ISpan;->setStatus(Lio/sentry/SpanStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_1
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    :cond_3
    throw p1
.end method

.method protected keepUpdate(Ljava/util/UUID;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 195
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfKeepUpdate:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v1, p1}, Lexpo/modules/updates/db/Converters;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object p1

    const/4 v1, 0x1

    .line 198
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 200
    :try_start_0
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 203
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :try_start_2
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 208
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfKeepUpdate:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 205
    :try_start_3
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 208
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfKeepUpdate:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public loadAllUpdateIdsWithStatus(Lexpo/modules/updates/db/enums/UpdateStatus;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/db/enums/UpdateStatus;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/sentry/Sentry;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "db.sql.room"

    const-string v3, "expo.modules.updates.db.dao.UpdateDao"

    invoke-interface {v0, v2, v3}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "status"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 841
    const-string v2, "SELECT id FROM updates WHERE status = ?;"

    .line 842
    sget-object v3, Landroidx/room/RoomSQLiteQuery;->Companion:Landroidx/room/RoomSQLiteQuery$Companion;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroidx/room/RoomSQLiteQuery$Companion;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 844
    iget-object v3, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v3, p1}, Lexpo/modules/updates/db/Converters;->statusToInt(Lexpo/modules/updates/db/enums/UpdateStatus;)I

    move-result p1

    int-to-long v5, p1

    .line 845
    invoke-virtual {v2, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 846
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 847
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v3, v2

    check-cast v3, Landroidx/sqlite/db/SupportSQLiteQuery;

    const/4 v4, 0x0

    invoke-static {p1, v3, v4, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 849
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/List;

    .line 850
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 853
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 854
    iget-object v5, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v5, v3}, Lexpo/modules/updates/db/Converters;->bytesToUuid([B)Ljava/util/UUID;

    move-result-object v3

    .line 855
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 859
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    .line 860
    :cond_2
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 859
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    .line 860
    :cond_3
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v1
.end method

.method public loadAllUpdates()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/UpdateEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Lio/sentry/Sentry;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "db.sql.room"

    const-string v4, "expo.modules.updates.db.dao.UpdateDao"

    invoke-interface {v0, v3, v4}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 656
    :goto_0
    const-string v0, "SELECT * FROM updates;"

    .line 657
    sget-object v4, Landroidx/room/RoomSQLiteQuery;->Companion:Landroidx/room/RoomSQLiteQuery$Companion;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroidx/room/RoomSQLiteQuery$Companion;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 658
    iget-object v0, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 659
    iget-object v0, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v6, v4

    check-cast v6, Landroidx/sqlite/db/SupportSQLiteQuery;

    invoke-static {v0, v6, v5, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 661
    :try_start_0
    const-string v0, "id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 662
    const-string v7, "commit_time"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 663
    const-string v8, "runtime_version"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 664
    const-string v9, "scope_key"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 665
    const-string v10, "manifest"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 666
    const-string v11, "launch_asset_id"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 667
    const-string v12, "status"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 668
    const-string v13, "keep"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 669
    const-string v14, "last_accessed"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 671
    const-string v15, "successful_launch_count"

    .line 670
    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 673
    const-string v5, "failed_launch_count"

    .line 672
    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 674
    new-instance v2, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/List;

    .line 675
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 679
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    move/from16 v17, v0

    .line 680
    iget-object v0, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v0, v4}, Lexpo/modules/updates/db/Converters;->bytesToUuid([B)Ljava/util/UUID;

    move-result-object v19

    .line 683
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    .line 686
    :cond_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 688
    :goto_2
    iget-object v4, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v4, v0}, Lexpo/modules/updates/db/Converters;->longToDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    const-string v0, "Expected NON-NULL \'java.util.Date\', but it was NULL."

    if-eqz v20, :cond_8

    .line 695
    :try_start_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 697
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 700
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move/from16 v24, v7

    const/4 v4, 0x0

    goto :goto_3

    .line 703
    :cond_2
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v24, v7

    .line 705
    :goto_3
    iget-object v7, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v7, v4}, Lexpo/modules/updates/db/Converters;->stringToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    if-eqz v23, :cond_7

    .line 711
    new-instance v4, Lexpo/modules/updates/db/entity/UpdateEntity;

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v23}, Lexpo/modules/updates/db/entity/UpdateEntity;-><init>(Ljava/util/UUID;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 712
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    .line 713
    invoke-virtual {v4, v7}, Lexpo/modules/updates/db/entity/UpdateEntity;->setLaunchAssetId(Ljava/lang/Long;)V

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    .line 715
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lexpo/modules/updates/db/entity/UpdateEntity;->setLaunchAssetId(Ljava/lang/Long;)V

    .line 718
    :goto_4
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v18, v8

    .line 719
    iget-object v8, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v8, v7}, Lexpo/modules/updates/db/Converters;->intToStatus(I)Lexpo/modules/updates/db/enums/UpdateStatus;

    move-result-object v7

    invoke-virtual {v4, v7}, Lexpo/modules/updates/db/entity/UpdateEntity;->setStatus(Lexpo/modules/updates/db/enums/UpdateStatus;)V

    .line 721
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    .line 722
    :goto_5
    invoke-virtual {v4, v7}, Lexpo/modules/updates/db/entity/UpdateEntity;->setKeep(Z)V

    .line 724
    invoke-interface {v6, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_6

    .line 727
    :cond_5
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 729
    :goto_6
    iget-object v8, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v8, v7}, Lexpo/modules/updates/db/Converters;->longToDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 733
    invoke-virtual {v4, v7}, Lexpo/modules/updates/db/entity/UpdateEntity;->setLastAccessed(Ljava/util/Date;)V

    .line 735
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->setSuccessfulLaunchCount(I)V

    .line 736
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->setFailedLaunchCount(I)V

    .line 737
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, v17

    move/from16 v8, v18

    move/from16 v7, v24

    goto/16 :goto_1

    .line 730
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 731
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 706
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 707
    const-string v2, "Expected NON-NULL \'org.json.JSONObject\', but it was NULL."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 690
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 741
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    if-eqz v3, :cond_a

    invoke-interface {v3}, Lio/sentry/ISpan;->finish()V

    .line 742
    :cond_a
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v16, v4

    .line 741
    :goto_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lio/sentry/ISpan;->finish()V

    .line 742
    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public loadAllUpdatesWithStatus(Lexpo/modules/updates/db/enums/UpdateStatus;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/db/enums/UpdateStatus;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/UpdateEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-static {}, Lio/sentry/Sentry;->getSpan()Lio/sentry/ISpan;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, "db.sql.room"

    const-string v5, "expo.modules.updates.db.dao.UpdateDao"

    invoke-interface {v2, v4, v5}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "status"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    const-string v5, "SELECT * FROM updates WHERE status = ?;"

    .line 748
    sget-object v6, Landroidx/room/RoomSQLiteQuery;->Companion:Landroidx/room/RoomSQLiteQuery$Companion;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Landroidx/room/RoomSQLiteQuery$Companion;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 750
    iget-object v6, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v6, v0}, Lexpo/modules/updates/db/Converters;->statusToInt(Lexpo/modules/updates/db/enums/UpdateStatus;)I

    move-result v0

    int-to-long v8, v0

    .line 751
    invoke-virtual {v5, v7, v8, v9}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 752
    iget-object v0, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 753
    iget-object v0, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v6, v5

    check-cast v6, Landroidx/sqlite/db/SupportSQLiteQuery;

    const/4 v8, 0x0

    invoke-static {v0, v6, v8, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 755
    :try_start_0
    const-string v0, "id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 756
    const-string v9, "commit_time"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 757
    const-string v10, "runtime_version"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 758
    const-string v11, "scope_key"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 759
    const-string v12, "manifest"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 760
    const-string v13, "launch_asset_id"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 761
    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 762
    const-string v14, "keep"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 763
    const-string v15, "last_accessed"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 765
    const-string v7, "successful_launch_count"

    .line 764
    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 767
    const-string v8, "failed_launch_count"

    .line 766
    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 768
    new-instance v3, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v5

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/List;

    .line 769
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 773
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    move/from16 v17, v0

    .line 774
    iget-object v0, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v0, v5}, Lexpo/modules/updates/db/Converters;->bytesToUuid([B)Ljava/util/UUID;

    move-result-object v19

    .line 777
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    .line 780
    :cond_1
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 782
    :goto_2
    iget-object v5, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v5, v0}, Lexpo/modules/updates/db/Converters;->longToDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    const-string v0, "Expected NON-NULL \'java.util.Date\', but it was NULL."

    if-eqz v20, :cond_8

    .line 789
    :try_start_2
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 791
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 794
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move/from16 v24, v9

    const/4 v5, 0x0

    goto :goto_3

    .line 797
    :cond_2
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v24, v9

    .line 799
    :goto_3
    iget-object v9, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v9, v5}, Lexpo/modules/updates/db/Converters;->stringToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    if-eqz v23, :cond_7

    .line 805
    new-instance v5, Lexpo/modules/updates/db/entity/UpdateEntity;

    move-object/from16 v18, v5

    invoke-direct/range {v18 .. v23}, Lexpo/modules/updates/db/entity/UpdateEntity;-><init>(Ljava/util/UUID;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 806
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    .line 807
    invoke-virtual {v5, v9}, Lexpo/modules/updates/db/entity/UpdateEntity;->setLaunchAssetId(Ljava/lang/Long;)V

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    .line 809
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Lexpo/modules/updates/db/entity/UpdateEntity;->setLaunchAssetId(Ljava/lang/Long;)V

    .line 812
    :goto_4
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v18, v4

    .line 813
    iget-object v4, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v4, v9}, Lexpo/modules/updates/db/Converters;->intToStatus(I)Lexpo/modules/updates/db/enums/UpdateStatus;

    move-result-object v4

    invoke-virtual {v5, v4}, Lexpo/modules/updates/db/entity/UpdateEntity;->setStatus(Lexpo/modules/updates/db/enums/UpdateStatus;)V

    .line 815
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    .line 816
    :goto_5
    invoke-virtual {v5, v4}, Lexpo/modules/updates/db/entity/UpdateEntity;->setKeep(Z)V

    .line 818
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_6

    .line 821
    :cond_5
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 823
    :goto_6
    iget-object v9, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v9, v4}, Lexpo/modules/updates/db/Converters;->longToDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 827
    invoke-virtual {v5, v4}, Lexpo/modules/updates/db/entity/UpdateEntity;->setLastAccessed(Ljava/util/Date;)V

    .line 829
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->setSuccessfulLaunchCount(I)V

    .line 830
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->setFailedLaunchCount(I)V

    .line 831
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, v17

    move/from16 v4, v18

    move/from16 v9, v24

    goto/16 :goto_1

    .line 824
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 825
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 800
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 801
    const-string v3, "Expected NON-NULL \'org.json.JSONObject\', but it was NULL."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 784
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 835
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    if-eqz v2, :cond_a

    invoke-interface {v2}, Lio/sentry/ISpan;->finish()V

    .line 836
    :cond_a
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v16, v5

    .line 835
    :goto_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    if-eqz v2, :cond_b

    invoke-interface {v2}, Lio/sentry/ISpan;->finish()V

    .line 836
    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method protected loadLaunchAssetForUpdateInternal(Ljava/util/UUID;)Lexpo/modules/updates/db/entity/AssetEntity;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "updateId"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    sget-object v2, Landroidx/room/RoomSQLiteQuery;->Companion:Landroidx/room/RoomSQLiteQuery$Companion;

    const-string v3, "SELECT assets.* FROM assets INNER JOIN updates ON updates.launch_asset_id = assets.id WHERE updates.id = ?;"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/room/RoomSQLiteQuery$Companion;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 553
    iget-object v3, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v3, v0}, Lexpo/modules/updates/db/Converters;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v0

    .line 554
    invoke-virtual {v2, v4, v0}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 555
    iget-object v0, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 556
    iget-object v0, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v3, v2

    check-cast v3, Landroidx/sqlite/db/SupportSQLiteQuery;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v3, v5, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 558
    :try_start_0
    const-string v0, "key"

    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 559
    const-string v7, "type"

    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 560
    const-string v8, "id"

    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 561
    const-string v9, "url"

    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 562
    const-string v10, "headers"

    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 564
    const-string v11, "extra_request_headers"

    .line 563
    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 565
    const-string v12, "metadata"

    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 566
    const-string v13, "download_time"

    invoke-static {v3, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 567
    const-string v14, "relative_path"

    invoke-static {v3, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 568
    const-string v15, "hash"

    invoke-static {v3, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 569
    const-string v4, "hash_type"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 570
    const-string v5, "expected_hash"

    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 572
    const-string v6, "marked_for_deletion"

    .line 571
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 574
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 576
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 579
    :cond_0
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    :goto_0
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v16, v2

    const/4 v7, 0x0

    goto :goto_1

    .line 585
    :cond_1
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 587
    :goto_1
    :try_start_1
    new-instance v2, Lexpo/modules/updates/db/entity/AssetEntity;

    invoke-direct {v2, v0, v7}, Lexpo/modules/updates/db/entity/AssetEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lexpo/modules/updates/db/entity/AssetEntity;->setId(J)V

    .line 590
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 593
    :cond_2
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    :goto_2
    iget-object v7, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v7, v0}, Lexpo/modules/updates/db/Converters;->stringToUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setUrl(Landroid/net/Uri;)V

    .line 597
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    .line 600
    :cond_3
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 602
    :goto_3
    iget-object v7, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v7, v0}, Lexpo/modules/updates/db/Converters;->stringToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setHeaders(Lorg/json/JSONObject;)V

    .line 604
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    .line 607
    :cond_4
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 609
    :goto_4
    iget-object v7, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v7, v0}, Lexpo/modules/updates/db/Converters;->stringToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setExtraRequestHeaders(Lorg/json/JSONObject;)V

    .line 611
    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    .line 614
    :cond_5
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 616
    :goto_5
    iget-object v7, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v7, v0}, Lexpo/modules/updates/db/Converters;->stringToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setMetadata(Lorg/json/JSONObject;)V

    .line 618
    invoke-interface {v3, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    .line 621
    :cond_6
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 623
    :goto_6
    iget-object v7, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v7, v0}, Lexpo/modules/updates/db/Converters;->longToDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setDownloadTime(Ljava/util/Date;)V

    .line 624
    invoke-interface {v3, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 625
    invoke-virtual {v2, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setRelativePath(Ljava/lang/String;)V

    goto :goto_7

    .line 627
    :cond_7
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setRelativePath(Ljava/lang/String;)V

    .line 629
    :goto_7
    invoke-interface {v3, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 630
    invoke-virtual {v2, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setHash([B)V

    goto :goto_8

    .line 632
    :cond_8
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setHash([B)V

    .line 635
    :goto_8
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 636
    iget-object v4, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v4, v0}, Lexpo/modules/updates/db/Converters;->intToHashType(I)Lexpo/modules/updates/db/enums/HashType;

    move-result-object v0

    invoke-virtual {v2, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setHashType(Lexpo/modules/updates/db/enums/HashType;)V

    .line 637
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 638
    invoke-virtual {v2, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setExpectedHash(Ljava/lang/String;)V

    goto :goto_9

    .line 640
    :cond_9
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setExpectedHash(Ljava/lang/String;)V

    .line 643
    :goto_9
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v4, 0x1

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    .line 644
    :goto_a
    invoke-virtual {v2, v4}, Lexpo/modules/updates/db/entity/AssetEntity;->setMarkedForDeletion(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v2

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_b
    move-object/from16 v16, v2

    const/4 v0, 0x0

    move-object v6, v0

    .line 650
    :goto_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 651
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 650
    :goto_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 651
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method protected loadLaunchableUpdatesForProjectWithStatuses(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/updates/db/enums/UpdateStatus;",
            ">;)",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/UpdateEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "scopeKey"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "statuses"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 349
    const-string v4, "SELECT * FROM updates WHERE scope_key = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v4, " AND (successful_launch_count > 0 OR failed_launch_count < 1) AND status IN ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    .line 353
    invoke-static {v2, v4}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 354
    const-string v5, ");"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "toString(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 357
    sget-object v6, Landroidx/room/RoomSQLiteQuery;->Companion:Landroidx/room/RoomSQLiteQuery$Companion;

    invoke-virtual {v6, v2, v4}, Landroidx/room/RoomSQLiteQuery$Companion;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 359
    invoke-virtual {v2, v5, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 361
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/updates/db/enums/UpdateStatus;

    .line 362
    iget-object v6, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v6, v4}, Lexpo/modules/updates/db/Converters;->statusToInt(Lexpo/modules/updates/db/enums/UpdateStatus;)I

    move-result v4

    int-to-long v6, v4

    .line 363
    invoke-virtual {v2, v3, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v3, v5

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 367
    iget-object v0, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v3, v2

    check-cast v3, Landroidx/sqlite/db/SupportSQLiteQuery;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 369
    :try_start_0
    const-string v0, "id"

    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 370
    const-string v7, "commit_time"

    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 371
    const-string v8, "runtime_version"

    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 372
    const-string v9, "scope_key"

    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 373
    const-string v10, "manifest"

    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 374
    const-string v11, "launch_asset_id"

    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 375
    const-string v12, "status"

    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 376
    const-string v13, "keep"

    invoke-static {v3, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 377
    const-string v14, "last_accessed"

    invoke-static {v3, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 379
    const-string v15, "successful_launch_count"

    .line 378
    invoke-static {v3, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 381
    const-string v4, "failed_launch_count"

    .line 380
    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 382
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/List;

    .line 383
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 387
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    move/from16 v16, v0

    .line 388
    iget-object v0, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v0, v6}, Lexpo/modules/updates/db/Converters;->bytesToUuid([B)Ljava/util/UUID;

    move-result-object v18

    .line 391
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    .line 394
    :cond_1
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 396
    :goto_2
    iget-object v6, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v6, v0}, Lexpo/modules/updates/db/Converters;->longToDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    const-string v0, "Expected NON-NULL \'java.util.Date\', but it was NULL."

    if-eqz v19, :cond_8

    .line 403
    :try_start_1
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 405
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 408
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move/from16 v23, v7

    const/4 v6, 0x0

    goto :goto_3

    .line 411
    :cond_2
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v23, v7

    .line 413
    :goto_3
    iget-object v7, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v7, v6}, Lexpo/modules/updates/db/Converters;->stringToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    if-eqz v22, :cond_7

    .line 419
    new-instance v6, Lexpo/modules/updates/db/entity/UpdateEntity;

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v22}, Lexpo/modules/updates/db/entity/UpdateEntity;-><init>(Ljava/util/UUID;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 420
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    .line 421
    invoke-virtual {v6, v7}, Lexpo/modules/updates/db/entity/UpdateEntity;->setLaunchAssetId(Ljava/lang/Long;)V

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    .line 423
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lexpo/modules/updates/db/entity/UpdateEntity;->setLaunchAssetId(Ljava/lang/Long;)V

    .line 426
    :goto_4
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v17, v8

    .line 427
    iget-object v8, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v8, v7}, Lexpo/modules/updates/db/Converters;->intToStatus(I)Lexpo/modules/updates/db/enums/UpdateStatus;

    move-result-object v7

    invoke-virtual {v6, v7}, Lexpo/modules/updates/db/entity/UpdateEntity;->setStatus(Lexpo/modules/updates/db/enums/UpdateStatus;)V

    .line 429
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    .line 430
    :goto_5
    invoke-virtual {v6, v7}, Lexpo/modules/updates/db/entity/UpdateEntity;->setKeep(Z)V

    .line 432
    invoke-interface {v3, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_6

    .line 435
    :cond_5
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 437
    :goto_6
    iget-object v8, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v8, v7}, Lexpo/modules/updates/db/Converters;->longToDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 441
    invoke-virtual {v6, v7}, Lexpo/modules/updates/db/entity/UpdateEntity;->setLastAccessed(Ljava/util/Date;)V

    .line 443
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->setSuccessfulLaunchCount(I)V

    .line 444
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->setFailedLaunchCount(I)V

    .line 445
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, v16

    move/from16 v8, v17

    move/from16 v7, v23

    goto/16 :goto_1

    .line 438
    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 439
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 414
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 415
    const-string v4, "Expected NON-NULL \'org.json.JSONObject\', but it was NULL."

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_8
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 398
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 450
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception v0

    .line 449
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 450
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public loadRecentUpdateIdsWithFailedLaunch()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/sentry/Sentry;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "db.sql.room"

    const-string v3, "expo.modules.updates.db.dao.UpdateDao"

    invoke-interface {v0, v2, v3}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 866
    :goto_0
    const-string v2, "SELECT id FROM updates WHERE failed_launch_count > 0 ORDER BY commit_time DESC LIMIT 5;"

    .line 867
    sget-object v3, Landroidx/room/RoomSQLiteQuery;->Companion:Landroidx/room/RoomSQLiteQuery$Companion;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroidx/room/RoomSQLiteQuery$Companion;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 868
    iget-object v3, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 869
    iget-object v3, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v5, v2

    check-cast v5, Landroidx/sqlite/db/SupportSQLiteQuery;

    invoke-static {v3, v5, v4, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 871
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/List;

    .line 872
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 875
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 876
    iget-object v6, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v6, v5}, Lexpo/modules/updates/db/Converters;->bytesToUuid([B)Ljava/util/UUID;

    move-result-object v5

    .line 877
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 881
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    .line 882
    :cond_2
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v3

    .line 881
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    .line 882
    :cond_3
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v3
.end method

.method protected loadUpdatesWithId(Ljava/util/UUID;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/UpdateEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "id"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    sget-object v3, Landroidx/room/RoomSQLiteQuery;->Companion:Landroidx/room/RoomSQLiteQuery$Companion;

    const-string v4, "SELECT * FROM updates WHERE id = ?;"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/room/RoomSQLiteQuery$Companion;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 458
    iget-object v4, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v4, v0}, Lexpo/modules/updates/db/Converters;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v0

    .line 459
    invoke-virtual {v3, v5, v0}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 460
    iget-object v0, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 461
    iget-object v0, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v4, v3

    check-cast v4, Landroidx/sqlite/db/SupportSQLiteQuery;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v4, v6, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    .line 463
    :try_start_0
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 464
    const-string v2, "commit_time"

    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 465
    const-string v8, "runtime_version"

    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 466
    const-string v9, "scope_key"

    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 467
    const-string v10, "manifest"

    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 468
    const-string v11, "launch_asset_id"

    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 469
    const-string v12, "status"

    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 470
    const-string v13, "keep"

    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 471
    const-string v14, "last_accessed"

    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 473
    const-string v15, "successful_launch_count"

    .line 472
    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 475
    const-string v5, "failed_launch_count"

    .line 474
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 476
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/List;

    .line 477
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 481
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    move/from16 v16, v0

    .line 482
    iget-object v0, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v0, v7}, Lexpo/modules/updates/db/Converters;->bytesToUuid([B)Ljava/util/UUID;

    move-result-object v18

    .line 485
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 488
    :cond_0
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 490
    :goto_1
    iget-object v7, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v7, v0}, Lexpo/modules/updates/db/Converters;->longToDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    const-string v0, "Expected NON-NULL \'java.util.Date\', but it was NULL."

    if-eqz v19, :cond_7

    .line 497
    :try_start_1
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 499
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 502
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move/from16 v23, v2

    const/4 v7, 0x0

    goto :goto_2

    .line 505
    :cond_1
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v23, v2

    .line 507
    :goto_2
    iget-object v2, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v2, v7}, Lexpo/modules/updates/db/Converters;->stringToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    if-eqz v22, :cond_6

    .line 513
    new-instance v2, Lexpo/modules/updates/db/entity/UpdateEntity;

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v22}, Lexpo/modules/updates/db/entity/UpdateEntity;-><init>(Ljava/util/UUID;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 514
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    .line 515
    invoke-virtual {v2, v7}, Lexpo/modules/updates/db/entity/UpdateEntity;->setLaunchAssetId(Ljava/lang/Long;)V

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    .line 517
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Lexpo/modules/updates/db/entity/UpdateEntity;->setLaunchAssetId(Ljava/lang/Long;)V

    .line 520
    :goto_3
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v17, v8

    .line 521
    iget-object v8, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v8, v7}, Lexpo/modules/updates/db/Converters;->intToStatus(I)Lexpo/modules/updates/db/enums/UpdateStatus;

    move-result-object v7

    invoke-virtual {v2, v7}, Lexpo/modules/updates/db/entity/UpdateEntity;->setStatus(Lexpo/modules/updates/db/enums/UpdateStatus;)V

    .line 523
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    .line 524
    :goto_4
    invoke-virtual {v2, v7}, Lexpo/modules/updates/db/entity/UpdateEntity;->setKeep(Z)V

    .line 526
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_5

    .line 529
    :cond_4
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 531
    :goto_5
    iget-object v8, v1, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v8, v7}, Lexpo/modules/updates/db/Converters;->longToDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 535
    invoke-virtual {v2, v7}, Lexpo/modules/updates/db/entity/UpdateEntity;->setLastAccessed(Ljava/util/Date;)V

    .line 537
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->setSuccessfulLaunchCount(I)V

    .line 538
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->setFailedLaunchCount(I)V

    .line 539
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, v16

    move/from16 v8, v17

    move/from16 v2, v23

    goto/16 :goto_0

    .line 532
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 533
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 508
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 509
    const-string v2, "Expected NON-NULL \'org.json.JSONObject\', but it was NULL."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 492
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 544
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_0
    move-exception v0

    .line 543
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 544
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method protected markUpdateAccessedInternal(Ljava/util/UUID;Ljava/util/Date;)V
    .locals 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastAccessed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 283
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfMarkUpdateAccessedInternal:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v1, p2}, Lexpo/modules/updates/db/Converters;->dateToLong(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 287
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 292
    :goto_0
    iget-object p2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {p2, p1}, Lexpo/modules/updates/db/Converters;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object p1

    const/4 p2, 0x2

    .line 293
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 295
    :try_start_0
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 297
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 298
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :try_start_2
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 303
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfMarkUpdateAccessedInternal:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 300
    :try_start_3
    iget-object p2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 303
    iget-object p2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfMarkUpdateAccessedInternal:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public markUpdateFinished(Lexpo/modules/updates/db/entity/UpdateEntity;Z)V
    .locals 3

    invoke-static {}, Lio/sentry/Sentry;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "db.sql.room"

    const-string v2, "expo.modules.updates.db.dao.UpdateDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "update"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 186
    :try_start_0
    invoke-super {p0, p1, p2}, Lexpo/modules/updates/db/dao/UpdateDao;->markUpdateFinished(Lexpo/modules/updates/db/entity/UpdateEntity;Z)V

    .line 187
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_1

    sget-object p1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, p1}, Lio/sentry/ISpan;->setStatus(Lio/sentry/SpanStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_1
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    :cond_3
    throw p1
.end method

.method protected markUpdateWithStatus(Lexpo/modules/updates/db/enums/UpdateStatus;Ljava/util/UUID;)V
    .locals 3

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 214
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfMarkUpdateWithStatus:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v1, p1}, Lexpo/modules/updates/db/Converters;->statusToInt(Lexpo/modules/updates/db/enums/UpdateStatus;)I

    move-result p1

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 217
    invoke-interface {v0, p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 219
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {p1, p2}, Lexpo/modules/updates/db/Converters;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object p1

    const/4 p2, 0x2

    .line 220
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 222
    :try_start_0
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 224
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 225
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :try_start_2
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 230
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfMarkUpdateWithStatus:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 227
    :try_start_3
    iget-object p2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 230
    iget-object p2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfMarkUpdateWithStatus:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method protected markUpdatesWithMissingAssets(Ljava/util/List;Lexpo/modules/updates/db/enums/UpdateStatus;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lexpo/modules/updates/db/enums/UpdateStatus;",
            ")V"
        }
    .end annotation

    const-string v0, "missingAssetIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 889
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 890
    const-string v1, "UPDATE updates SET status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    const-string v1, " WHERE id IN (SELECT DISTINCT update_id FROM updates_assets WHERE asset_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 894
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 895
    const-string v1, "));"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 899
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v1, p2}, Lexpo/modules/updates/db/Converters;->statusToInt(Lexpo/modules/updates/db/enums/UpdateStatus;)I

    move-result p2

    int-to-long v1, p2

    const/4 p2, 0x1

    .line 900
    invoke-interface {v0, p2, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 902
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 903
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    add-int/2addr v1, p2

    goto :goto_0

    .line 906
    :cond_0
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 908
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 909
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public setUpdateCommitTimeInternal(Ljava/util/UUID;Ljava/util/Date;)V
    .locals 5

    invoke-static {}, Lio/sentry/Sentry;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "db.sql.room"

    const-string v2, "expo.modules.updates.db.dao.UpdateDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "commitTime"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 257
    iget-object v1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfSetUpdateCommitTimeInternal:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {v2, p2}, Lexpo/modules/updates/db/Converters;->dateToLong(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p2

    const/4 v2, 0x1

    if-nez p2, :cond_1

    .line 261
    invoke-interface {v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 263
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 266
    :goto_1
    iget-object p2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__converters:Lexpo/modules/updates/db/Converters;

    invoke-virtual {p2, p1}, Lexpo/modules/updates/db/Converters;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object p1

    const/4 p2, 0x2

    .line 267
    invoke-interface {v1, p2, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 269
    :try_start_0
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 271
    :try_start_1
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 272
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_2

    sget-object p1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, p1}, Lio/sentry/ISpan;->setStatus(Lio/sentry/SpanStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :cond_2
    :try_start_2
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 277
    :cond_3
    iget-object p1, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfSetUpdateCommitTimeInternal:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 274
    :try_start_3
    iget-object p2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    :cond_4
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 277
    iget-object p2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->__preparedStmtOfSetUpdateCommitTimeInternal:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method
