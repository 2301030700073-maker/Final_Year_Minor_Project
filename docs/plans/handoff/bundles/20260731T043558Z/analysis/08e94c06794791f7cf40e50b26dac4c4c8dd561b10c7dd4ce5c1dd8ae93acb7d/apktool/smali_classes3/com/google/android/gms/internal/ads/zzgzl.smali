.class public final Lcom/google/android/gms/internal/ads/zzgzl;
.super Lcom/google/android/gms/internal/ads/zzgxa;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgzp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhsz;

.field private final zzc:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgzp;Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Integer;)V
    .locals 0
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzl;->zza:Lcom/google/android/gms/internal/ads/zzgzp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgzl;->zzb:Lcom/google/android/gms/internal/ads/zzhsz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgzl;->zzc:Ljava/lang/Integer;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzgzp;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgzl;
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzc()Lcom/google/android/gms/internal/ads/zzgzo;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzo;->zzb:Lcom/google/android/gms/internal/ads/zzgzo;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfc;->zza:Lcom/google/android/gms/internal/ads/zzhsz;

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzc()Lcom/google/android/gms/internal/ads/zzgzo;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzo;->zza:Lcom/google/android/gms/internal/ads/zzgzo;

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v0

    .line 2
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Lcom/google/android/gms/internal/ads/zzgzp;Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Integer;)V

    return-object v1

    .line 3
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant TINK the value of idRequirement must be non-null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzc()Lcom/google/android/gms/internal/ads/zzgzo;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unknown Variant: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzgwj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzl;->zza:Lcom/google/android/gms/internal/ads/zzgzp;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzl;->zzc:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhsz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzl;->zzb:Lcom/google/android/gms/internal/ads/zzhsz;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgzp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzl;->zza:Lcom/google/android/gms/internal/ads/zzgzp;

    return-object v0
.end method
