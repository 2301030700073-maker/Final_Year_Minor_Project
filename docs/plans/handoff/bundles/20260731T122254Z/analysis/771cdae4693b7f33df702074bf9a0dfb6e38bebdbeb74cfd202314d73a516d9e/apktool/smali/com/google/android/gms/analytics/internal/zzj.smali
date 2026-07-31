.class Lcom/google/android/gms/analytics/internal/zzj;
.super Lcom/google/android/gms/analytics/internal/zzd;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/internal/zzj$zza;
    }
.end annotation


# static fields
.field private static final zzKg:Ljava/lang/String;

.field private static final zzKh:Ljava/lang/String;


# instance fields
.field private final zzKi:Lcom/google/android/gms/analytics/internal/zzj$zza;

.field private final zzKj:Lcom/google/android/gms/analytics/internal/zzaj;

.field private final zzKk:Lcom/google/android/gms/analytics/internal/zzaj;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "hits2"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "hit_id"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "hit_time"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "hit_url"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "hit_string"

    const/4 v6, 0x4

    aput-object v2, v1, v6

    const-string v2, "hit_app_id"

    const/4 v6, 0x5

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzj;->zzKg:Ljava/lang/String;

    const-string v0, "SELECT MAX(%s) FROM %s WHERE 1;"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "hit_time"

    aput-object v2, v1, v3

    const-string v2, "hits2"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzj;->zzKh:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhP()Lcom/google/android/gms/internal/zzlb;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaj;-><init>(Lcom/google/android/gms/internal/zzlb;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzj;->zzKj:Lcom/google/android/gms/analytics/internal/zzaj;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhP()Lcom/google/android/gms/internal/zzlb;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaj;-><init>(Lcom/google/android/gms/internal/zzlb;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzj;->zzKk:Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zziv()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzj$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/analytics/internal/zzj$zza;-><init>(Lcom/google/android/gms/analytics/internal/zzj;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzj;->zzKi:Lcom/google/android/gms/analytics/internal/zzj$zza;

    return-void
.end method

.method private static zzA(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method private zza(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide p3

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide p3

    :catchall_0
    move-exception p1

    move-object v1, p2

    goto :goto_1

    :catch_0
    move-exception p3

    move-object v1, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p3

    :goto_0
    :try_start_2
    const-string p2, "Database error"

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/android/gms/analytics/internal/zzj;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzj;)Lcom/google/android/gms/analytics/internal/zzaj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/analytics/internal/zzj;->zzKk:Lcom/google/android/gms/analytics/internal/zzaj;

    return-object p0
.end method

.method private zzb(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    :cond_1
    :try_start_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database returned empty set"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_0
    :try_start_3
    const-string p2, "Database error"

    invoke-virtual {p0, p2, p1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/internal/zzj;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zziv()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private zzd(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzjY()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzr;->zzjk()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzr;->zzjl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static zze(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzab;->zzn()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "ht"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "qt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "AppUID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method private zziu()V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzju()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzil()J

    move-result-wide v1

    add-int/lit8 v3, v0, -0x1

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    int-to-long v3, v0

    sub-long v5, v1, v3

    const-wide/16 v0, 0x1

    add-long v2, v5, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzj;->zzo(J)Ljava/util/List;

    move-result-object v0

    const-string v1, "Store full, deleting hits to make room, count"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzj;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzd(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private zziv()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzjw()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziX()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzjw()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzjx()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zziw()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzj;->zzKg:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzj;->zzKi:Lcom/google/android/gms/analytics/internal/zzj$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj$zza;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error closing database"

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Sql error closing database"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public endTransaction()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzj;->zzKi:Lcom/google/android/gms/analytics/internal/zzj$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj$zza;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error opening database"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method isEmpty()Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzil()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setTransactionSuccessful()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public zza(JLjava/lang/String;Ljava/lang/String;)J
    .locals 2

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzu;->zzcj(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzu;->zzcj(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhO()V

    const-string v0, "SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    const/4 p1, 0x2

    aput-object p4, v1, p1

    const-wide/16 p1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/gms/analytics/internal/zzj;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public zza(JLjava/lang/String;)V
    .locals 4

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzu;->zzcj(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "properties"

    const-string v2, "app_uid=? AND cid<>?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const/4 p1, 0x1

    aput-object p3, v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const-string p2, "Deleted property records"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method zzaY(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object p1

    :cond_0
    :try_start_0
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string p1, "UTF-8"

    invoke-static {v0, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "Error parsing hit parameters"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object p1
.end method

.method zzaZ(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string p1, "UTF-8"

    invoke-static {v0, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "Error parsing property parameters"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object p1
.end method

.method public zzb(Lcom/google/android/gms/analytics/internal/zzh;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzn()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/zzj;->zzA(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_uid"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzii()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "cid"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "tid"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzij()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "adid"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzik()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "hits_count"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzil()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "params"

    invoke-virtual {v2, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p1, "properties"

    const/4 v1, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const-string p1, "Failed to insert/update a property (got -1)"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zzaX(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error storing a property"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public zzc(Lcom/google/android/gms/analytics/internal/zzab;)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    invoke-static {p1}, Lcom/google/android/gms/analytics/internal/zzj;->zze(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2000

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string v1, "Hit length exceeds the maximum allowed size"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zziu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "hit_string"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hit_time"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzjW()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "hit_app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzjU()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "hit_url"

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zzd(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "hits2"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-string p1, "Failed to insert a hit (got -1)"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zzaX(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "Hit saved to database. db-id, hit"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zzb(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error storing a hit"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public zzd(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hit_id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    if-lez v1, :cond_2

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Invalid hit id"

    invoke-direct {p1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "Deleting dispatched hits. count"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzj;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "hits2"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_5

    const-string v2, "Deleted fewer hits then expected"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzb(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error deleting hits"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method protected zzhn()V
    .locals 0

    return-void
.end method

.method public zzil()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    const-string v0, "SELECT COUNT(*) FROM hits2"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzj;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public zziq()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hits2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public zzir()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "properties"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public zzis()I
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzj;->zzKj:Lcom/google/android/gms/analytics/internal/zzaj;

    const-wide/32 v1, 0x5265c00

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzaj;->zzv(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzj;->zzKj:Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzaj;->start()V

    const-string v0, "Deleting stale hits (if any)"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzaT(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhP()Lcom/google/android/gms/internal/zzlb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlb;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    sub-long v6, v2, v4

    const-string v2, "hits2"

    const-string v3, "hit_time < ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "Deleted stale hits, count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzj;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public zzit()J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzj;->zzKh:Ljava/lang/String;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/analytics/internal/zzj;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzo(J)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :try_start_0
    const-string v1, "hits2"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "hit_id"

    const/4 v11, 0x0

    aput-object v4, v3, v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "%s ASC"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v12, "hit_id"

    aput-object v12, v2, v11

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v9, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v9

    :catchall_0
    move-exception p2

    move-object v10, p1

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v10, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    :goto_0
    :try_start_2
    const-string p1, "Error selecting hit ids"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/analytics/internal/zzj;->zzd(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v9

    :goto_1
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p2
.end method

.method public zzp(J)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/internal/zzab;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    const-wide/16 v1, 0x0

    cmp-long v5, p1, v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ltz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzu;->zzV(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhO()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/analytics/internal/zzj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const/4 v1, 0x0

    :try_start_0
    const-string v14, "hits2"

    const/4 v2, 0x5

    new-array v15, v2, [Ljava/lang/String;

    const-string v2, "hit_id"

    aput-object v2, v15, v11

    const-string v2, "hit_time"

    aput-object v2, v15, v12

    const-string v2, "hit_string"

    const/4 v9, 0x2

    aput-object v2, v15, v9

    const-string v2, "hit_url"

    const/4 v7, 0x3

    aput-object v2, v15, v7

    const-string v2, "hit_app_id"

    const/4 v8, 0x4

    aput-object v2, v15, v8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v2, "%s ASC"

    new-array v5, v12, [Ljava/lang/Object;

    const-string v6, "hit_id"

    aput-object v6, v5, v11

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-virtual {v10, v1}, Lcom/google/android/gms/analytics/internal/zzj;->zzaY(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/zzam;->zzbn(Ljava/lang/String;)Z

    move-result v6

    new-instance v2, Lcom/google/android/gms/analytics/internal/zzab;

    move-object v1, v2

    move-object v11, v2

    move-object v2, v10

    const/16 v18, 0x3

    const/16 v19, 0x4

    move-wide v7, v15

    const/4 v15, 0x2

    move/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/analytics/internal/zzab;-><init>(Lcom/google/android/gms/analytics/internal/zzc;Ljava/util/Map;JZJI)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v14

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v13, v1

    :goto_3
    move-object v1, v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v13, v1

    :goto_4
    move-object v1, v0

    :try_start_2
    const-string v2, "Error loading hits from the database"

    invoke-virtual {v10, v2, v1}, Lcom/google/android/gms/analytics/internal/zzj;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :goto_5
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public zzq(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Deleting hit, id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzd(Ljava/util/List;)V

    return-void
.end method

.method public zzr(J)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/internal/zzh;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzia()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhO()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/analytics/internal/zzj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x5

    :try_start_0
    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "cid"

    const/4 v12, 0x0

    aput-object v3, v4, v12

    const-string v3, "tid"

    const/4 v13, 0x1

    aput-object v3, v4, v13

    const-string v3, "adid"

    const/4 v14, 0x2

    aput-object v3, v4, v14

    const-string v3, "hits_count"

    const/4 v15, 0x3

    aput-object v3, v4, v15

    const-string v3, "params"

    const/4 v10, 0x4

    aput-object v3, v4, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/analytics/internal/zzj;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzr;->zzjv()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    const-string v5, "app_uid=?"

    new-array v6, v13, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v12

    const-string v3, "properties"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    move v11, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v16

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v23, 0x1

    goto :goto_0

    :cond_1
    const/16 v23, 0x0

    :goto_0
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    const/4 v8, 0x4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/google/android/gms/analytics/internal/zzj;->zzaZ(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v26

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    new-instance v9, Lcom/google/android/gms/analytics/internal/zzh;

    move-object/from16 v18, v9

    move-wide/from16 v19, p1

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-wide/from16 v24, v6

    invoke-direct/range {v18 .. v26}, Lcom/google/android/gms/analytics/internal/zzh;-><init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_1
    const-string v6, "Read property with empty client id or tracker id"

    invoke-virtual {v1, v6, v4, v5}, Lcom/google/android/gms/analytics/internal/zzj;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v11, :cond_5

    const-string v4, "Sending hits to too many properties. Campaign report might be incorrect"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/analytics/internal/zzj;->zzaW(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v3

    :catchall_0
    move-exception v0

    move-object v11, v2

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v11, v2

    move-object v2, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v11, 0x0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v2, v0

    const/4 v11, 0x0

    :goto_3
    :try_start_2
    const-string v3, "Error loading hits from the database"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/analytics/internal/zzj;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    :goto_4
    move-object v2, v0

    :goto_5
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method
