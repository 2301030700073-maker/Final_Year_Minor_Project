.class public final Lcom/google/android/gms/internal/ads/zzhgo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzheq;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhfp;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhfp;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgvu;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgn;->zza:Lcom/google/android/gms/internal/ads/zzhgn;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgo;->zza:Lcom/google/android/gms/internal/ads/zzheq;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgl;->zza:Lcom/google/android/gms/internal/ads/zzhgl;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhgk;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhgs;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgo;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgm;->zza:Lcom/google/android/gms/internal/ads/zzhgm;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhgk;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgwi;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgo;->zzc:Lcom/google/android/gms/internal/ads/zzhfp;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhkw;->zzb:Lcom/google/android/gms/internal/ads/zzhkw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhir;->zzg()Lcom/google/android/gms/internal/ads/zzhyh;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhef;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhkw;Lcom/google/android/gms/internal/ads/zzhyh;)Lcom/google/android/gms/internal/ads/zzgvu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgo;->zzd:Lcom/google/android/gms/internal/ads/zzgvu;

    return-void
.end method

.method public static zza(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhhx;->zza:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhfb;->zza()Lcom/google/android/gms/internal/ads/zzhfb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhx;->zza(Lcom/google/android/gms/internal/ads/zzhfb;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhes;->zza()Lcom/google/android/gms/internal/ads/zzhes;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgo;->zza:Lcom/google/android/gms/internal/ads/zzheq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhgr;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhes;->zzb(Lcom/google/android/gms/internal/ads/zzheq;Ljava/lang/Class;)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgo;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgo;->zzc:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhex;->zza()Lcom/google/android/gms/internal/ads/zzhex;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhhs;->zzc:Lcom/google/android/gms/internal/ads/zzhgr;

    const-string v3, "AES_CMAC"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AES256_CMAC"

    .line 12
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhgp;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhgp;-><init>([B)V

    const/16 v3, 0x20

    .line 13
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhgp;->zza(I)Lcom/google/android/gms/internal/ads/zzhgp;

    const/16 v3, 0x10

    .line 14
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb(I)Lcom/google/android/gms/internal/ads/zzhgp;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhgq;->zzd:Lcom/google/android/gms/internal/ads/zzhgq;

    .line 15
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhgp;->zzc(Lcom/google/android/gms/internal/ads/zzhgq;)Lcom/google/android/gms/internal/ads/zzhgp;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhgp;->zzd()Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object v2

    const-string v3, "AES256_CMAC_RAW"

    .line 17
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhex;->zzd(Ljava/util/Map;)V

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdw;->zza()Lcom/google/android/gms/internal/ads/zzhdw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgo;->zzd:Lcom/google/android/gms/internal/ads/zzgvu;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhdw;->zzb(Lcom/google/android/gms/internal/ads/zzgvu;Z)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering AES CMAC is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzhgr;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhgk;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhgo;->zze(Lcom/google/android/gms/internal/ads/zzhgr;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgj;-><init>([B)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhgj;->zza(Lcom/google/android/gms/internal/ads/zzhgr;)Lcom/google/android/gms/internal/ads/zzhgj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhgr;->zzc()I

    move-result p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhtb;->zzb(I)Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhgj;->zzb(Lcom/google/android/gms/internal/ads/zzhtb;)Lcom/google/android/gms/internal/ads/zzhgj;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhgj;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhgj;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhgj;->zzd()Lcom/google/android/gms/internal/ads/zzhgk;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzhgk;)Lcom/google/android/gms/internal/ads/zzhgs;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzf()Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgo;->zze(Lcom/google/android/gms/internal/ads/zzhgr;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhia;->zza(Lcom/google/android/gms/internal/ads/zzhgk;)Lcom/google/android/gms/internal/ads/zzhgs;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzhgk;)Lcom/google/android/gms/internal/ads/zzgwi;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzf()Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgo;->zze(Lcom/google/android/gms/internal/ads/zzhgr;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhsp;->zza(Lcom/google/android/gms/internal/ads/zzhgk;)Lcom/google/android/gms/internal/ads/zzgwi;

    move-result-object p0

    return-object p0
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzhgr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhgr;->zzc()I

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
