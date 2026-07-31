.class public Lcom/google/android/gms/internal/ads/zzies;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;
.implements Lcom/google/android/gms/internal/ads/zzarg;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzarf;


# instance fields
.field protected zzb:Lcom/google/android/gms/internal/ads/zzarc;

.field protected zzc:Lcom/google/android/gms/internal/ads/zziet;

.field zzd:Lcom/google/android/gms/internal/ads/zzarf;

.field zze:J

.field zzf:J

.field private final zzg:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzier;

    const-string v1, "eof "

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzies;->zza:Lcom/google/android/gms/internal/ads/zzarf;

    const-class v0, Lcom/google/android/gms/internal/ads/zzies;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziez;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zziez;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzd:Lcom/google/android/gms/internal/ads/zzarf;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzf:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzg:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final hasNext()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzd:Lcom/google/android/gms/internal/ads/zzarf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzies;->zza:Lcom/google/android/gms/internal/ads/zzarf;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzies;->zze()Lcom/google/android/gms/internal/ads/zzarf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzd:Lcom/google/android/gms/internal/ads/zzarf;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzies;->zza:Lcom/google/android/gms/internal/ads/zzarf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzd:Lcom/google/android/gms/internal/ads/zzarf;

    return v2
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzies;->zze()Lcom/google/android/gms/internal/ads/zzarf;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzies;->zzg:Ljava/util/List;

    .line 3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-lez v1, :cond_0

    const-string v3, ";"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzarf;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzc:Lcom/google/android/gms/internal/ads/zziet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzd:Lcom/google/android/gms/internal/ads/zzarf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzies;->zza:Lcom/google/android/gms/internal/ads/zzarf;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzg:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/ads/zziey;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zziey;-><init>(Ljava/util/List;Ljava/util/Iterator;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzg:Ljava/util/List;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zziet;JLcom/google/android/gms/internal/ads/zzarc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzies;->zzc:Lcom/google/android/gms/internal/ads/zziet;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zziet;->zzc()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zze:J

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zziet;->zzc()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziet;->zzd(J)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zziet;->zzc()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzies;->zzf:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzies;->zzb:Lcom/google/android/gms/internal/ads/zzarc;

    return-void
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzarf;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzd:Lcom/google/android/gms/internal/ads/zzarf;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzies;->zza:Lcom/google/android/gms/internal/ads/zzarf;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzies;->zzd:Lcom/google/android/gms/internal/ads/zzarf;

    return-object v0

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzc:Lcom/google/android/gms/internal/ads/zziet;

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzies;->zze:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzies;->zzf:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzies;->zzc:Lcom/google/android/gms/internal/ads/zziet;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzies;->zze:J

    .line 2
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zziet;->zzd(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzies;->zzb:Lcom/google/android/gms/internal/ads/zzarc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzies;->zzc:Lcom/google/android/gms/internal/ads/zziet;

    .line 3
    invoke-interface {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzarc;->zzb(Lcom/google/android/gms/internal/ads/zziet;Lcom/google/android/gms/internal/ads/zzarg;)Lcom/google/android/gms/internal/ads/zzarf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzies;->zzc:Lcom/google/android/gms/internal/ads/zziet;

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zziet;->zzc()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzies;->zze:J

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 8
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 7
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 5
    :catch_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 8
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzies;->zza:Lcom/google/android/gms/internal/ads/zzarf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzd:Lcom/google/android/gms/internal/ads/zzarf;

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
