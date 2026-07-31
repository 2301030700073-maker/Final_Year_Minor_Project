.class final synthetic Lcom/google/android/gms/internal/ads/zzeyb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeyd;

.field private final synthetic zzb:J

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzeya;

.field private final synthetic zzd:Landroid/os/Bundle;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeyd;JLcom/google/android/gms/internal/ads/zzeya;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zza:Lcom/google/android/gms/internal/ads/zzeyd;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zzb:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zzc:Lcom/google/android/gms/internal/ads/zzeya;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zzd:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zza:Lcom/google/android/gms/internal/ads/zzeyd;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zzb:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zzc:Lcom/google/android/gms/internal/ads/zzeya;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zzd:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzeyd;->zzb(JLcom/google/android/gms/internal/ads/zzeya;Landroid/os/Bundle;)V

    return-void
.end method
