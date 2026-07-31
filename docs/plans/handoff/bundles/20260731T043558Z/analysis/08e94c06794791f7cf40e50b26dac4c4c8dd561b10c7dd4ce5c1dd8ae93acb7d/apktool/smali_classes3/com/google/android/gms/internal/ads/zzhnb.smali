.class public final Lcom/google/android/gms/internal/ads/zzhnb;
.super Lcom/google/android/gms/internal/ads/zzhpp;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhmz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhmx;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhmy;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhna;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhmz;Lcom/google/android/gms/internal/ads/zzhmx;Lcom/google/android/gms/internal/ads/zzhmy;Lcom/google/android/gms/internal/ads/zzhna;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhpp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zza:Lcom/google/android/gms/internal/ads/zzhmz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzb:Lcom/google/android/gms/internal/ads/zzhmx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzc:Lcom/google/android/gms/internal/ads/zzhmy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzd:Lcom/google/android/gms/internal/ads/zzhna;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzhmw;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmw;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhnb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhnb;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhnb;->zza:Lcom/google/android/gms/internal/ads/zzhmz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zza:Lcom/google/android/gms/internal/ads/zzhmz;

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhnb;->zzb:Lcom/google/android/gms/internal/ads/zzhmx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzb:Lcom/google/android/gms/internal/ads/zzhmx;

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhnb;->zzc:Lcom/google/android/gms/internal/ads/zzhmy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzc:Lcom/google/android/gms/internal/ads/zzhmy;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhnb;->zzd:Lcom/google/android/gms/internal/ads/zzhna;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzd:Lcom/google/android/gms/internal/ads/zzhna;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zza:Lcom/google/android/gms/internal/ads/zzhmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzb:Lcom/google/android/gms/internal/ads/zzhmx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzc:Lcom/google/android/gms/internal/ads/zzhmy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzd:Lcom/google/android/gms/internal/ads/zzhna;

    const-class v4, Lcom/google/android/gms/internal/ads/zzhnb;

    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzd:Lcom/google/android/gms/internal/ads/zzhna;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzc:Lcom/google/android/gms/internal/ads/zzhmy;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zza:Lcom/google/android/gms/internal/ads/zzhmz;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzb:Lcom/google/android/gms/internal/ads/zzhmx;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v1, v1, 0x27

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x9

    add-int/2addr v1, v7

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ECDSA Parameters (variant: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hashType: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", encoding: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", curve: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzd:Lcom/google/android/gms/internal/ads/zzhna;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhna;->zzd:Lcom/google/android/gms/internal/ads/zzhna;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhmz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zza:Lcom/google/android/gms/internal/ads/zzhmz;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhmx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzb:Lcom/google/android/gms/internal/ads/zzhmx;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhmy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzc:Lcom/google/android/gms/internal/ads/zzhmy;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhna;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnb;->zzd:Lcom/google/android/gms/internal/ads/zzhna;

    return-object v0
.end method
