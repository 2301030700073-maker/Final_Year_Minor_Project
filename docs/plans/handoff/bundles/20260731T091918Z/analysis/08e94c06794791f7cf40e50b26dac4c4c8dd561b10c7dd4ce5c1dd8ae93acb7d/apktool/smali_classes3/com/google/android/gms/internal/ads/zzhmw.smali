.class public final Lcom/google/android/gms/internal/ads/zzhmw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzhmz;

.field private zzb:Lcom/google/android/gms/internal/ads/zzhmx;

.field private zzc:Lcom/google/android/gms/internal/ads/zzhmy;

.field private zzd:Lcom/google/android/gms/internal/ads/zzhna;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zza:Lcom/google/android/gms/internal/ads/zzhmz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zzb:Lcom/google/android/gms/internal/ads/zzhmx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zzc:Lcom/google/android/gms/internal/ads/zzhmy;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhna;->zzd:Lcom/google/android/gms/internal/ads/zzhna;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zzd:Lcom/google/android/gms/internal/ads/zzhna;

    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zza:Lcom/google/android/gms/internal/ads/zzhmz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zzb:Lcom/google/android/gms/internal/ads/zzhmx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zzc:Lcom/google/android/gms/internal/ads/zzhmy;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhna;->zzd:Lcom/google/android/gms/internal/ads/zzhna;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zzd:Lcom/google/android/gms/internal/ads/zzhna;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhmz;)Lcom/google/android/gms/internal/ads/zzhmw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zza:Lcom/google/android/gms/internal/ads/zzhmz;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhmx;)Lcom/google/android/gms/internal/ads/zzhmw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zzb:Lcom/google/android/gms/internal/ads/zzhmx;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzhmy;)Lcom/google/android/gms/internal/ads/zzhmw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zzc:Lcom/google/android/gms/internal/ads/zzhmy;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzhna;)Lcom/google/android/gms/internal/ads/zzhmw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zzd:Lcom/google/android/gms/internal/ads/zzhna;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhnb;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zza:Lcom/google/android/gms/internal/ads/zzhmz;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zzb:Lcom/google/android/gms/internal/ads/zzhmx;

    if-eqz v2, :cond_8

    .line 2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zzc:Lcom/google/android/gms/internal/ads/zzhmy;

    if-eqz v3, :cond_7

    .line 3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhmw;->zzd:Lcom/google/android/gms/internal/ads/zzhna;

    if-eqz v4, :cond_6

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhmx;->zza:Lcom/google/android/gms/internal/ads/zzhmx;

    if-ne v2, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhmy;->zza:Lcom/google/android/gms/internal/ads/zzhmy;

    if-ne v3, v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "NIST_P256 requires SHA256"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhmx;->zzb:Lcom/google/android/gms/internal/ads/zzhmx;

    if-ne v2, v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhmy;->zzb:Lcom/google/android/gms/internal/ads/zzhmy;

    if-eq v3, v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhmy;->zzc:Lcom/google/android/gms/internal/ads/zzhmy;

    if-ne v3, v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "NIST_P384 requires SHA384 or SHA512"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_3
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhmx;->zzc:Lcom/google/android/gms/internal/ads/zzhmx;

    if-ne v2, v0, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhmy;->zzc:Lcom/google/android/gms/internal/ads/zzhmy;

    if-ne v3, v0, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "NIST_P521 requires SHA512"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_5
    :goto_2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzhnb;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhnb;-><init>(Lcom/google/android/gms/internal/ads/zzhmz;Lcom/google/android/gms/internal/ads/zzhmx;Lcom/google/android/gms/internal/ads/zzhmy;Lcom/google/android/gms/internal/ads/zzhna;[B)V

    return-object v6

    .line 4
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "EC curve type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "signature encoding is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
