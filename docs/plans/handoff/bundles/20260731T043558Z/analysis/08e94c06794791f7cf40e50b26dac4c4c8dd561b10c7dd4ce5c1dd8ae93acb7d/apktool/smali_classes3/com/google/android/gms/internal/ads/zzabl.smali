.class final synthetic Lcom/google/android/gms/internal/ads/zzabl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzabr;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzabr;Lcom/google/android/gms/internal/ads/zzbv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zza:Lcom/google/android/gms/internal/ads/zzabr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zza:Lcom/google/android/gms/internal/ads/zzabr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzabr;->zzp(Lcom/google/android/gms/internal/ads/zzbv;)V

    return-void
.end method
