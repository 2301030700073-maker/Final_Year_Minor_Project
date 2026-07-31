.class final Lcom/google/android/gms/internal/ads/zzgmy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgmv;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgmv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgnc;

.field private volatile zzc:Lcom/google/android/gms/internal/ads/zzgmv;

.field private zzd:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgmx;->zza:Lcom/google/android/gms/internal/ads/zzgmx;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgmy;->zzb:Lcom/google/android/gms/internal/ads/zzgmv;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgmv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgnc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmy;->zza:Lcom/google/android/gms/internal/ads/zzgnc;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgmv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmy;->zzc:Lcom/google/android/gms/internal/ads/zzgmv;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmy;->zzc:Lcom/google/android/gms/internal/ads/zzgmv;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgmy;->zzb:Lcom/google/android/gms/internal/ads/zzgmv;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmy;->zzd:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x19

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<supplier that returned "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x13

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Suppliers.memoize("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmy;->zzc:Lcom/google/android/gms/internal/ads/zzgmv;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgmy;->zzb:Lcom/google/android/gms/internal/ads/zzgmv;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmy;->zza:Lcom/google/android/gms/internal/ads/zzgnc;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgmy;->zzc:Lcom/google/android/gms/internal/ads/zzgmv;

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgmy;->zzc:Lcom/google/android/gms/internal/ads/zzgmv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgmv;->zza()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgmy;->zzd:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmy;->zzc:Lcom/google/android/gms/internal/ads/zzgmv;

    .line 2
    monitor-exit v0

    return-object v2

    .line 3
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmy;->zzd:Ljava/lang/Object;

    return-object v0
.end method
