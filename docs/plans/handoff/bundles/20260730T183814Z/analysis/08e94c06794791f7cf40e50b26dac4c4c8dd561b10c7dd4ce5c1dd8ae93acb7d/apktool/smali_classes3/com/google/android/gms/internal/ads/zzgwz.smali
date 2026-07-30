.class public final Lcom/google/android/gms/internal/ads/zzgwz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwz;->zzb()Lcom/google/android/gms/internal/ads/zzhds;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgwz;->zzb:Lcom/google/android/gms/internal/ads/zzhds;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgvq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcz;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwz;->zzb:Lcom/google/android/gms/internal/ads/zzhds;

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot use non-FIPS-compliant AeadConfigurationV1 in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzb()Lcom/google/android/gms/internal/ads/zzhds;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhft;->zza()Lcom/google/android/gms/internal/ads/zzhfq;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxf;->zzd(Lcom/google/android/gms/internal/ads/zzhfq;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgwx;->zza:Lcom/google/android/gms/internal/ads/zzgwx;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgxh;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfq;->zza(Lcom/google/android/gms/internal/ads/zzhfp;)Lcom/google/android/gms/internal/ads/zzhfq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgwv;->zza:Lcom/google/android/gms/internal/ads/zzgwv;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgxz;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfq;->zza(Lcom/google/android/gms/internal/ads/zzhfp;)Lcom/google/android/gms/internal/ads/zzhfq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgww;->zza:Lcom/google/android/gms/internal/ads/zzgww;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgyi;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfq;->zza(Lcom/google/android/gms/internal/ads/zzhfp;)Lcom/google/android/gms/internal/ads/zzhfq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgwu;->zza:Lcom/google/android/gms/internal/ads/zzgwu;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgxr;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfq;->zza(Lcom/google/android/gms/internal/ads/zzhfp;)Lcom/google/android/gms/internal/ads/zzhfq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgwt;->zza:Lcom/google/android/gms/internal/ads/zzgwt;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgyq;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfq;->zza(Lcom/google/android/gms/internal/ads/zzhfp;)Lcom/google/android/gms/internal/ads/zzhfq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgws;->zza:Lcom/google/android/gms/internal/ads/zzgws;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhal;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfq;->zza(Lcom/google/android/gms/internal/ads/zzhfp;)Lcom/google/android/gms/internal/ads/zzhfq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgwy;->zza:Lcom/google/android/gms/internal/ads/zzgwy;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhaf;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfq;->zza(Lcom/google/android/gms/internal/ads/zzhfp;)Lcom/google/android/gms/internal/ads/zzhfq;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfq;->zzc()Lcom/google/android/gms/internal/ads/zzhft;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhds;->zzb(Lcom/google/android/gms/internal/ads/zzhft;)Lcom/google/android/gms/internal/ads/zzhds;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
