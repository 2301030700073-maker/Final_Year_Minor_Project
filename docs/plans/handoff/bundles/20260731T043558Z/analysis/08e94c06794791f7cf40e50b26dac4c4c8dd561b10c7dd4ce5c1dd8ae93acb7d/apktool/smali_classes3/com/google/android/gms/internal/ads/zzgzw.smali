.class final synthetic Lcom/google/android/gms/internal/ads/zzgzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgg;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgzw;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgzw;->zza:Lcom/google/android/gms/internal/ads/zzgzw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhae;->zza:Lcom/google/android/gms/internal/ads/zzgyg;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxv;-><init>([B)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzb(I)Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxv;->zza(I)Lcom/google/android/gms/internal/ads/zzgxv;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc(I)Lcom/google/android/gms/internal/ads/zzgxv;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxw;->zza:Lcom/google/android/gms/internal/ads/zzgxw;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzd(Lcom/google/android/gms/internal/ads/zzgxw;)Lcom/google/android/gms/internal/ads/zzgxv;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zze()Lcom/google/android/gms/internal/ads/zzgxx;

    move-result-object v0

    return-object v0
.end method
