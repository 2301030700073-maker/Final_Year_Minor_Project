.class final Lcom/google/android/gms/internal/ads/zzhdr;
.super Lcom/google/android/gms/internal/ads/zzhds;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhft;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhft;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhds;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhdr;->zza:Lcom/google/android/gms/internal/ads/zzhft;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhed;Lcom/google/android/gms/internal/ads/zzhel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhdr;->zza:Lcom/google/android/gms/internal/ads/zzhft;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhft;->zzc(Lcom/google/android/gms/internal/ads/zzhed;Lcom/google/android/gms/internal/ads/zzhel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
