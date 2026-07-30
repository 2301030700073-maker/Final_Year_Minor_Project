.class final synthetic Lcom/google/android/gms/internal/ads/zzdxi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdxj;

.field private final synthetic zzb:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdxj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxi;->zza:Lcom/google/android/gms/internal/ads/zzdxj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxi;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxi;->zza:Lcom/google/android/gms/internal/ads/zzdxj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdxj;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxi;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzl(Ljava/lang/String;)V

    return-void
.end method
