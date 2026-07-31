.class public final Lcom/google/android/gms/internal/ads/zzhsp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwi;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzhik;

.field private final zzc:I

.field private final zzd:[B

.field private final zze:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhsp;->zza:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhgk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhgk;->zzf()Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhgr;->zzc()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhij;->zzb(I)Lcom/google/android/gms/internal/ads/zzhij;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhgk;->zzd()Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhii;->zzc(Lcom/google/android/gms/internal/ads/zzhij;Lcom/google/android/gms/internal/ads/zzhtb;)Lcom/google/android/gms/internal/ads/zzhii;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhsm;->zzb(Lcom/google/android/gms/internal/ads/zzhii;)Lcom/google/android/gms/internal/ads/zzhik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zzb:Lcom/google/android/gms/internal/ads/zzhik;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhgk;->zzf()Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhgr;->zzd()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zzc:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhgk;->zze()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zzd:[B

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhgk;->zzf()Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhgr;->zzf()Lcom/google/android/gms/internal/ads/zzhgq;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgq;->zzc:Lcom/google/android/gms/internal/ads/zzhgq;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhsp;->zza:[B

    const/4 v0, 0x1

    .line 8
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zze:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zze:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhgw;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhso;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhgw;->zzf()Lcom/google/android/gms/internal/ads/zzhhf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhhf;->zzg()Lcom/google/android/gms/internal/ads/zzhhd;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhgw;->zzd()Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhtb;->zzc(Lcom/google/android/gms/internal/ads/zzgwn;)[B

    move-result-object v3

    const-string v4, "HMAC"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhso;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zzb:Lcom/google/android/gms/internal/ads/zzhik;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhgw;->zzf()Lcom/google/android/gms/internal/ads/zzhhf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhhf;->zzd()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zzc:I

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhgw;->zze()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zzd:[B

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhgw;->zzf()Lcom/google/android/gms/internal/ads/zzhhf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhhf;->zzf()Lcom/google/android/gms/internal/ads/zzhhe;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhhe;->zzc:Lcom/google/android/gms/internal/ads/zzhhe;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhsp;->zza:[B

    const/4 v0, 0x1

    .line 14
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zze:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zze:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhik;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zzb:Lcom/google/android/gms/internal/ads/zzhik;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zzc:I

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zzd:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zze:[B

    new-array v0, v0, [B

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzhik;->zza([BI)[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhgk;)Lcom/google/android/gms/internal/ads/zzgwi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhsp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhsp;-><init>(Lcom/google/android/gms/internal/ads/zzhgk;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhgw;)Lcom/google/android/gms/internal/ads/zzgwi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhsp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhsp;-><init>(Lcom/google/android/gms/internal/ads/zzhgw;)V

    return-object v0
.end method


# virtual methods
.method public final zzc([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zze:[B

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zzd:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zzb:Lcom/google/android/gms/internal/ads/zzhik;

    filled-new-array {p1, v0}, [[B

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhrm;->zza([[B)[B

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zzc:I

    invoke-interface {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzhik;->zza([BI)[B

    move-result-object p1

    filled-new-array {v1, p1}, [[B

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhrm;->zza([[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zzd:[B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zzb:Lcom/google/android/gms/internal/ads/zzhik;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhsp;->zzc:I

    .line 4
    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzhik;->zza([BI)[B

    move-result-object p1

    filled-new-array {v0, p1}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhrm;->zza([[B)[B

    move-result-object p1

    return-object p1
.end method
