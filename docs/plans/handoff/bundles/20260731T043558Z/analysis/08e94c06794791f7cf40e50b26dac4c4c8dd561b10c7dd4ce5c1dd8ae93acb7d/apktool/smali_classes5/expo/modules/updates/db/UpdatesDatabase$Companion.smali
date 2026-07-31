.class public final Lexpo/modules/updates/db/UpdatesDatabase$Companion;
.super Ljava/lang/Object;
.source "UpdatesDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/db/UpdatesDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ%\u0010\r\u001a\u00020\u000e*\u00020\u000f2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000e0\u0011\u00a2\u0006\u0002\u0008\u0012H\u0002J%\u0010\u0013\u001a\u00020\u000e*\u00020\u000f2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000e0\u0011\u00a2\u0006\u0002\u0008\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0017R\u0011\u0010\u001a\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017R\u0011\u0010\u001c\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0017R\u0011\u0010\u001e\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0017R\u0011\u0010 \u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0017R\u0011\u0010\"\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0017R\u0011\u0010$\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0017\u00a8\u0006&"
    }
    d2 = {
        "Lexpo/modules/updates/db/UpdatesDatabase$Companion;",
        "",
        "<init>",
        "()V",
        "DB_NAME",
        "",
        "INSTANCE",
        "Lexpo/modules/updates/db/UpdatesDatabase;",
        "getInstance",
        "context",
        "Landroid/content/Context;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "runInTransaction",
        "",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "runInTransactionWithForeignKeysOff",
        "MIGRATION_4_5",
        "Landroidx/room/migration/Migration;",
        "getMIGRATION_4_5",
        "()Landroidx/room/migration/Migration;",
        "MIGRATION_5_6",
        "getMIGRATION_5_6",
        "MIGRATION_6_7",
        "getMIGRATION_6_7",
        "MIGRATION_7_8",
        "getMIGRATION_7_8",
        "MIGRATION_8_9",
        "getMIGRATION_8_9",
        "MIGRATION_9_10",
        "getMIGRATION_9_10",
        "MIGRATION_10_11",
        "getMIGRATION_10_11",
        "MIGRATION_11_12",
        "getMIGRATION_11_12",
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

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$runInTransaction(Lexpo/modules/updates/db/UpdatesDatabase$Companion;Landroidx/sqlite/db/SupportSQLiteDatabase;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;->runInTransaction(Landroidx/sqlite/db/SupportSQLiteDatabase;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$runInTransactionWithForeignKeysOff(Lexpo/modules/updates/db/UpdatesDatabase$Companion;Landroidx/sqlite/db/SupportSQLiteDatabase;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;->runInTransactionWithForeignKeysOff(Landroidx/sqlite/db/SupportSQLiteDatabase;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final runInTransaction(Landroidx/sqlite/db/SupportSQLiteDatabase;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 95
    :try_start_0
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    throw p2
.end method

.method private final runInTransactionWithForeignKeysOff(Landroidx/sqlite/db/SupportSQLiteDatabase;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 104
    const-string v0, "PRAGMA foreign_keys=ON"

    .line 105
    :try_start_0
    const-string v1, "PRAGMA foreign_keys=OFF"

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p1, p2}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;->runInTransaction(Landroidx/sqlite/db/SupportSQLiteDatabase;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;)Lexpo/modules/updates/db/UpdatesDatabase;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lexpo/modules/updates/db/UpdatesDatabase;->access$getINSTANCE$cp()Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    .line 66
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const-class v0, Lexpo/modules/updates/db/UpdatesDatabase;

    .line 68
    const-string v1, "updates.db"

    .line 65
    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 71
    invoke-static {p2}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabase$Builder;->setQueryExecutor(Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$Builder;

    :cond_0
    const/16 p2, 0x8

    .line 74
    new-array p2, p2, [Landroidx/room/migration/Migration;

    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->Companion:Lexpo/modules/updates/db/UpdatesDatabase$Companion;

    invoke-virtual {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;->getMIGRATION_4_5()Landroidx/room/migration/Migration;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 75
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->Companion:Lexpo/modules/updates/db/UpdatesDatabase$Companion;

    invoke-virtual {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;->getMIGRATION_5_6()Landroidx/room/migration/Migration;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    .line 76
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->Companion:Lexpo/modules/updates/db/UpdatesDatabase$Companion;

    invoke-virtual {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;->getMIGRATION_6_7()Landroidx/room/migration/Migration;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p2, v1

    .line 77
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->Companion:Lexpo/modules/updates/db/UpdatesDatabase$Companion;

    invoke-virtual {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;->getMIGRATION_7_8()Landroidx/room/migration/Migration;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p2, v1

    .line 78
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->Companion:Lexpo/modules/updates/db/UpdatesDatabase$Companion;

    invoke-virtual {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;->getMIGRATION_8_9()Landroidx/room/migration/Migration;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p2, v1

    .line 79
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->Companion:Lexpo/modules/updates/db/UpdatesDatabase$Companion;

    invoke-virtual {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;->getMIGRATION_9_10()Landroidx/room/migration/Migration;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p2, v1

    .line 80
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->Companion:Lexpo/modules/updates/db/UpdatesDatabase$Companion;

    invoke-virtual {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;->getMIGRATION_10_11()Landroidx/room/migration/Migration;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p2, v1

    .line 81
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->Companion:Lexpo/modules/updates/db/UpdatesDatabase$Companion;

    invoke-virtual {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;->getMIGRATION_11_12()Landroidx/room/migration/Migration;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p2, v1

    .line 73
    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lexpo/modules/updates/db/UpdatesDatabase;

    .line 87
    sget-object p1, Lexpo/modules/updates/db/UpdatesDatabase;->Companion:Lexpo/modules/updates/db/UpdatesDatabase$Companion;

    invoke-static {v0}, Lexpo/modules/updates/db/UpdatesDatabase;->access$setINSTANCE$cp(Lexpo/modules/updates/db/UpdatesDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getMIGRATION_10_11()Landroidx/room/migration/Migration;
    .locals 1

    .line 202
    invoke-static {}, Lexpo/modules/updates/db/UpdatesDatabase;->access$getMIGRATION_10_11$cp()Landroidx/room/migration/Migration;

    move-result-object v0

    return-object v0
.end method

.method public final getMIGRATION_11_12()Landroidx/room/migration/Migration;
    .locals 1

    .line 213
    invoke-static {}, Lexpo/modules/updates/db/UpdatesDatabase;->access$getMIGRATION_11_12$cp()Landroidx/room/migration/Migration;

    move-result-object v0

    return-object v0
.end method

.method public final getMIGRATION_4_5()Landroidx/room/migration/Migration;
    .locals 1

    .line 112
    invoke-static {}, Lexpo/modules/updates/db/UpdatesDatabase;->access$getMIGRATION_4_5$cp()Landroidx/room/migration/Migration;

    move-result-object v0

    return-object v0
.end method

.method public final getMIGRATION_5_6()Landroidx/room/migration/Migration;
    .locals 1

    .line 127
    invoke-static {}, Lexpo/modules/updates/db/UpdatesDatabase;->access$getMIGRATION_5_6$cp()Landroidx/room/migration/Migration;

    move-result-object v0

    return-object v0
.end method

.method public final getMIGRATION_6_7()Landroidx/room/migration/Migration;
    .locals 1

    .line 149
    invoke-static {}, Lexpo/modules/updates/db/UpdatesDatabase;->access$getMIGRATION_6_7$cp()Landroidx/room/migration/Migration;

    move-result-object v0

    return-object v0
.end method

.method public final getMIGRATION_7_8()Landroidx/room/migration/Migration;
    .locals 1

    .line 167
    invoke-static {}, Lexpo/modules/updates/db/UpdatesDatabase;->access$getMIGRATION_7_8$cp()Landroidx/room/migration/Migration;

    move-result-object v0

    return-object v0
.end method

.method public final getMIGRATION_8_9()Landroidx/room/migration/Migration;
    .locals 1

    .line 186
    invoke-static {}, Lexpo/modules/updates/db/UpdatesDatabase;->access$getMIGRATION_8_9$cp()Landroidx/room/migration/Migration;

    move-result-object v0

    return-object v0
.end method

.method public final getMIGRATION_9_10()Landroidx/room/migration/Migration;
    .locals 1

    .line 194
    invoke-static {}, Lexpo/modules/updates/db/UpdatesDatabase;->access$getMIGRATION_9_10$cp()Landroidx/room/migration/Migration;

    move-result-object v0

    return-object v0
.end method
