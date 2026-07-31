.class public final Lcom/google/android/gms/internal/ads/zzhhm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfv;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhhm;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhfp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhhm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhhm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhm;->zza:Lcom/google/android/gms/internal/ads/zzhhm;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhhj;->zza:Lcom/google/android/gms/internal/ads/zzhhj;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhei;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgwi;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhm;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    return-void
.end method

.method constructor <init>()V
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

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhhm;->zza:Lcom/google/android/gms/internal/ads/zzhhm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzc(Lcom/google/android/gms/internal/ads/zzhfv;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhhm;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzgwi;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzgwi;

    return-object v0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzhed;Lcom/google/android/gms/internal/ads/zzhel;Lcom/google/android/gms/internal/ads/zzhfu;)Ljava/lang/Object;
    .locals 9
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

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgwi;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgwc;->zza()Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzhhh;

    if-eqz v5, :cond_0

    .line 7
    check-cast v4, Lcom/google/android/gms/internal/ads/zzhhh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhhh;->zze()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v4

    goto :goto_1

    .line 6
    :cond_0
    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzhei;

    if-eqz v5, :cond_1

    .line 8
    check-cast v4, Lcom/google/android/gms/internal/ads/zzhei;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhei;->zzd()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v4

    .line 7
    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/ads/zzhhk;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgwc;->zzc()I

    move-result v2

    invoke-direct {v5, v3, v2}, Lcom/google/android/gms/internal/ads/zzhhk;-><init>(Lcom/google/android/gms/internal/ads/zzgwi;I)V

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzhfk;->zza(Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfk;

    goto :goto_2

    .line 19
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 11
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

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhel;->zza()Z

    move-result v1

    if-nez v1, :cond_4

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhew;->zza()Lcom/google/android/gms/internal/ads/zzhew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhew;->zzb()Lcom/google/android/gms/internal/ads/zzhen;

    move-result-object v1

    const-string v2, "compute"

    .line 14
    const-string v3, "mac"

    invoke-interface {v1, p1, p2, v3, v2}, Lcom/google/android/gms/internal/ads/zzhen;->zza(Lcom/google/android/gms/internal/ads/zzhed;Lcom/google/android/gms/internal/ads/zzhel;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhem;

    move-result-object v2

    const-string v4, "verify"

    .line 15
    invoke-interface {v1, p1, p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhen;->zza(Lcom/google/android/gms/internal/ads/zzhed;Lcom/google/android/gms/internal/ads/zzhel;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhem;

    move-result-object p2

    move-object v7, p2

    move-object v6, v2

    goto :goto_3

    .line 11
    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhep;->zza:Lcom/google/android/gms/internal/ads/zzhem;

    move-object v6, v2

    move-object v7, v6

    .line 15
    :goto_3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgwe;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwe;->zzc()Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object p2

    .line 17
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzhfu;->zza(Lcom/google/android/gms/internal/ads/zzgwc;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgwi;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzhhl;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhhk;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwe;->zzc()Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwc;->zzc()I

    move-result p1

    invoke-direct {v4, p2, p1}, Lcom/google/android/gms/internal/ads/zzhhk;-><init>(Lcom/google/android/gms/internal/ads/zzgwi;I)V

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfk;->zzb()Lcom/google/android/gms/internal/ads/zzhfm;

    move-result-object v5

    const/4 v8, 0x0

    move-object v3, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzhhl;-><init>(Lcom/google/android/gms/internal/ads/zzhhk;Lcom/google/android/gms/internal/ads/zzhfm;Lcom/google/android/gms/internal/ads/zzhem;Lcom/google/android/gms/internal/ads/zzhem;[B)V

    return-object p3
.end method
