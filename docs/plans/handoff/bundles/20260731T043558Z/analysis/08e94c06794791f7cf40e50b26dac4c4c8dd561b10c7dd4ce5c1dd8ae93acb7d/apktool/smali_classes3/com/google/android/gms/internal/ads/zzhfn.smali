.class final Lcom/google/android/gms/internal/ads/zzhfn;
.super Lcom/google/android/gms/internal/ads/zzhfp;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzhfo;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhfo;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhfn;->zza:Lcom/google/android/gms/internal/ads/zzhfo;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhfp;-><init>(Ljava/lang/Class;Ljava/lang/Class;[B)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgvt;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfn;->zza:Lcom/google/android/gms/internal/ads/zzhfo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhfo;->zza(Lcom/google/android/gms/internal/ads/zzgvt;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
