.class public final Lcom/google/android/gms/internal/ads/zzhbb;
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
    const-string v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgi;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhbb;->zzb:Lcom/google/android/gms/internal/ads/zzhsz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhba;->zza:Lcom/google/android/gms/internal/ads/zzhba;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgxx;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhfi;->zzd(Lcom/google/android/gms/internal/ads/zzhfh;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhbb;->zzc:Lcom/google/android/gms/internal/ads/zzhfi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhax;->zza:Lcom/google/android/gms/internal/ads/zzhax;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhff;->zzd(Lcom/google/android/gms/internal/ads/zzhfe;Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhff;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhbb;->zzd:Lcom/google/android/gms/internal/ads/zzhff;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhay;->zza:Lcom/google/android/gms/internal/ads/zzhay;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgxr;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhfw;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhec;->zzd(Lcom/google/android/gms/internal/ads/zzheb;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhec;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhbb;->zze:Lcom/google/android/gms/internal/ads/zzhec;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhfw;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhaz;->zza:Lcom/google/android/gms/internal/ads/zzhaz;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhdz;->zzd(Lcom/google/android/gms/internal/ads/zzhdy;Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhdz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhbb;->zzf:Lcom/google/android/gms/internal/ads/zzhdz;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhbb;->zzc:Lcom/google/android/gms/internal/ads/zzhfi;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhfb;->zzd(Lcom/google/android/gms/internal/ads/zzhfi;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhbb;->zzd:Lcom/google/android/gms/internal/ads/zzhff;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhfb;->zze(Lcom/google/android/gms/internal/ads/zzhff;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhbb;->zze:Lcom/google/android/gms/internal/ads/zzhec;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhfb;->zzb(Lcom/google/android/gms/internal/ads/zzhec;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhbb;->zzf:Lcom/google/android/gms/internal/ads/zzhdz;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhfb;->zzc(Lcom/google/android/gms/internal/ads/zzhdz;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgxx;)Lcom/google/android/gms/internal/ads/zzhfx;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhla;->zze()Lcom/google/android/gms/internal/ads/zzhkz;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhkz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjj;->zzd()Lcom/google/android/gms/internal/ads/zzhji;

    move-result-object v1

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhbb;->zzh(Lcom/google/android/gms/internal/ads/zzgxx;)Lcom/google/android/gms/internal/ads/zzhjl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhji;->zza(Lcom/google/android/gms/internal/ads/zzhjl;)Lcom/google/android/gms/internal/ads/zzhji;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxx;->zzc()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhji;->zzb(I)Lcom/google/android/gms/internal/ads/zzhji;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhjj;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhur;->zzaM()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkz;->zzb(Lcom/google/android/gms/internal/ads/zzhvi;)Lcom/google/android/gms/internal/ads/zzhkz;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxx;->zze()Lcom/google/android/gms/internal/ads/zzgxw;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhbb;->zzf(Lcom/google/android/gms/internal/ads/zzgxw;)Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhkz;->zzc(Lcom/google/android/gms/internal/ads/zzhlt;)Lcom/google/android/gms/internal/ads/zzhkz;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhla;

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhfx;->zza(Lcom/google/android/gms/internal/ads/zzhla;)Lcom/google/android/gms/internal/ads/zzhfx;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzhfx;)Lcom/google/android/gms/internal/ads/zzgxx;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfx;->zzc()Lcom/google/android/gms/internal/ads/zzhla;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhla;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

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
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhjj;->zzc(Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhjj;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhxd; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxx;->zzb()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhjj;->zzb()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxv;->zza(I)Lcom/google/android/gms/internal/ads/zzgxv;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhjj;->zza()Lcom/google/android/gms/internal/ads/zzhjl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhjl;->zza()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzb(I)Lcom/google/android/gms/internal/ads/zzgxv;

    const/16 v0, 0x10

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc(I)Lcom/google/android/gms/internal/ads/zzgxv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfx;->zzc()Lcom/google/android/gms/internal/ads/zzhla;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhla;->zzc()Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhbb;->zzg(Lcom/google/android/gms/internal/ads/zzhlt;)Lcom/google/android/gms/internal/ads/zzgxw;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzd(Lcom/google/android/gms/internal/ads/zzgxw;)Lcom/google/android/gms/internal/ads/zzgxv;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxv;->zze()Lcom/google/android/gms/internal/ads/zzgxx;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing AesEaxParameters failed: "

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

    const-string v1, "Wrong type URL in call to AesEaxProtoSerialization.parseParameters: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzgxr;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhfw;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjh;->zze()Lcom/google/android/gms/internal/ads/zzhjg;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxr;->zzf()Lcom/google/android/gms/internal/ads/zzgxx;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhbb;->zzh(Lcom/google/android/gms/internal/ads/zzgxx;)Lcom/google/android/gms/internal/ads/zzhjl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhjg;->zza(Lcom/google/android/gms/internal/ads/zzhjl;)Lcom/google/android/gms/internal/ads/zzhjg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxr;->zze()Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzhtb;->zzc(Lcom/google/android/gms/internal/ads/zzgwn;)[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    .line 4
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzhvi;->zzr([BII)Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhjg;->zzb(Lcom/google/android/gms/internal/ads/zzhvi;)Lcom/google/android/gms/internal/ads/zzhjg;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhjh;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhur;->zzaM()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhkw;->zzb:Lcom/google/android/gms/internal/ads/zzhkw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxr;->zzf()Lcom/google/android/gms/internal/ads/zzgxx;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxx;->zze()Lcom/google/android/gms/internal/ads/zzgxw;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhbb;->zzf(Lcom/google/android/gms/internal/ads/zzgxw;)Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxr;->zzb()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 9
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhkw;Lcom/google/android/gms/internal/ads/zzhlt;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhfw;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzhfw;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgxr;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzb()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhvy;->zza()Lcom/google/android/gms/internal/ads/zzhvy;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhjh;->zzd(Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhjh;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhjh;->zza()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxx;->zzb()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhjh;->zzc()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhvi;->zzc()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxv;->zza(I)Lcom/google/android/gms/internal/ads/zzgxv;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhjh;->zzb()Lcom/google/android/gms/internal/ads/zzhjl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhjl;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxv;->zzb(I)Lcom/google/android/gms/internal/ads/zzgxv;

    const/16 v2, 0x10

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc(I)Lcom/google/android/gms/internal/ads/zzgxv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzd()Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhbb;->zzg(Lcom/google/android/gms/internal/ads/zzhlt;)Lcom/google/android/gms/internal/ads/zzgxw;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxv;->zzd(Lcom/google/android/gms/internal/ads/zzgxw;)Lcom/google/android/gms/internal/ads/zzgxv;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxv;->zze()Lcom/google/android/gms/internal/ads/zzgxx;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxr;->zzd()Lcom/google/android/gms/internal/ads/zzgxq;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzgxq;->zza(Lcom/google/android/gms/internal/ads/zzgxx;)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhjh;->zzc()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhvi;->zzv()[B

    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhtb;->zza([BLcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object p1

    .line 14
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgxq;->zzb(Lcom/google/android/gms/internal/ads/zzhtb;)Lcom/google/android/gms/internal/ads/zzgxq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zze()Ljava/lang/Integer;

    move-result-object p0

    .line 15
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxq;->zzd()Lcom/google/android/gms/internal/ads/zzgxr;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhxd; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing AesEaxcKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to AesEaxProtoSerialization.parseKey"

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzgxw;)Lcom/google/android/gms/internal/ads/zzhlt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxw;->zza:Lcom/google/android/gms/internal/ads/zzgxw;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhlt;->zzb:Lcom/google/android/gms/internal/ads/zzhlt;

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxw;->zzb:Lcom/google/android/gms/internal/ads/zzgxw;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhlt;->zze:Lcom/google/android/gms/internal/ads/zzhlt;

    return-object p0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxw;->zzc:Lcom/google/android/gms/internal/ads/zzgxw;

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

.method private static zzg(Lcom/google/android/gms/internal/ads/zzhlt;)Lcom/google/android/gms/internal/ads/zzgxw;
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
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgxw;->zzc:Lcom/google/android/gms/internal/ads/zzgxw;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgxw;->zzb:Lcom/google/android/gms/internal/ads/zzgxw;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgxw;->zza:Lcom/google/android/gms/internal/ads/zzgxw;

    return-object p0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzgxx;)Lcom/google/android/gms/internal/ads/zzhjl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjl;->zzb()Lcom/google/android/gms/internal/ads/zzhjk;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxx;->zzd()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhjk;->zza(I)Lcom/google/android/gms/internal/ads/zzhjk;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhjl;

    return-object p0
.end method
