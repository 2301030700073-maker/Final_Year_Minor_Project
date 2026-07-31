.class final synthetic Lcom/google/android/gms/internal/ads/zzjp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdn;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzak;

.field private final synthetic zzb:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzak;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Lcom/google/android/gms/internal/ads/zzak;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaz;

    sget v0, Lcom/google/android/gms/internal/ads/zzju;->zzd:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Lcom/google/android/gms/internal/ads/zzak;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzb:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Lcom/google/android/gms/internal/ads/zzak;I)V

    return-void
.end method
