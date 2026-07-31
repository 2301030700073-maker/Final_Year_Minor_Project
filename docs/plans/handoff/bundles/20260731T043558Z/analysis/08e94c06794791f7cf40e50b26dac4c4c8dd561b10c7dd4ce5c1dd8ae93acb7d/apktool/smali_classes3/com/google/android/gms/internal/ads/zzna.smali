.class final synthetic Lcom/google/android/gms/internal/ads/zzna;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdn;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzmj;

.field private final synthetic zzb:Ljava/lang/Object;

.field private final synthetic zzc:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmj;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzna;->zza:Lcom/google/android/gms/internal/ads/zzmj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzna;->zzb:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzna;->zzc:J

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzml;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzna;->zza:Lcom/google/android/gms/internal/ads/zzmj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzna;->zzb:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzna;->zzc:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzml;->zzo(Lcom/google/android/gms/internal/ads/zzmj;Ljava/lang/Object;J)V

    return-void
.end method
