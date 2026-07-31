.class public final Lcom/google/android/gms/ads/internal/request/zzc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/zzc$zzb;,
        Lcom/google/android/gms/ads/internal/request/zzc$zza;
    }
.end annotation


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)Lcom/google/android/gms/internal/zzhh;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzc$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/request/zzc$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/ads/internal/request/zzc;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;Lcom/google/android/gms/ads/internal/request/zzc$zzb;)Lcom/google/android/gms/internal/zzhh;

    move-result-object p0

    return-object p0
.end method

.method static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;Lcom/google/android/gms/ads/internal/request/zzc$zzb;)Lcom/google/android/gms/internal/zzhh;
    .locals 0

    invoke-interface {p3, p1}, Lcom/google/android/gms/ads/internal/request/zzc$zzb;->zzd(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzc;->zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)Lcom/google/android/gms/internal/zzhh;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzc;->zzc(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)Lcom/google/android/gms/internal/zzhh;

    move-result-object p0

    return-object p0
.end method

.method private static zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)Lcom/google/android/gms/internal/zzhh;
    .locals 1

    const-string v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzd$zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzd$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zzd$zza;->zzgi()Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private static zzc(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)Lcom/google/android/gms/internal/zzhh;
    .locals 1

    const-string v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzP(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Failed to connect to remote ad request service."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzd$zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    return-object v0
.end method
