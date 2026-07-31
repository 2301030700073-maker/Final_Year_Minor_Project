.class final synthetic Lcom/google/android/gms/internal/ads/zzccu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzccv;

.field private final synthetic zzb:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzccv;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccu;->zza:Lcom/google/android/gms/internal/ads/zzccv;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzccu;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccu;->zza:Lcom/google/android/gms/internal/ads/zzccv;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzccu;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccv;->zzr(I)V

    return-void
.end method
