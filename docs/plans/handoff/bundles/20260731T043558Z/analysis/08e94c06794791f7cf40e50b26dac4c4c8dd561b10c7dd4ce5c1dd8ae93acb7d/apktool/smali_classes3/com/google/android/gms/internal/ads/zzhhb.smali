.class public final Lcom/google/android/gms/internal/ads/zzhhb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhfp;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhfp;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgvu;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzhet;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzheq;

.field private static final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgx;->zza:Lcom/google/android/gms/internal/ads/zzhgx;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhgw;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhgs;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhb;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhha;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhgw;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgwi;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhb;->zzc:Lcom/google/android/gms/internal/ads/zzhfp;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhkw;->zzb:Lcom/google/android/gms/internal/ads/zzhkw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkq;->zzh()Lcom/google/android/gms/internal/ads/zzhyh;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhef;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhkw;Lcom/google/android/gms/internal/ads/zzhyh;)Lcom/google/android/gms/internal/ads/zzgvu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhb;->zzd:Lcom/google/android/gms/internal/ads/zzgvu;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgz;->zza:Lcom/google/android/gms/internal/ads/zzhgz;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhb;->zze:Lcom/google/android/gms/internal/ads/zzhet;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgy;->zza:Lcom/google/android/gms/internal/ads/zzhgy;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhb;->zzf:Lcom/google/android/gms/internal/ads/zzheq;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzhhb;->zzg:I

    return-void
.end method

