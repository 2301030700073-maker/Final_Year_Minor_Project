.class final synthetic Lcom/google/android/gms/internal/ads/zzgel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgew;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgew;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgel;->zza:Lcom/google/android/gms/internal/ads/zzgew;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgel;->zza:Lcom/google/android/gms/internal/ads/zzgew;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgew;->zzc(Ljava/lang/Integer;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
