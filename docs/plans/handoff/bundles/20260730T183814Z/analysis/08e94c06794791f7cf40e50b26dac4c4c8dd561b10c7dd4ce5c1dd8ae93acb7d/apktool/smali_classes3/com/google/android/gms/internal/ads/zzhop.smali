.class public final Lcom/google/android/gms/internal/ads/zzhop;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfv;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhop;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhfp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhop;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhop;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhop;->zza:Lcom/google/android/gms/internal/ads/zzhop;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhom;->zza:Lcom/google/android/gms/internal/ads/zzhom;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhei;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhop;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    return-void
.end method

.method public constructor <init>()V
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

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhop;->zza:Lcom/google/android/gms/internal/ads/zzhop;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzc(Lcom/google/android/gms/internal/ads/zzhfv;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhop;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzgwm;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzgwm;

    return-object v0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzhed;Lcom/google/android/gms/internal/ads/zzhel;Lcom/google/android/gms/internal/ads/zzhfu;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhfk;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhed;->zzd()I

    move-result v2

    if-ge v1, v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgwe;

    .line 3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzgwe;->zze(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgwc;->zzb()Lcom/google/android/gms/internal/ads/zzgvv;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgvv;->zza:Lcom/google/android/gms/internal/ads/zzgvv;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-interface {p3, v2}, Lcom/google/android/gms/internal/ads/zzhfu;->zza(Lcom/google/android/gms/internal/ads/zzgwc;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgwm;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgwc;->zza()Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzhpr;

    if-eqz v5, :cond_0

    .line 7
    check-cast v4, Lcom/google/android/gms/internal/ads/zzhpr;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhpr;->zze()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v4

    goto :goto_1

    .line 10
    :cond_0
    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzhei;

    if-eqz v5, :cond_1

    .line 8
    check-cast v4, Lcom/google/android/gms/internal/ads/zzhei;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhei;->zzd()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v4

    .line 7
    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/ads/zzhon;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgwc;->zzc()I

    move-result v2

    invoke-direct {v5, v3, v2}, Lcom/google/android/gms/internal/ads/zzhon;-><init>(Lcom/google/android/gms/internal/ads/zzgwm;I)V

    .line 10
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzhfk;->zza(Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfk;

    goto :goto_2

    .line 17
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgvt;->zza()Lcom/google/android/gms/internal/ads/zzgwj;

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
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 14
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhel;->zza()Z

    move-result p3

    if-nez p3, :cond_4

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhew;->zza()Lcom/google/android/gms/internal/ads/zzhew;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzhew;->zzb()Lcom/google/android/gms/internal/ads/zzhen;

    move-result-object p3

    const-string v1, "public_key_verify"

    const-string v2, "verify"

    .line 16
    invoke-interface {p3, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzhen;->zza(Lcom/google/android/gms/internal/ads/zzhed;Lcom/google/android/gms/internal/ads/zzhel;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhem;

    move-result-object p1

    goto :goto_3

    .line 13
    :cond_4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhep;->zza:Lcom/google/android/gms/internal/ads/zzhem;

    .line 16
    :goto_3
    new-instance p2, Lcom/google/android/gms/internal/ads/zzhoo;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfk;->zzb()Lcom/google/android/gms/internal/ads/zzhfm;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzhoo;-><init>(Lcom/google/android/gms/internal/ads/zzhfm;Lcom/google/android/gms/internal/ads/zzhem;)V

    return-object p2
.end method
