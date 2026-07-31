.class final Lcom/google/android/gms/wearable/internal/zzbj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/internal/zzbj$zzb;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzo;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzs;,
        Lcom/google/android/gms/wearable/internal/zzbj$zza;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzf;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzg;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzr;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzu;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzi;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzh;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzd;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzc;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzp;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzt;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzq;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzn;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzm;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzl;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzk;,
        Lcom/google/android/gms/wearable/internal/zzbj$zzj;,
        Lcom/google/android/gms/wearable/internal/zzbj$zze;
    }
.end annotation


# direct methods
.method private static zzv(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/wearable/internal/CapabilityInfoParcelable;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wearable/CapabilityInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/internal/CapabilityInfoParcelable;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/internal/CapabilityInfoParcelable;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/wearable/internal/zzg$zzc;

    invoke-direct {v3, v1}, Lcom/google/android/gms/wearable/internal/zzg$zzc;-><init>(Lcom/google/android/gms/wearable/CapabilityInfo;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic zzw(Ljava/util/List;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/wearable/internal/zzbj;->zzv(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
