.class public final Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_6_7$1;
.super Landroidx/room/migration/Migration;
.source "UpdatesDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/db/UpdatesDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_6_7$1",
        "Landroidx/room/migration/Migration;",
        "migrate",
        "",
        "db",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
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
.method public static synthetic $r8$lambda$fBtrIqXbo519KYPsdwjOts8-3yE(Landroidx/sqlite/db/SupportSQLiteDatabase;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_6_7$1;->migrate$lambda$0(Landroidx/sqlite/db/SupportSQLiteDatabase;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x7

    .line 149
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method

.method private static final migrate$lambda$0(Landroidx/sqlite/db/SupportSQLiteDatabase;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$runInTransactionWithForeignKeysOff"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    const-string v0, "CREATE TABLE IF NOT EXISTS `new_assets` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT, `key` TEXT, `headers` TEXT, `type` TEXT, `metadata` TEXT, `download_time` INTEGER, `relative_path` TEXT, `hash` BLOB, `hash_type` INTEGER NOT NULL, `marked_for_deletion` INTEGER NOT NULL)"

    invoke-interface {p0, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    const-string v0, "INSERT INTO `new_assets` (`id`, `url`, `key`, `headers`, `type`, `metadata`, `download_time`, `relative_path`, `hash`, `hash_type`, `marked_for_deletion`) SELECT `id`, `url`, `key`, `headers`, `type`, `metadata`, `download_time`, `relative_path`, `hash`, `hash_type`, `marked_for_deletion` FROM `assets`"

    .line 153
    invoke-interface {p0, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    const-string v0, "DROP TABLE `assets`"

    invoke-interface {p0, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    const-string v0, "ALTER TABLE `new_assets` RENAME TO `assets`"

    invoke-interface {p0, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    const-string v0, "CREATE UNIQUE INDEX `index_assets_key` ON `assets` (`key`)"

    invoke-interface {p0, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->Companion:Lexpo/modules/updates/db/UpdatesDatabase$Companion;

    new-instance v1, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_6_7$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_6_7$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p1, v1}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;->access$runInTransactionWithForeignKeysOff(Lexpo/modules/updates/db/UpdatesDatabase$Companion;Landroidx/sqlite/db/SupportSQLiteDatabase;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