.method public static zza(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzhhb;->zzg:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhig;->zza:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhfb;->zza()Lcom/google/android/gms/internal/ads/zzhfb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhig;->zza(Lcom/google/android/gms/internal/ads/zzhfb;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhhb;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhhb;->zzc:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhex;->zza()Lcom/google/android/gms/internal/ads/zzhex;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "HMAC_SHA256_128BITTAG"

    .line 10
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhhs;->zza:Lcom/google/android/gms/internal/ads/zzhhf;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhhc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhhc;-><init>([B)V

    const/16 v4, 0x20

    .line 11
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhhc;->zza(I)Lcom/google/android/gms/internal/ads/zzhhc;

    const/16 v5, 0x10

    .line 12
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhhc;->zzb(I)Lcom/google/android/gms/internal/ads/zzhhc;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhhe;->zzd:Lcom/google/android/gms/internal/ads/zzhhe;

    .line 13
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc(Lcom/google/android/gms/internal/ads/zzhhe;)Lcom/google/android/gms/internal/ads/zzhhc;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzhhd;->zzc:Lcom/google/android/gms/internal/ads/zzhhd;

    .line 14
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhhc;->zzd(Lcom/google/android/gms/internal/ads/zzhhd;)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhhc;->zze()Lcom/google/android/gms/internal/ads/zzhhf;

    move-result-object v2

    const-string v8, "HMAC_SHA256_128BITTAG_RAW"

    .line 16
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhhc;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhhc;-><init>([B)V

    .line 17
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhhc;->zza(I)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhhc;->zzb(I)Lcom/google/android/gms/internal/ads/zzhhc;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzhhe;->zza:Lcom/google/android/gms/internal/ads/zzhhe;

    .line 19
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc(Lcom/google/android/gms/internal/ads/zzhhe;)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 20
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhhc;->zzd(Lcom/google/android/gms/internal/ads/zzhhd;)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhhc;->zze()Lcom/google/android/gms/internal/ads/zzhhf;

    move-result-object v2

    const-string v9, "HMAC_SHA256_256BITTAG"

    .line 22
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhhc;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhhc;-><init>([B)V

    .line 23
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhhc;->zza(I)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 24
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhhc;->zzb(I)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 25
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc(Lcom/google/android/gms/internal/ads/zzhhe;)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 26
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhhc;->zzd(Lcom/google/android/gms/internal/ads/zzhhd;)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhhc;->zze()Lcom/google/android/gms/internal/ads/zzhhf;

    move-result-object v2

    const-string v7, "HMAC_SHA256_256BITTAG_RAW"

    .line 28
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhhc;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhhc;-><init>([B)V

    const/16 v7, 0x40

    .line 29
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhhc;->zza(I)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 30
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhhc;->zzb(I)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 31
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc(Lcom/google/android/gms/internal/ads/zzhhe;)Lcom/google/android/gms/internal/ads/zzhhc;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzhhd;->zze:Lcom/google/android/gms/internal/ads/zzhhd;

    .line 32
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhhc;->zzd(Lcom/google/android/gms/internal/ads/zzhhd;)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhhc;->zze()Lcom/google/android/gms/internal/ads/zzhhf;

    move-result-object v2

    const-string v10, "HMAC_SHA512_128BITTAG"

    .line 34
    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhhc;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhhc;-><init>([B)V

    .line 35
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhhc;->zza(I)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 36
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhhc;->zzb(I)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 37
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc(Lcom/google/android/gms/internal/ads/zzhhe;)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 38
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhhc;->zzd(Lcom/google/android/gms/internal/ads/zzhhd;)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhhc;->zze()Lcom/google/android/gms/internal/ads/zzhhf;

    move-result-object v2

    const-string v5, "HMAC_SHA512_128BITTAG_RAW"

    .line 40
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhhc;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhhc;-><init>([B)V

    .line 41
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhhc;->zza(I)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 42
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhhc;->zzb(I)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 43
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc(Lcom/google/android/gms/internal/ads/zzhhe;)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 44
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhhc;->zzd(Lcom/google/android/gms/internal/ads/zzhhd;)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhhc;->zze()Lcom/google/android/gms/internal/ads/zzhhf;

    move-result-object v2

    const-string v5, "HMAC_SHA512_256BITTAG"

    .line 46
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhhc;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhhc;-><init>([B)V

    .line 47
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhhc;->zza(I)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 48
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhhc;->zzb(I)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 49
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc(Lcom/google/android/gms/internal/ads/zzhhe;)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 50
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhhc;->zzd(Lcom/google/android/gms/internal/ads/zzhhd;)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhhc;->zze()Lcom/google/android/gms/internal/ads/zzhhf;

    move-result-object v2

    const-string v4, "HMAC_SHA512_256BITTAG_RAW"

    .line 52
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMAC_SHA512_512BITTAG"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhhs;->zzb:Lcom/google/android/gms/internal/ads/zzhhf;

    .line 53
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhhc;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhhc;-><init>([B)V

    .line 54
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhhc;->zza(I)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 55
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhhc;->zzb(I)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 56
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc(Lcom/google/android/gms/internal/ads/zzhhe;)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 57
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhhc;->zzd(Lcom/google/android/gms/internal/ads/zzhhd;)Lcom/google/android/gms/internal/ads/zzhhc;

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhhc;->zze()Lcom/google/android/gms/internal/ads/zzhhf;

    move-result-object v2

    const-string v3, "HMAC_SHA512_512BITTAG_RAW"

    .line 59
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhex;->zzd(Ljava/util/Map;)V

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhes;->zza()Lcom/google/android/gms/internal/ads/zzhes;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhhb;->zzf:Lcom/google/android/gms/internal/ads/zzheq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhhf;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhes;->zzb(Lcom/google/android/gms/internal/ads/zzheq;Ljava/lang/Class;)V

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzheu;->zza()Lcom/google/android/gms/internal/ads/zzheu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhhb;->zze:Lcom/google/android/gms/internal/ads/zzhet;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhhf;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzheu;->zzb(Lcom/google/android/gms/internal/ads/zzhet;Ljava/lang/Class;)V

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdw;->zza()Lcom/google/android/gms/internal/ads/zzhdw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhhb;->zzd:Lcom/google/android/gms/internal/ads/zzgvu;

    const/4 v2, 0x1

    .line 64
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhdw;->zzf(Lcom/google/android/gms/internal/ads/zzgvu;IZ)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
