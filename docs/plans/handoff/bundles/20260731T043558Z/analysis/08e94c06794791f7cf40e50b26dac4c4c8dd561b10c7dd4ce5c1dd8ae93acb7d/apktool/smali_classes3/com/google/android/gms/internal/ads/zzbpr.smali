.class final synthetic Lcom/google/android/gms/internal/ads/zzbpr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbqb;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbqa;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbqb;Lcom/google/android/gms/internal/ads/zzaxa;Lcom/google/android/gms/internal/ads/zzbqa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zza:Lcom/google/android/gms/internal/ads/zzbqb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzb:Lcom/google/android/gms/internal/ads/zzbqa;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzb:Lcom/google/android/gms/internal/ads/zzbqa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zza:Lcom/google/android/gms/internal/ads/zzbqb;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbqb;->zzc(Lcom/google/android/gms/internal/ads/zzaxa;Lcom/google/android/gms/internal/ads/zzbqa;)V

    return-void
.end method
