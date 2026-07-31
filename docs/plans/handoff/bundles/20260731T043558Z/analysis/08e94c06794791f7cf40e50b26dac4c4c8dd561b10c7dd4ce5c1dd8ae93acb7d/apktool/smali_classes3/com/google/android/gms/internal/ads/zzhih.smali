.class public final Lcom/google/android/gms/internal/ads/zzhih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgwi;Lcom/google/android/gms/internal/ads/zzhlt;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhei;)Lcom/google/android/gms/internal/ads/zzgwi;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhei;->zzc(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhfw;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdw;->zza()Lcom/google/android/gms/internal/ads/zzhdw;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzg()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzgwi;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhdw;->zzc(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgvu;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzb()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v2

    .line 4
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzgvu;->zza(Lcom/google/android/gms/internal/ads/zzhvi;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgwi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzd()Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlt;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown output prefix type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhfc;->zza:Lcom/google/android/gms/internal/ads/zzhsz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object p0

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhei;->zzb()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhfc;->zza(I)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object p0

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhei;->zzb()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object p0

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhih;

    invoke-direct {v2, v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzhih;-><init>(Lcom/google/android/gms/internal/ads/zzgwi;Lcom/google/android/gms/internal/ads/zzhlt;[B)V

    return-object v2
.end method
