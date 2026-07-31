.class public final Lcom/google/android/gms/internal/ads/zzhap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhfp;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgvu;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhet;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzheq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhao;->zza:Lcom/google/android/gms/internal/ads/zzhao;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhal;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhap;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgvm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhkw;->zzb:Lcom/google/android/gms/internal/ads/zzhkw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhmt;->zze()Lcom/google/android/gms/internal/ads/zzhyh;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhef;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhkw;Lcom/google/android/gms/internal/ads/zzhyh;)Lcom/google/android/gms/internal/ads/zzgvu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhap;->zzc:Lcom/google/android/gms/internal/ads/zzgvu;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzham;->zza:Lcom/google/android/gms/internal/ads/zzham;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhap;->zzd:Lcom/google/android/gms/internal/ads/zzhet;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhan;->zza:Lcom/google/android/gms/internal/ads/zzhan;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhap;->zze:Lcom/google/android/gms/internal/ads/zzheq;

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
    sget v0, Lcom/google/android/gms/internal/ads/zzhcr;->zza:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhfb;->zza()Lcom/google/android/gms/internal/ads/zzhfb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcr;->zza(Lcom/google/android/gms/internal/ads/zzhfb;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhap;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhex;->zza()Lcom/google/android/gms/internal/ads/zzhex;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhaq;->zza:Lcom/google/android/gms/internal/ads/zzhaq;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhar;->zzb(Lcom/google/android/gms/internal/ads/zzhaq;)Lcom/google/android/gms/internal/ads/zzhar;

    move-result-object v2

    const-string v3, "XCHACHA20_POLY1305"

    .line 9
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhaq;->zzc:Lcom/google/android/gms/internal/ads/zzhaq;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhar;->zzb(Lcom/google/android/gms/internal/ads/zzhaq;)Lcom/google/android/gms/internal/ads/zzhar;

    move-result-object v2

    const-string v3, "XCHACHA20_POLY1305_RAW"

    .line 10
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhex;->zzd(Ljava/util/Map;)V

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhes;->zza()Lcom/google/android/gms/internal/ads/zzhes;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhap;->zze:Lcom/google/android/gms/internal/ads/zzheq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhar;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhes;->zzb(Lcom/google/android/gms/internal/ads/zzheq;Ljava/lang/Class;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzheu;->zza()Lcom/google/android/gms/internal/ads/zzheu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhap;->zzd:Lcom/google/android/gms/internal/ads/zzhet;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhar;

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzheu;->zzb(Lcom/google/android/gms/internal/ads/zzhet;Ljava/lang/Class;)V

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdw;->zza()Lcom/google/android/gms/internal/ads/zzhdw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhap;->zzc:Lcom/google/android/gms/internal/ads/zzgvu;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhdw;->zzb(Lcom/google/android/gms/internal/ads/zzgvu;Z)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering XChaCha20Poly1305 is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
