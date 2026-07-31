.class final synthetic Lcom/google/android/gms/internal/ads/zzhad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgg;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhad;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhad;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhad;->zza:Lcom/google/android/gms/internal/ads/zzhad;

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
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgye;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgye;-><init>([B)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgye;->zzb(I)Lcom/google/android/gms/internal/ads/zzgye;

    const/16 v1, 0x10

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgye;->zza(I)Lcom/google/android/gms/internal/ads/zzgye;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgye;->zzc(I)Lcom/google/android/gms/internal/ads/zzgye;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgyf;->zza:Lcom/google/android/gms/internal/ads/zzgyf;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgye;->zzd(Lcom/google/android/gms/internal/ads/zzgyf;)Lcom/google/android/gms/internal/ads/zzgye;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgye;->zze()Lcom/google/android/gms/internal/ads/zzgyg;

    move-result-object v0

    return-object v0
.end method
