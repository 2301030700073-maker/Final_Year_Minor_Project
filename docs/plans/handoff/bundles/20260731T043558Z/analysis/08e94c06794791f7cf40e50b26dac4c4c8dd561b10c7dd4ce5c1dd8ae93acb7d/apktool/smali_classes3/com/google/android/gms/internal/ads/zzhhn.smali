.class final synthetic Lcom/google/android/gms/internal/ads/zzhhn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgg;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhhn;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhhn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhhn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhn;->zza:Lcom/google/android/gms/internal/ads/zzhhn;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhhs;->zza:Lcom/google/android/gms/internal/ads/zzhhf;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhhc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhhc;-><init>([B)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhhc;->zza(I)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhhc;->zzb(I)Lcom/google/android/gms/internal/ads/zzhhc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhhe;->zza:Lcom/google/android/gms/internal/ads/zzhhe;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc(Lcom/google/android/gms/internal/ads/zzhhe;)Lcom/google/android/gms/internal/ads/zzhhc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhhd;->zzc:Lcom/google/android/gms/internal/ads/zzhhd;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhhc;->zzd(Lcom/google/android/gms/internal/ads/zzhhd;)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhhc;->zze()Lcom/google/android/gms/internal/ads/zzhhf;

    move-result-object v0

    return-object v0
.end method
