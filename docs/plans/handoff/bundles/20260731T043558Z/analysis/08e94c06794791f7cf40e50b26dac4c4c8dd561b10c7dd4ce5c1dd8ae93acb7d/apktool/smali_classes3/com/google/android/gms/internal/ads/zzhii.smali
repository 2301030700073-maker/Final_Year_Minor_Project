.class public final Lcom/google/android/gms/internal/ads/zzhii;
.super Lcom/google/android/gms/internal/ads/zzhil;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhij;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhtb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhij;Lcom/google/android/gms/internal/ads/zzhtb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhil;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhii;->zza:Lcom/google/android/gms/internal/ads/zzhij;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhii;->zzb:Lcom/google/android/gms/internal/ads/zzhtb;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzhij;Lcom/google/android/gms/internal/ads/zzhtb;)Lcom/google/android/gms/internal/ads/zzhii;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhij;->zzc()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhtb;->zzd()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhii;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhii;-><init>(Lcom/google/android/gms/internal/ads/zzhij;Lcom/google/android/gms/internal/ads/zzhtb;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Key size mismatch"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzgwj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhii;->zza:Lcom/google/android/gms/internal/ads/zzhij;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhtb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhii;->zzb:Lcom/google/android/gms/internal/ads/zzhtb;

    return-object v0
.end method
