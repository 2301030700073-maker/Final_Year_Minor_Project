.class public final Lcom/google/android/gms/internal/ads/zzhnj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhfp;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhfp;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgwk;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzgvu;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzheq;

.field private static final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhng;->zza:Lcom/google/android/gms/internal/ads/zzhng;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhnd;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgwl;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhnj;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhni;->zza:Lcom/google/android/gms/internal/ads/zzhni;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhnf;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhnj;->zzc:Lcom/google/android/gms/internal/ads/zzhfp;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgwl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zzg()Lcom/google/android/gms/internal/ads/zzhyh;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.EcdsaPrivateKey"

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhef;->zzf(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhyh;)Lcom/google/android/gms/internal/ads/zzgwk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhnj;->zzd:Lcom/google/android/gms/internal/ads/zzgwk;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgwm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhkw;->zzd:Lcom/google/android/gms/internal/ads/zzhkw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkf;->zzi()Lcom/google/android/gms/internal/ads/zzhyh;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.EcdsaPublicKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhef;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhkw;Lcom/google/android/gms/internal/ads/zzhyh;)Lcom/google/android/gms/internal/ads/zzgvu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhnj;->zze:Lcom/google/android/gms/internal/ads/zzgvu;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhnh;->zza:Lcom/google/android/gms/internal/ads/zzhnh;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhnj;->zzf:Lcom/google/android/gms/internal/ads/zzheq;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzhnj;->zzg:I

    return-void
.end method

.method public static zza(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzhnj;->zzg:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhpy;->zza:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhfb;->zza()Lcom/google/android/gms/internal/ads/zzhfb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhpy;->zza(Lcom/google/android/gms/internal/ads/zzhfb;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhex;->zza()Lcom/google/android/gms/internal/ads/zzhex;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ECDSA_P256"

    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhoh;->zza:Lcom/google/android/gms/internal/ads/zzhnb;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P256_IEEE_P1363"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhoh;->zzd:Lcom/google/android/gms/internal/ads/zzhnb;

    .line 8
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhmw;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhmw;-><init>([B)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhmy;->zza:Lcom/google/android/gms/internal/ads/zzhmy;

    .line 9
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhmw;->zzc(Lcom/google/android/gms/internal/ads/zzhmy;)Lcom/google/android/gms/internal/ads/zzhmw;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhmx;->zza:Lcom/google/android/gms/internal/ads/zzhmx;

    .line 10
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhmw;->zzb(Lcom/google/android/gms/internal/ads/zzhmx;)Lcom/google/android/gms/internal/ads/zzhmw;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhmz;->zza:Lcom/google/android/gms/internal/ads/zzhmz;

    .line 11
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhmw;->zza(Lcom/google/android/gms/internal/ads/zzhmz;)Lcom/google/android/gms/internal/ads/zzhmw;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhna;->zzd:Lcom/google/android/gms/internal/ads/zzhna;

    .line 12
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhmw;->zzd(Lcom/google/android/gms/internal/ads/zzhna;)Lcom/google/android/gms/internal/ads/zzhmw;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhmw;->zze()Lcom/google/android/gms/internal/ads/zzhnb;

    move-result-object v2

    const-string v4, "ECDSA_P256_RAW"

    .line 14
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P256_IEEE_P1363_WITHOUT_PREFIX"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhoh;->zzf:Lcom/google/android/gms/internal/ads/zzhnb;

    .line 15
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P384"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhoh;->zzb:Lcom/google/android/gms/internal/ads/zzhnb;

    .line 16
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P384_IEEE_P1363"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhoh;->zze:Lcom/google/android/gms/internal/ads/zzhnb;

    .line 17
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhmw;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhmw;-><init>([B)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhmy;->zzc:Lcom/google/android/gms/internal/ads/zzhmy;

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhmw;->zzc(Lcom/google/android/gms/internal/ads/zzhmy;)Lcom/google/android/gms/internal/ads/zzhmw;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhmx;->zzb:Lcom/google/android/gms/internal/ads/zzhmx;

    .line 19
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhmw;->zzb(Lcom/google/android/gms/internal/ads/zzhmx;)Lcom/google/android/gms/internal/ads/zzhmw;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhmz;->zzb:Lcom/google/android/gms/internal/ads/zzhmz;

    .line 20
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhmw;->zza(Lcom/google/android/gms/internal/ads/zzhmz;)Lcom/google/android/gms/internal/ads/zzhmw;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhna;->zza:Lcom/google/android/gms/internal/ads/zzhna;

    .line 21
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhmw;->zzd(Lcom/google/android/gms/internal/ads/zzhna;)Lcom/google/android/gms/internal/ads/zzhmw;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhmw;->zze()Lcom/google/android/gms/internal/ads/zzhnb;

    move-result-object v2

    const-string v7, "ECDSA_P384_SHA512"

    .line 23
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhmw;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhmw;-><init>([B)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhmy;->zzb:Lcom/google/android/gms/internal/ads/zzhmy;

    .line 24
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhmw;->zzc(Lcom/google/android/gms/internal/ads/zzhmy;)Lcom/google/android/gms/internal/ads/zzhmw;

    .line 25
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhmw;->zzb(Lcom/google/android/gms/internal/ads/zzhmx;)Lcom/google/android/gms/internal/ads/zzhmw;

    .line 26
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhmw;->zza(Lcom/google/android/gms/internal/ads/zzhmz;)Lcom/google/android/gms/internal/ads/zzhmw;

    .line 27
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhmw;->zzd(Lcom/google/android/gms/internal/ads/zzhna;)Lcom/google/android/gms/internal/ads/zzhmw;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhmw;->zze()Lcom/google/android/gms/internal/ads/zzhnb;

    move-result-object v2

    const-string v3, "ECDSA_P384_SHA384"

    .line 29
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P521"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhoh;->zzc:Lcom/google/android/gms/internal/ads/zzhnb;

    .line 30
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P521_IEEE_P1363"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhoh;->zzg:Lcom/google/android/gms/internal/ads/zzhnb;

    .line 31
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhex;->zzd(Ljava/util/Map;)V

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhnj;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhnj;->zzc:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)V

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhes;->zza()Lcom/google/android/gms/internal/ads/zzhes;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhnj;->zzf:Lcom/google/android/gms/internal/ads/zzheq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhnb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhes;->zzb(Lcom/google/android/gms/internal/ads/zzheq;Ljava/lang/Class;)V

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdw;->zza()Lcom/google/android/gms/internal/ads/zzhdw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhnj;->zzd:Lcom/google/android/gms/internal/ads/zzgwk;

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhdw;->zzf(Lcom/google/android/gms/internal/ads/zzgvu;IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdw;->zza()Lcom/google/android/gms/internal/ads/zzhdw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhnj;->zze:Lcom/google/android/gms/internal/ads/zzgvu;

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhdw;->zzf(Lcom/google/android/gms/internal/ads/zzgvu;IZ)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use ECDSA in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
