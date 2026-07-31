.class public final Lcom/google/android/gms/internal/ads/zzhaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhsz;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhfi;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhff;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzhec;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzhdz;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgi;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhaw;->zzb:Lcom/google/android/gms/internal/ads/zzhsz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhav;->zza:Lcom/google/android/gms/internal/ads/zzhav;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgxp;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhfi;->zzd(Lcom/google/android/gms/internal/ads/zzhfh;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhaw;->zzc:Lcom/google/android/gms/internal/ads/zzhfi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhas;->zza:Lcom/google/android/gms/internal/ads/zzhas;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhff;->zzd(Lcom/google/android/gms/internal/ads/zzhfe;Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhff;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhaw;->zzd:Lcom/google/android/gms/internal/ads/zzhff;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhat;->zza:Lcom/google/android/gms/internal/ads/zzhat;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgxh;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhfw;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhec;->zzd(Lcom/google/android/gms/internal/ads/zzheb;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhec;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhaw;->zze:Lcom/google/android/gms/internal/ads/zzhec;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhfw;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhau;->zza:Lcom/google/android/gms/internal/ads/zzhau;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhdz;->zzd(Lcom/google/android/gms/internal/ads/zzhdy;Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhdz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhaw;->zzf:Lcom/google/android/gms/internal/ads/zzhdz;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhfb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhaw;->zzc:Lcom/google/android/gms/internal/ads/zzhfi;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhfb;->zzd(Lcom/google/android/gms/internal/ads/zzhfi;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhaw;->zzd:Lcom/google/android/gms/internal/ads/zzhff;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhfb;->zze(Lcom/google/android/gms/internal/ads/zzhff;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhaw;->zze:Lcom/google/android/gms/internal/ads/zzhec;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhfb;->zzb(Lcom/google/android/gms/internal/ads/zzhec;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhaw;->zzf:Lcom/google/android/gms/internal/ads/zzhdz;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhfb;->zzc(Lcom/google/android/gms/internal/ads/zzhdz;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzhfx;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhla;->zze()Lcom/google/android/gms/internal/ads/zzhkz;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhkz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhiz;->zzd()Lcom/google/android/gms/internal/ads/zzhiy;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjd;->zzc()Lcom/google/android/gms/internal/ads/zzhjc;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjf;->zzb()Lcom/google/android/gms/internal/ads/zzhje;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzf()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhje;->zza(I)Lcom/google/android/gms/internal/ads/zzhje;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhjf;

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhjc;->zza(Lcom/google/android/gms/internal/ads/zzhjf;)Lcom/google/android/gms/internal/ads/zzhjc;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzc()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhjc;->zzb(I)Lcom/google/android/gms/internal/ads/zzhjc;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhjd;

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhiy;->zza(Lcom/google/android/gms/internal/ads/zzhjd;)Lcom/google/android/gms/internal/ads/zzhiy;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhks;->zze()Lcom/google/android/gms/internal/ads/zzhkr;

    move-result-object v2

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhaw;->zzi(Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhkr;->zza(Lcom/google/android/gms/internal/ads/zzhku;)Lcom/google/android/gms/internal/ads/zzhkr;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhkr;->zzb(I)Lcom/google/android/gms/internal/ads/zzhkr;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhks;

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhiy;->zzb(Lcom/google/android/gms/internal/ads/zzhks;)Lcom/google/android/gms/internal/ads/zzhiy;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhiz;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhur;->zzaM()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkz;->zzb(Lcom/google/android/gms/internal/ads/zzhvi;)Lcom/google/android/gms/internal/ads/zzhkz;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzg()Lcom/google/android/gms/internal/ads/zzgxo;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhaw;->zzf(Lcom/google/android/gms/internal/ads/zzgxo;)Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhkz;->zzc(Lcom/google/android/gms/internal/ads/zzhlt;)Lcom/google/android/gms/internal/ads/zzhkz;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhla;

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhfx;->zza(Lcom/google/android/gms/internal/ads/zzhla;)Lcom/google/android/gms/internal/ads/zzhfx;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzhfx;)Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfx;->zzc()Lcom/google/android/gms/internal/ads/zzhla;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhla;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfx;->zzc()Lcom/google/android/gms/internal/ads/zzhla;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhla;->zzb()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhvy;->zza()Lcom/google/android/gms/internal/ads/zzhvy;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhiz;->zzc(Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhiz;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhxd; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhiz;->zzb()Lcom/google/android/gms/internal/ads/zzhks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhks;->zzc()I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxp;->zzb()Lcom/google/android/gms/internal/ads/zzgxm;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhiz;->zza()Lcom/google/android/gms/internal/ads/zzhjd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhjd;->zzb()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zza(I)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhiz;->zzb()Lcom/google/android/gms/internal/ads/zzhks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhks;->zzb()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zzb(I)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhiz;->zza()Lcom/google/android/gms/internal/ads/zzhjd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhjd;->zza()Lcom/google/android/gms/internal/ads/zzhjf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhjf;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zzc(I)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhiz;->zzb()Lcom/google/android/gms/internal/ads/zzhks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhks;->zza()Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhku;->zzb()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zzd(I)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhiz;->zzb()Lcom/google/android/gms/internal/ads/zzhks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhks;->zza()Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhku;->zza()Lcom/google/android/gms/internal/ads/zzhko;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhaw;->zzh(Lcom/google/android/gms/internal/ads/zzhko;)Lcom/google/android/gms/internal/ads/zzgxn;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgxm;->zzf(Lcom/google/android/gms/internal/ads/zzgxn;)Lcom/google/android/gms/internal/ads/zzgxm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfx;->zzc()Lcom/google/android/gms/internal/ads/zzhla;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhla;->zzc()Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhaw;->zzg(Lcom/google/android/gms/internal/ads/zzhlt;)Lcom/google/android/gms/internal/ads/zzgxo;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzgxm;->zze(Lcom/google/android/gms/internal/ads/zzgxo;)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxm;->zzg()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing AesCtrHmacAeadParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfx;->zzc()Lcom/google/android/gms/internal/ads/zzhla;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhla;->zza()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzgxh;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhfw;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhix;->zze()Lcom/google/android/gms/internal/ads/zzhiw;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjb;->zzd()Lcom/google/android/gms/internal/ads/zzhja;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjf;->zzb()Lcom/google/android/gms/internal/ads/zzhje;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxh;->zzg()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgxp;->zzf()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhje;->zza(I)Lcom/google/android/gms/internal/ads/zzhje;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhjf;

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhja;->zza(Lcom/google/android/gms/internal/ads/zzhjf;)Lcom/google/android/gms/internal/ads/zzhja;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxh;->zze()Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object v2

    .line 7
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzhtb;->zzc(Lcom/google/android/gms/internal/ads/zzgwn;)[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    .line 8
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzhvi;->zzr([BII)Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhja;->zzb(Lcom/google/android/gms/internal/ads/zzhvi;)Lcom/google/android/gms/internal/ads/zzhja;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhjb;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhiw;->zza(Lcom/google/android/gms/internal/ads/zzhjb;)Lcom/google/android/gms/internal/ads/zzhiw;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkq;->zze()Lcom/google/android/gms/internal/ads/zzhkp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxh;->zzg()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v2

    .line 13
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhaw;->zzi(Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhkp;->zza(Lcom/google/android/gms/internal/ads/zzhku;)Lcom/google/android/gms/internal/ads/zzhkp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxh;->zzf()Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object v2

    .line 14
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzhtb;->zzc(Lcom/google/android/gms/internal/ads/zzgwn;)[B

    move-result-object p1

    array-length v2, p1

    .line 15
    invoke-static {p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzhvi;->zzr([BII)Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzhkp;->zzb(Lcom/google/android/gms/internal/ads/zzhvi;)Lcom/google/android/gms/internal/ads/zzhkp;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhkq;

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhiw;->zzb(Lcom/google/android/gms/internal/ads/zzhkq;)Lcom/google/android/gms/internal/ads/zzhiw;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhix;

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhur;->zzaM()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhkw;->zzb:Lcom/google/android/gms/internal/ads/zzhkw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxh;->zzg()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzg()Lcom/google/android/gms/internal/ads/zzgxo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhaw;->zzf(Lcom/google/android/gms/internal/ads/zzgxo;)Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxh;->zzb()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 22
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhkw;Lcom/google/android/gms/internal/ads/zzhlt;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhfw;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzhfw;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgxh;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzb()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhvy;->zza()Lcom/google/android/gms/internal/ads/zzhvy;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhix;->zzd(Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhix;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhix;->zza()I

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhix;->zzb()Lcom/google/android/gms/internal/ads/zzhjb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhjb;->zza()I

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhix;->zzc()Lcom/google/android/gms/internal/ads/zzhkq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhkq;->zza()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxp;->zzb()Lcom/google/android/gms/internal/ads/zzgxm;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhix;->zzb()Lcom/google/android/gms/internal/ads/zzhjb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhjb;->zzc()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhvi;->zzc()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zza(I)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhix;->zzc()Lcom/google/android/gms/internal/ads/zzhkq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhkq;->zzc()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhvi;->zzc()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zzb(I)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhix;->zzb()Lcom/google/android/gms/internal/ads/zzhjb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhjb;->zzb()Lcom/google/android/gms/internal/ads/zzhjf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhjf;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zzc(I)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhix;->zzc()Lcom/google/android/gms/internal/ads/zzhkq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhkq;->zzb()Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhku;->zzb()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zzd(I)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhix;->zzc()Lcom/google/android/gms/internal/ads/zzhkq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhkq;->zzb()Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhku;->zza()Lcom/google/android/gms/internal/ads/zzhko;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhaw;->zzh(Lcom/google/android/gms/internal/ads/zzhko;)Lcom/google/android/gms/internal/ads/zzgxn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zzf(Lcom/google/android/gms/internal/ads/zzgxn;)Lcom/google/android/gms/internal/ads/zzgxm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzd()Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object v2

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhaw;->zzg(Lcom/google/android/gms/internal/ads/zzhlt;)Lcom/google/android/gms/internal/ads/zzgxo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zze(Lcom/google/android/gms/internal/ads/zzgxo;)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxm;->zzg()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxh;->zzd()Lcom/google/android/gms/internal/ads/zzgxg;

    move-result-object v2

    .line 17
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzgxg;->zza(Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzgxg;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhix;->zzb()Lcom/google/android/gms/internal/ads/zzhjb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhjb;->zzc()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhvi;->zzv()[B

    move-result-object v1

    .line 19
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzhtb;->zza([BLcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object v1

    .line 20
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzgxg;->zzb(Lcom/google/android/gms/internal/ads/zzhtb;)Lcom/google/android/gms/internal/ads/zzgxg;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhix;->zzc()Lcom/google/android/gms/internal/ads/zzhkq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkq;->zzc()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhvi;->zzv()[B

    move-result-object v0

    .line 22
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhtb;->zza([BLcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object p1

    .line 23
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgxg;->zzc(Lcom/google/android/gms/internal/ads/zzhtb;)Lcom/google/android/gms/internal/ads/zzgxg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zze()Ljava/lang/Integer;

    move-result-object p0

    .line 24
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzgxg;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgxg;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxg;->zze()Lcom/google/android/gms/internal/ads/zzgxh;

    move-result-object p0

    return-object p0

    .line 26
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys inner HMAC keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys inner AES CTR keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhxd; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing AesCtrHmacAeadKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey"

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzgxo;)Lcom/google/android/gms/internal/ads/zzhlt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxo;->zza:Lcom/google/android/gms/internal/ads/zzgxo;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhlt;->zzb:Lcom/google/android/gms/internal/ads/zzhlt;

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxo;->zzb:Lcom/google/android/gms/internal/ads/zzgxo;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhlt;->zze:Lcom/google/android/gms/internal/ads/zzhlt;

    return-object p0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxo;->zzc:Lcom/google/android/gms/internal/ads/zzgxo;

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhlt;->zzd:Lcom/google/android/gms/internal/ads/zzhlt;

    return-object p0

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to serialize variant: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzhlt;)Lcom/google/android/gms/internal/ads/zzgxo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlt;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlt;->zza()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x22

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unable to parse OutputPrefixType: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgxo;->zzc:Lcom/google/android/gms/internal/ads/zzgxo;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgxo;->zzb:Lcom/google/android/gms/internal/ads/zzgxo;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgxo;->zza:Lcom/google/android/gms/internal/ads/zzgxo;

    return-object p0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzhko;)Lcom/google/android/gms/internal/ads/zzgxn;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhko;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzb:Lcom/google/android/gms/internal/ads/zzgxn;

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhko;->zza()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1a

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unable to parse HashType: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgxn;->zze:Lcom/google/android/gms/internal/ads/zzgxn;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzc:Lcom/google/android/gms/internal/ads/zzgxn;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzd:Lcom/google/android/gms/internal/ads/zzgxn;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgxn;->zza:Lcom/google/android/gms/internal/ads/zzgxn;

    return-object p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzhku;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhku;->zzc()Lcom/google/android/gms/internal/ads/zzhkt;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zze()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkt;->zzb(I)Lcom/google/android/gms/internal/ads/zzhkt;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzh()Lcom/google/android/gms/internal/ads/zzgxn;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxn;->zza:Lcom/google/android/gms/internal/ads/zzgxn;

    .line 4
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhko;->zzb:Lcom/google/android/gms/internal/ads/zzhko;

    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxn;->zzb:Lcom/google/android/gms/internal/ads/zzgxn;

    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhko;->zzf:Lcom/google/android/gms/internal/ads/zzhko;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxn;->zzc:Lcom/google/android/gms/internal/ads/zzgxn;

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhko;->zzd:Lcom/google/android/gms/internal/ads/zzhko;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxn;->zzd:Lcom/google/android/gms/internal/ads/zzgxn;

    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhko;->zzc:Lcom/google/android/gms/internal/ads/zzhko;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxn;->zze:Lcom/google/android/gms/internal/ads/zzgxn;

    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhko;->zze:Lcom/google/android/gms/internal/ads/zzhko;

    .line 3
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhkt;->zza(Lcom/google/android/gms/internal/ads/zzhko;)Lcom/google/android/gms/internal/ads/zzhkt;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhku;

    return-object p0

    .line 10
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to serialize HashType "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
