.class final synthetic Lcom/google/android/gms/internal/ads/zzeey;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfjx;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeez;

.field private final synthetic zzb:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeez;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeey;->zza:Lcom/google/android/gms/internal/ads/zzeez;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzeey;->zzb:J

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeey;->zza:Lcom/google/android/gms/internal/ads/zzeez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefe;->zzf()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeey;->zzb:J

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdz$zzaf$zza;->zzz()Lcom/google/android/gms/internal/ads/zzbdz$zzaf$zza$zza;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbdz$zzaf$zza$zza;->zzad(J)Lcom/google/android/gms/internal/ads/zzbdz$zzaf$zza$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbdz$zzaf$zza;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhur;->zzaN()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v3, v3}, Lcom/google/android/gms/internal/ads/zzefg;->zzf(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 5
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzefg;->zze(Landroid/database/sqlite/SQLiteDatabase;J[B)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
