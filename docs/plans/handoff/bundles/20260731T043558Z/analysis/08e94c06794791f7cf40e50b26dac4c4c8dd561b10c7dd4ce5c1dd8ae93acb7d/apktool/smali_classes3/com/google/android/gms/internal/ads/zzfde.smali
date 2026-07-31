.class final Lcom/google/android/gms/internal/ads/zzfde;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglu;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfdi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfdi;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfde;->zza:Lcom/google/android/gms/internal/ads/zzfdi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzecj;

    .line 2
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, ""

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Failed to get a cache key, reverting to legacy flow."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfde;->zza:Lcom/google/android/gms/internal/ads/zzfdi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfdg;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfdi;->zzb()Lcom/google/android/gms/internal/ads/zzfim;

    move-result-object v2

    invoke-direct {v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzfdg;-><init>(Lcom/google/android/gms/internal/ads/zzbxj;Lcom/google/android/gms/internal/ads/zzfim;[B)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfdi;->zzd(Lcom/google/android/gms/internal/ads/zzfdg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfdi;->zzc()Lcom/google/android/gms/internal/ads/zzfdg;

    move-result-object p1

    return-object p1
.end method
