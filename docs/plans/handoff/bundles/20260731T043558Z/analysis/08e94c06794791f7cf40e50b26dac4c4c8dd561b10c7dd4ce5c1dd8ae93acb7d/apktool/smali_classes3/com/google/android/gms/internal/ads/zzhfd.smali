.class final Lcom/google/android/gms/internal/ads/zzhfd;
.super Lcom/google/android/gms/internal/ads/zzhff;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzhfe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhfe;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhfd;->zza:Lcom/google/android/gms/internal/ads/zzhfe;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhff;-><init>(Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Class;[B)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhgb;)Lcom/google/android/gms/internal/ads/zzgwj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfd;->zza:Lcom/google/android/gms/internal/ads/zzhfe;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhfe;->zza(Lcom/google/android/gms/internal/ads/zzhgb;)Lcom/google/android/gms/internal/ads/zzgwj;

    move-result-object p1

    return-object p1
.end method
