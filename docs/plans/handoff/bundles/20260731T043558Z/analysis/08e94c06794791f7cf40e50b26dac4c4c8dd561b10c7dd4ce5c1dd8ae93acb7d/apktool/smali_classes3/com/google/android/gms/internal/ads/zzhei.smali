.class public final Lcom/google/android/gms/internal/ads/zzhei;
.super Lcom/google/android/gms/internal/ads/zzgvt;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfw;Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzgwn;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvt;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzhei;->zze(Lcom/google/android/gms/internal/ads/zzhfw;Lcom/google/android/gms/internal/ads/zzgwn;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhei;->zza:Lcom/google/android/gms/internal/ads/zzhfw;

    return-void
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzhfw;Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzgwn;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzheg;->zzb:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc()Lcom/google/android/gms/internal/ads/zzhkw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhkw;->ordinal()I

    move-result p0

    aget p0, p1, p0

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgwj;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhei;->zza:Lcom/google/android/gms/internal/ads/zzhfw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzheh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzd()Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzheh;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhlt;[B)V

    return-object v1
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhei;->zza:Lcom/google/android/gms/internal/ads/zzhfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfw;->zze()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhfw;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/ads/zzgwn;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhei;->zza:Lcom/google/android/gms/internal/ads/zzhfw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhei;->zze(Lcom/google/android/gms/internal/ads/zzhfw;Lcom/google/android/gms/internal/ads/zzgwn;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhsz;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhei;->zza:Lcom/google/android/gms/internal/ads/zzhfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzd()Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhlt;->zzd:Lcom/google/android/gms/internal/ads/zzhlt;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhlt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhsz;->zza([B)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzd()Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhlt;->zzb:Lcom/google/android/gms/internal/ads/zzhlt;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhlt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfw;->zze()Ljava/lang/Integer;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzd()Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhlt;->zzc:Lcom/google/android/gms/internal/ads/zzhlt;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhlt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzd()Lcom/google/android/gms/internal/ads/zzhlt;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhlt;->zze:Lcom/google/android/gms/internal/ads/zzhlt;

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhlt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Unknown output prefix type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfw;->zze()Ljava/lang/Integer;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zza(I)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v0

    :goto_1
    return-object v0
.end method
