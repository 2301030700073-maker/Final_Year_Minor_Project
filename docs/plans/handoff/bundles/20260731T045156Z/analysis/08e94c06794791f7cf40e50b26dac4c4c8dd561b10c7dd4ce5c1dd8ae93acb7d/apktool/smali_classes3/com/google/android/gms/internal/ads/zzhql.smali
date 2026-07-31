.class public final Lcom/google/android/gms/internal/ads/zzhql;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgwm;

.field private final zzb:[B

.field private final zzc:[B


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgwm;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhql;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhql;->zzb:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhql;->zzc:[B

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhei;)Lcom/google/android/gms/internal/ads/zzgwm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhei;->zzc(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhfw;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdw;->zza()Lcom/google/android/gms/internal/ads/zzhdw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzg()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/ads/zzgwm;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhdw;->zzc(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgvu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzb()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zza(Lcom/google/android/gms/internal/ads/zzhvi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgwm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhql;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhql;->zzc(Lcom/google/android/gms/internal/ads/zzhfw;)[B

    move-result-object v2

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhql;->zzd(Lcom/google/android/gms/internal/ads/zzhfw;)[B

    move-result-object p0

    invoke-direct {v1, v0, v2, p0}, Lcom/google/android/gms/internal/ads/zzhql;-><init>(Lcom/google/android/gms/internal/ads/zzgwm;[B[B)V

    return-object v1
.end method

.method static zzc(Lcom/google/android/gms/internal/ads/zzhfw;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzd()Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlt;->ordinal()I

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

    .line 5
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown output prefix type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhfc;->zza:Lcom/google/android/gms/internal/ads/zzhsz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object p0

    return-object p0

    .line 3
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zze()Ljava/lang/Integer;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhfc;->zza(I)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object p0

    return-object p0

    .line 2
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zze()Ljava/lang/Integer;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object p0

    return-object p0
.end method

.method static zzd(Lcom/google/android/gms/internal/ads/zzhfw;)[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzd()Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhlt;->zzc:Lcom/google/android/gms/internal/ads/zzhlt;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhlt;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [B

    aput-byte v0, p0, v0

    return-object p0

    :cond_0
    new-array p0, v0, [B

    return-object p0
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhql;->zzb:[B

    array-length v1, v0

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhql;->zzc:[B

    array-length v2, v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhql;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgwm;->zza([B[B)V

    return-void

    .line 1
    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhgi;->zze([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhql;->zzc:[B

    array-length v2, v0

    if-eqz v2, :cond_2

    filled-new-array {p2, v0}, [[B

    move-result-object p2

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhrm;->zza([[B)[B

    move-result-object p2

    .line 4
    :cond_2
    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhql;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgwm;->zza([B[B)V

    return-void

    .line 2
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
