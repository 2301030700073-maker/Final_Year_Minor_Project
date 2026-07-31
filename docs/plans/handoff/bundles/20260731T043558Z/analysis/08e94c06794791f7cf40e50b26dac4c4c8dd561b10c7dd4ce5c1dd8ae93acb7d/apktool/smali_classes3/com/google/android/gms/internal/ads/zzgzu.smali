.class public final Lcom/google/android/gms/internal/ads/zzgzu;
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
    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgi;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgzu;->zzb:Lcom/google/android/gms/internal/ads/zzhsz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzt;->zza:Lcom/google/android/gms/internal/ads/zzgzt;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgzp;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhfi;->zzd(Lcom/google/android/gms/internal/ads/zzhfh;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgzu;->zzc:Lcom/google/android/gms/internal/ads/zzhfi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzq;->zza:Lcom/google/android/gms/internal/ads/zzgzq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhff;->zzd(Lcom/google/android/gms/internal/ads/zzhfe;Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhff;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgzu;->zzd:Lcom/google/android/gms/internal/ads/zzhff;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzr;->zza:Lcom/google/android/gms/internal/ads/zzgzr;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgzl;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhfw;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhec;->zzd(Lcom/google/android/gms/internal/ads/zzheb;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhec;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgzu;->zze:Lcom/google/android/gms/internal/ads/zzhec;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhfw;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgzs;->zza:Lcom/google/android/gms/internal/ads/zzgzs;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhdz;->zzd(Lcom/google/android/gms/internal/ads/zzhdy;Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhdz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgzu;->zzf:Lcom/google/android/gms/internal/ads/zzhdz;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzu;->zzc:Lcom/google/android/gms/internal/ads/zzhfi;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhfb;->zzd(Lcom/google/android/gms/internal/ads/zzhfi;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzu;->zzd:Lcom/google/android/gms/internal/ads/zzhff;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhfb;->zze(Lcom/google/android/gms/internal/ads/zzhff;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzu;->zze:Lcom/google/android/gms/internal/ads/zzhec;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhfb;->zzb(Lcom/google/android/gms/internal/ads/zzhec;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzu;->zzf:Lcom/google/android/gms/internal/ads/zzhdz;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhfb;->zzc(Lcom/google/android/gms/internal/ads/zzhdz;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgzp;)Lcom/google/android/gms/internal/ads/zzhfx;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhla;->zze()Lcom/google/android/gms/internal/ads/zzhkz;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhkz;

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzg(Lcom/google/android/gms/internal/ads/zzgzp;)Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhur;->zzaM()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkz;->zzb(Lcom/google/android/gms/internal/ads/zzhvi;)Lcom/google/android/gms/internal/ads/zzhkz;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzc()Lcom/google/android/gms/internal/ads/zzgzo;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzf(Lcom/google/android/gms/internal/ads/zzgzo;)Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhkz;->zzc(Lcom/google/android/gms/internal/ads/zzhlt;)Lcom/google/android/gms/internal/ads/zzhkz;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhla;

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhfx;->zza(Lcom/google/android/gms/internal/ads/zzhla;)Lcom/google/android/gms/internal/ads/zzhfx;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzhfx;)Lcom/google/android/gms/internal/ads/zzgzp;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfx;->zzc()Lcom/google/android/gms/internal/ads/zzhla;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhla;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhls;->zzc(Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhxd; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfx;->zzc()Lcom/google/android/gms/internal/ads/zzhla;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhla;->zzc()Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzh(Lcom/google/android/gms/internal/ads/zzhls;Lcom/google/android/gms/internal/ads/zzhlt;)Lcom/google/android/gms/internal/ads/zzgzp;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing KmsEnvelopeAeadKeyFormat failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfx;->zzc()Lcom/google/android/gms/internal/ads/zzhla;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhla;->zza()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzgzl;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhfw;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlq;->zzd()Lcom/google/android/gms/internal/ads/zzhlp;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzl;->zze()Lcom/google/android/gms/internal/ads/zzgzp;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzg(Lcom/google/android/gms/internal/ads/zzgzp;)Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzhlp;->zza(Lcom/google/android/gms/internal/ads/zzhls;)Lcom/google/android/gms/internal/ads/zzhlp;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhlq;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhur;->zzaM()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhkw;->zze:Lcom/google/android/gms/internal/ads/zzhkw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzl;->zze()Lcom/google/android/gms/internal/ads/zzgzp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgzp;->zzc()Lcom/google/android/gms/internal/ads/zzgzo;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgzu;->zzf(Lcom/google/android/gms/internal/ads/zzgzo;)Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzl;->zzb()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 6
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhkw;Lcom/google/android/gms/internal/ads/zzhlt;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhfw;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzhfw;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgzl;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzg()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "KmsEnvelopeAeadKeys are only accepted with version 0, got "

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzb()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhvy;->zza()Lcom/google/android/gms/internal/ads/zzhvy;

    move-result-object v1

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzhlq;->zzc(Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhlq;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhlq;->zza()I

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhlq;->zzb()Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzd()Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzh(Lcom/google/android/gms/internal/ads/zzhls;Lcom/google/android/gms/internal/ads/zzhlt;)Lcom/google/android/gms/internal/ads/zzgzp;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zze()Ljava/lang/Integer;

    move-result-object p0

    .line 8
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzgzl;->zzd(Lcom/google/android/gms/internal/ads/zzgzp;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgzl;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhxd; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing KmsEnvelopeAeadKey failed: "

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey"

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzgzo;)Lcom/google/android/gms/internal/ads/zzhlt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzo;->zza:Lcom/google/android/gms/internal/ads/zzgzo;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhlt;->zzb:Lcom/google/android/gms/internal/ads/zzhlt;

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzo;->zzb:Lcom/google/android/gms/internal/ads/zzgzo;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhlt;->zzd:Lcom/google/android/gms/internal/ads/zzhlt;

    return-object p0

    :cond_1
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

.method private static zzg(Lcom/google/android/gms/internal/ads/zzgzp;)Lcom/google/android/gms/internal/ads/zzhls;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzd()Lcom/google/android/gms/internal/ads/zzgxb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwp;->zza(Lcom/google/android/gms/internal/ads/zzgwj;)[B

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhvy;->zza()Lcom/google/android/gms/internal/ads/zzhvy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhla;->zzd([BLcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhla;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhls;->zzd()Lcom/google/android/gms/internal/ads/zzhlr;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzb()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzhlr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhlr;

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhlr;->zzb(Lcom/google/android/gms/internal/ads/zzhla;)Lcom/google/android/gms/internal/ads/zzhlr;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhls;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhxd; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing KmsEnvelopeAeadKeyFormat failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzhls;Lcom/google/android/gms/internal/ads/zzhlt;)Lcom/google/android/gms/internal/ads/zzgzp;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhla;->zze()Lcom/google/android/gms/internal/ads/zzhkz;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhls;->zzb()Lcom/google/android/gms/internal/ads/zzhla;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhla;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhkz;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhls;->zzb()Lcom/google/android/gms/internal/ads/zzhla;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhla;->zzb()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkz;->zzb(Lcom/google/android/gms/internal/ads/zzhvi;)Lcom/google/android/gms/internal/ads/zzhkz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhlt;->zzd:Lcom/google/android/gms/internal/ads/zzhlt;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkz;->zzc(Lcom/google/android/gms/internal/ads/zzhlt;)Lcom/google/android/gms/internal/ads/zzhkz;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhla;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhur;->zzaN()[B

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwp;->zzb([B)Lcom/google/android/gms/internal/ads/zzgwj;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgyg;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzn;->zza:Lcom/google/android/gms/internal/ads/zzgzn;

    goto :goto_0

    .line 13
    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgyv;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzn;->zzc:Lcom/google/android/gms/internal/ads/zzgzn;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzhar;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzn;->zzb:Lcom/google/android/gms/internal/ads/zzgzn;

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgxp;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzn;->zzd:Lcom/google/android/gms/internal/ads/zzgzn;

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgxx;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzn;->zze:Lcom/google/android/gms/internal/ads/zzgzn;

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgyp;

    if-eqz v1, :cond_7

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzn;->zzf:Lcom/google/android/gms/internal/ads/zzgzn;

    .line 7
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgzm;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>([B)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhlt;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgzo;->zzb:Lcom/google/android/gms/internal/ads/zzgzo;

    goto :goto_1

    .line 14
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhlt;->zza()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x22

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unable to parse OutputPrefixType: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgzo;->zza:Lcom/google/android/gms/internal/ads/zzgzo;

    .line 9
    :goto_1
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgzm;->zza(Lcom/google/android/gms/internal/ads/zzgzo;)Lcom/google/android/gms/internal/ads/zzgzm;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhls;->zza()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzgzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgzm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxb;

    .line 11
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzgzm;->zzd(Lcom/google/android/gms/internal/ads/zzgxb;)Lcom/google/android/gms/internal/ads/zzgzm;

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzgzm;->zzc(Lcom/google/android/gms/internal/ads/zzgzn;)Lcom/google/android/gms/internal/ads/zzgzm;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgzm;->zze()Lcom/google/android/gms/internal/ads/zzgzp;

    move-result-object p0

    return-object p0

    .line 16
    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unsupported DEK parameters when parsing "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
