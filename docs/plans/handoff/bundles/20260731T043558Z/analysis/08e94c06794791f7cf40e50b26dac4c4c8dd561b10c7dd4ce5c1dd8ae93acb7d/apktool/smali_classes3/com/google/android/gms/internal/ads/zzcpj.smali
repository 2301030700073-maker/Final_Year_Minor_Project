.class final Lcom/google/android/gms/internal/ads/zzcpj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzguf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcpq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcpq;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpj;->zza:Lcom/google/android/gms/internal/ads/zzcpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpj;->zza:Lcom/google/android/gms/internal/ads/zzcpq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpq;->zzt()Lcom/google/android/gms/internal/ads/zzfnc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpq;->zzr()Lcom/google/android/gms/internal/ads/zzfgf;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpq;->zzs()Lcom/google/android/gms/internal/ads/zzffu;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpq;->zzs()Lcom/google/android/gms/internal/ads/zzffu;

    move-result-object v4

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzffu;->zzc:Ljava/util/List;

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 2
    const-string v5, ""

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzfnc;->zzb(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcxi;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcbj;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpq;->zzq()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcbj;->zzs(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpq;->zzu()Lcom/google/android/gms/internal/ads/zzfha;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzfha;->zzb(Ljava/util/List;I)V

    return-void
.end method
