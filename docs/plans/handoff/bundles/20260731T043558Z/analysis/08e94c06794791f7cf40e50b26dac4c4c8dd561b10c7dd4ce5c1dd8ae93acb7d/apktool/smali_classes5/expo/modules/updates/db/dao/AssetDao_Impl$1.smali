.class public final Lexpo/modules/updates/db/dao/AssetDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "AssetDao_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/db/dao/AssetDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0014J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "expo/modules/updates/db/dao/AssetDao_Impl$1",
        "Landroidx/room/EntityInsertionAdapter;",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
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
.field final synthetic this$0:Lexpo/modules/updates/db/dao/AssetDao_Impl;


# direct methods
.method constructor <init>(Landroidx/room/RoomDatabase;Lexpo/modules/updates/db/dao/AssetDao_Impl;)V
    .locals 0

    iput-object p2, p0, Lexpo/modules/updates/db/dao/AssetDao_Impl$1;->this$0:Lexpo/modules/updates/db/dao/AssetDao_Impl;

    .line 62
    invoke-direct {p0, p1}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lexpo/modules/updates/db/entity/AssetEntity;)V
    .locals 4

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 69
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 73
    :goto_0
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 75
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 77
    :cond_1
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    .line 79
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 80
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lexpo/modules/updates/db/dao/AssetDao_Impl$1;->this$0:Lexpo/modules/updates/db/dao/AssetDao_Impl;

    invoke-static {v1}, Lexpo/modules/updates/db/dao/AssetDao_Impl;->access$get__converters$p(Lexpo/modules/updates/db/dao/AssetDao_Impl;)Lexpo/modules/updates/db/Converters;

    move-result-object v1

    invoke-virtual {v1, v0}, Lexpo/modules/updates/db/Converters;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 83
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 85
    :cond_2
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 87
    :goto_2
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getHeaders()Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lexpo/modules/updates/db/dao/AssetDao_Impl$1;->this$0:Lexpo/modules/updates/db/dao/AssetDao_Impl;

    invoke-static {v1}, Lexpo/modules/updates/db/dao/AssetDao_Impl;->access$get__converters$p(Lexpo/modules/updates/db/dao/AssetDao_Impl;)Lexpo/modules/updates/db/Converters;

    move-result-object v1

    invoke-virtual {v1, v0}, Lexpo/modules/updates/db/Converters;->jsonObjectToString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 90
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 92
    :cond_3
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 94
    :goto_3
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getExtraRequestHeaders()Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lexpo/modules/updates/db/dao/AssetDao_Impl$1;->this$0:Lexpo/modules/updates/db/dao/AssetDao_Impl;

    invoke-static {v1}, Lexpo/modules/updates/db/dao/AssetDao_Impl;->access$get__converters$p(Lexpo/modules/updates/db/dao/AssetDao_Impl;)Lexpo/modules/updates/db/Converters;

    move-result-object v1

    invoke-virtual {v1, v0}, Lexpo/modules/updates/db/Converters;->jsonObjectToString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 97
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 99
    :cond_4
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 101
    :goto_4
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getMetadata()Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lexpo/modules/updates/db/dao/AssetDao_Impl$1;->this$0:Lexpo/modules/updates/db/dao/AssetDao_Impl;

    invoke-static {v1}, Lexpo/modules/updates/db/dao/AssetDao_Impl;->access$get__converters$p(Lexpo/modules/updates/db/dao/AssetDao_Impl;)Lexpo/modules/updates/db/Converters;

    move-result-object v1

    invoke-virtual {v1, v0}, Lexpo/modules/updates/db/Converters;->jsonObjectToString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 104
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 106
    :cond_5
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    :goto_5
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getDownloadTime()Ljava/util/Date;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lexpo/modules/updates/db/dao/AssetDao_Impl$1;->this$0:Lexpo/modules/updates/db/dao/AssetDao_Impl;

    invoke-static {v1}, Lexpo/modules/updates/db/dao/AssetDao_Impl;->access$get__converters$p(Lexpo/modules/updates/db/dao/AssetDao_Impl;)Lexpo/modules/updates/db/Converters;

    move-result-object v1

    invoke-virtual {v1, v0}, Lexpo/modules/updates/db/Converters;->dateToLong(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 111
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 113
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 115
    :goto_6
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getRelativePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_7

    .line 117
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 119
    :cond_7
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 121
    :goto_7
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getHash()[B

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_8

    .line 123
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 125
    :cond_8
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 127
    :goto_8
    iget-object v0, p0, Lexpo/modules/updates/db/dao/AssetDao_Impl$1;->this$0:Lexpo/modules/updates/db/dao/AssetDao_Impl;

    invoke-static {v0}, Lexpo/modules/updates/db/dao/AssetDao_Impl;->access$get__converters$p(Lexpo/modules/updates/db/dao/AssetDao_Impl;)Lexpo/modules/updates/db/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getHashType()Lexpo/modules/updates/db/enums/HashType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/updates/db/Converters;->hashTypeToInt(Lexpo/modules/updates/db/enums/HashType;)I

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    .line 128
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 129
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getExpectedHash()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_9

    .line 131
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_9

    .line 133
    :cond_9
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 135
    :goto_9
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getMarkedForDeletion()Z

    move-result p2

    const/16 v0, 0xd

    int-to-long v1, p2

    .line 136
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p2, Lexpo/modules/updates/db/entity/AssetEntity;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/db/dao/AssetDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lexpo/modules/updates/db/entity/AssetEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "INSERT OR REPLACE INTO `assets` (`key`,`type`,`id`,`url`,`headers`,`extra_request_headers`,`metadata`,`download_time`,`relative_path`,`hash`,`hash_type`,`expected_hash`,`marked_for_deletion`) VALUES (?,?,nullif(?, 0),?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
