.class final synthetic Lcom/google/android/gms/internal/ads/zzgae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgai;

.field private final synthetic zzb:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgai;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgae;->zza:Lcom/google/android/gms/internal/ads/zzgai;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgae;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgae;->zza:Lcom/google/android/gms/internal/ads/zzgai;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgae;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgai;->zzc(I)Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v0

    return-object v0
.end method
