.class final synthetic Lcom/google/android/gms/internal/ads/zzerl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglu;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzern;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzerl;->zza:Lcom/google/android/gms/internal/ads/zzern;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzerl;->zza:Lcom/google/android/gms/internal/ads/zzern;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzern;->zza:Lcom/google/android/gms/internal/ads/zzcbj;

    check-cast p1, Ljava/lang/Exception;

    const-string v1, "AppSetIdInfoSignal"

    .line 1
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcbj;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzero;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzero;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method
