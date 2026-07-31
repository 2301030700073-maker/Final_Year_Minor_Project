.class public final Lcom/google/android/gms/internal/ads/zzhtb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhsz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhsz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtb;->zza:Lcom/google/android/gms/internal/ads/zzhsz;

    return-void
.end method

.method public static zza([BLcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhtb;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhtb;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhsz;->zza([B)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzhtb;-><init>(Lcom/google/android/gms/internal/ads/zzhsz;)V

    return-object p1
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/ads/zzhtb;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhtb;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhfz;->zza(I)[B

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhsz;->zza([B)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhtb;-><init>(Lcom/google/android/gms/internal/ads/zzhsz;)V

    return-object v0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzgwn;)[B
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtb;->zza:Lcom/google/android/gms/internal/ads/zzhsz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object p1

    return-object p1
.end method

.method public final zzd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtb;->zza:Lcom/google/android/gms/internal/ads/zzhsz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsz;->zzd()I

    move-result v0

    return v0
.end method
