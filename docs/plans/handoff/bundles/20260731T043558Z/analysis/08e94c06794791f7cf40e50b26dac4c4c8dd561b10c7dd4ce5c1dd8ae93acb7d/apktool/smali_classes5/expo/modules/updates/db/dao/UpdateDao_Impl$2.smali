.class public final Lexpo/modules/updates/db/dao/UpdateDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0014J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "expo/modules/updates/db/dao/UpdateDao_Impl$2",
        "Landroidx/room/EntityDeletionOrUpdateAdapter;",
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

    iput-object p2, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$2;->this$0:Lexpo/modules/updates/db/dao/UpdateDao_Impl;

    .line 106
    invoke-direct {p0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lexpo/modules/updates/db/entity/UpdateEntity;)V
    .locals 1

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lexpo/modules/updates/db/dao/UpdateDao_Impl$2;->this$0:Lexpo/modules/updates/db/dao/UpdateDao_Impl;

    invoke-static {v0}, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->access$get__converters$p(Lexpo/modules/updates/db/dao/UpdateDao_Impl;)Lexpo/modules/updates/db/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v0, p2}, Lexpo/modules/updates/db/Converters;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object p2

    const/4 v0, 0x1

    .line 111
    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 105
    check-cast p2, Lexpo/modules/updates/db/entity/UpdateEntity;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/db/dao/UpdateDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lexpo/modules/updates/db/entity/UpdateEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 107
    const-string v0, "DELETE FROM `updates` WHERE `id` = ?"

    return-object v0
.end method
