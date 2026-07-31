.class public final Lcom/google/android/gms/internal/ads/zzhol;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfv;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhol;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhfp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhol;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhol;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhol;->zza:Lcom/google/android/gms/internal/ads/zzhol;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhoi;->zza:Lcom/google/android/gms/internal/ads/zzhoi;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhei;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgwl;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhol;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhol;->zza:Lcom/google/android/gms/internal/ads/zzhol;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzc(Lcom/google/android/gms/internal/ads/zzhfv;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhol;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzgwl;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzgwl;

    return-object v0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzhed;Lcom/google/android/gms/internal/ads/zzhel;Lcom/google/android/gms/internal/ads/zzhfu;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhel;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhew;->zza()Lcom/google/android/gms/internal/ads/zzhew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhew;->zzb()Lcom/google/android/gms/internal/ads/zzhen;

    move-result-object v0

    const-string v1, "public_key_sign"

    const-string v2, "sign"

    .line 3
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzhen;->zza(Lcom/google/android/gms/internal/ads/zzhed;Lcom/google/android/gms/internal/ads/zzhel;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhem;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/ads/zzhep;->zza:Lcom/google/android/gms/internal/ads/zzhem;

    .line 3
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhok;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhoj;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgwe;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwe;->zzc()Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v2

    .line 5
    invoke-interface {p3, v2}, Lcom/google/android/gms/internal/ads/zzhfu;->zza(Lcom/google/android/gms/internal/ads/zzgwc;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzgwl;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwe;->zzc()Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwc;->zzc()I

    move-result p1

    invoke-direct {v1, p3, p1}, Lcom/google/android/gms/internal/ads/zzhoj;-><init>(Lcom/google/android/gms/internal/ads/zzgwl;I)V

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhok;-><init>(Lcom/google/android/gms/internal/ads/zzhoj;Lcom/google/android/gms/internal/ads/zzhem;)V

    return-object v0
.end method
