.class public final Lcom/google/android/gms/internal/ads/zzhwj;
.super Lcom/google/android/gms/internal/ads/zzhut;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhwo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhwo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhut;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhwj;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzhvn;Lcom/google/android/gms/internal/ads/zzhvy;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwj;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbO(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvn;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p1

    return-object p1
.end method
