.class public abstract Lexpo/modules/updates/db/UpdatesDatabase;
.super Landroidx/room/RoomDatabase;
.source "UpdatesDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/db/UpdatesDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\n\u0010\u0008\u001a\u0004\u0018\u00010\tH&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/updates/db/UpdatesDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "updateDao",
        "Lexpo/modules/updates/db/dao/UpdateDao;",
        "assetDao",
        "Lexpo/modules/updates/db/dao/AssetDao;",
        "jsonDataDao",
        "Lexpo/modules/updates/db/dao/JSONDataDao;",
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
.field public static final Companion:Lexpo/modules/updates/db/UpdatesDatabase$Companion;

.field private static final DB_NAME:Ljava/lang/String; = "updates.db"

.field private static volatile INSTANCE:Lexpo/modules/updates/db/UpdatesDatabase;

.field private static final MIGRATION_10_11:Landroidx/room/migration/Migration;

.field private static final MIGRATION_11_12:Landroidx/room/migration/Migration;

.field private static final MIGRATION_4_5:Landroidx/room/migration/Migration;

.field private static final MIGRATION_5_6:Landroidx/room/migration/Migration;

.field private static final MIGRATION_6_7:Landroidx/room/migration/Migration;

.field private static final MIGRATION_7_8:Landroidx/room/migration/Migration;

.field private static final MIGRATION_8_9:Landroidx/room/migration/Migration;

.field private static final MIGRATION_9_10:Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/db/UpdatesDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->Companion:Lexpo/modules/updates/db/UpdatesDatabase$Companion;

    .line 112
    new-instance v0, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_4_5$1;

    invoke-direct {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_4_5$1;-><init>()V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_4_5:Landroidx/room/migration/Migration;

    .line 127
    new-instance v0, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_5_6$1;

    invoke-direct {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_5_6$1;-><init>()V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_5_6:Landroidx/room/migration/Migration;

    .line 149
    new-instance v0, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_6_7$1;

    invoke-direct {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_6_7$1;-><init>()V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_6_7:Landroidx/room/migration/Migration;

    .line 167
    new-instance v0, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_7_8$1;

    invoke-direct {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_7_8$1;-><init>()V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_7_8:Landroidx/room/migration/Migration;

    .line 186
    new-instance v0, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_8_9$1;

    invoke-direct {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_8_9$1;-><init>()V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_8_9:Landroidx/room/migration/Migration;

    .line 194
    new-instance v0, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_9_10$1;

    invoke-direct {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_9_10$1;-><init>()V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_9_10:Landroidx/room/migration/Migration;

    .line 202
    new-instance v0, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_10_11$1;

    invoke-direct {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_10_11$1;-><init>()V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_10_11:Landroidx/room/migration/Migration;

    .line 213
    new-instance v0, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_11_12$1;

    invoke-direct {v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion$MIGRATION_11_12$1;-><init>()V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_11_12:Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lexpo/modules/updates/db/UpdatesDatabase;
    .locals 1

    .line 46
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->INSTANCE:Lexpo/modules/updates/db/UpdatesDatabase;

    return-object v0
.end method

.method public static final synthetic access$getMIGRATION_10_11$cp()Landroidx/room/migration/Migration;
    .locals 1

    .line 46
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_10_11:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic access$getMIGRATION_11_12$cp()Landroidx/room/migration/Migration;
    .locals 1

    .line 46
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_11_12:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic access$getMIGRATION_4_5$cp()Landroidx/room/migration/Migration;
    .locals 1

    .line 46
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_4_5:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic access$getMIGRATION_5_6$cp()Landroidx/room/migration/Migration;
    .locals 1

    .line 46
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_5_6:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic access$getMIGRATION_6_7$cp()Landroidx/room/migration/Migration;
    .locals 1

    .line 46
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_6_7:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic access$getMIGRATION_7_8$cp()Landroidx/room/migration/Migration;
    .locals 1

    .line 46
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_7_8:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic access$getMIGRATION_8_9$cp()Landroidx/room/migration/Migration;
    .locals 1

    .line 46
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_8_9:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic access$getMIGRATION_9_10$cp()Landroidx/room/migration/Migration;
    .locals 1

    .line 46
    sget-object v0, Lexpo/modules/updates/db/UpdatesDatabase;->MIGRATION_9_10:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lexpo/modules/updates/db/UpdatesDatabase;)V
    .locals 0

    .line 46
    sput-object p0, Lexpo/modules/updates/db/UpdatesDatabase;->INSTANCE:Lexpo/modules/updates/db/UpdatesDatabase;

    return-void
.end method


# virtual methods
.method public abstract assetDao()Lexpo/modules/updates/db/dao/AssetDao;
.end method

.method public abstract jsonDataDao()Lexpo/modules/updates/db/dao/JSONDataDao;
.end method

.method public abstract updateDao()Lexpo/modules/updates/db/dao/UpdateDao;
.end method
