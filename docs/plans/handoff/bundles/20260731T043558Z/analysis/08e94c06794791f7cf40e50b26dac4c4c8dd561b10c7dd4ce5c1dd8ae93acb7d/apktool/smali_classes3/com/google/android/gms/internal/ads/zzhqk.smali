.class public final Lcom/google/android/gms/internal/ads/zzhqk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgwl;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhei;)Lcom/google/android/gms/internal/ads/zzgwl;
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

    const-class v2, Lcom/google/android/gms/internal/ads/zzgwl;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhdw;->zzc(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgvu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzb()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zza(Lcom/google/android/gms/internal/ads/zzhvi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgwl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhqk;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhql;->zzc(Lcom/google/android/gms/internal/ads/zzhfw;)[B

    move-result-object v2

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhql;->zzd(Lcom/google/android/gms/internal/ads/zzhfw;)[B

    move-result-object p0

    invoke-direct {v1, v0, v2, p0}, Lcom/google/android/gms/internal/ads/zzhqk;-><init>(Lcom/google/android/gms/internal/ads/zzgwl;[B[B)V

    return-object v1
.end method


# virtual methods
.method public final zza([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
