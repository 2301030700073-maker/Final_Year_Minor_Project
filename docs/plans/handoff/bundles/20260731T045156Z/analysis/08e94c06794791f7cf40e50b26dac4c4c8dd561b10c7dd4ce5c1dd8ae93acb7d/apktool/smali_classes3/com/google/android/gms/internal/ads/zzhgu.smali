.class public final Lcom/google/android/gms/internal/ads/zzhgu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfv;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhgu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhgu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgu;->zza:Lcom/google/android/gms/internal/ads/zzhgu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgu;->zza:Lcom/google/android/gms/internal/ads/zzhgu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzc(Lcom/google/android/gms/internal/ads/zzhfv;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzhgs;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzhgs;

    return-object v0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzhed;Lcom/google/android/gms/internal/ads/zzhel;Lcom/google/android/gms/internal/ads/zzhfu;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgwe;

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgwe;->zzc()Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhfk;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhfk;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhed;->zzd()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzgwe;->zze(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgwc;->zzb()Lcom/google/android/gms/internal/ads/zzgvv;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgvv;->zza:Lcom/google/android/gms/internal/ads/zzgvv;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-interface {p3, v3}, Lcom/google/android/gms/internal/ads/zzhfu;->zza(Lcom/google/android/gms/internal/ads/zzgwc;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzhgs;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgwc;->zza()Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object v3

    instance-of v5, v3, Lcom/google/android/gms/internal/ads/zzhhh;

    if-eqz v5, :cond_0

    .line 8
    check-cast v3, Lcom/google/android/gms/internal/ads/zzhhh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhhh;->zze()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v3

    goto :goto_1

    .line 7
    :cond_0
    instance-of v5, v3, Lcom/google/android/gms/internal/ads/zzhei;

    if-eqz v5, :cond_1

    .line 9
    check-cast v3, Lcom/google/android/gms/internal/ads/zzhei;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhei;->zzd()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v3

    .line 7
    :goto_1
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzhfk;->zza(Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfk;

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgvt;->zza()Lcom/google/android/gms/internal/ads/zzgwj;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Cannot get output prefix for key of class "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with parameters "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/zzhfu;->zza(Lcom/google/android/gms/internal/ads/zzgwc;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhgs;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhgt;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhfk;->zzb()Lcom/google/android/gms/internal/ads/zzhfm;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, p1, v0}, Lcom/google/android/gms/internal/ads/zzhgt;-><init>(Lcom/google/android/gms/internal/ads/zzhfm;Lcom/google/android/gms/internal/ads/zzhgs;[B)V

    return-object p2
.end method
