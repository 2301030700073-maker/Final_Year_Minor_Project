.class final synthetic Lcom/google/android/gms/internal/ads/zznr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdn;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzmj;

.field private final synthetic zzb:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmj;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznr;->zza:Lcom/google/android/gms/internal/ads/zzmj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznr;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzml;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznr;->zza:Lcom/google/android/gms/internal/ads/zzmj;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zznr;->zzb:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzml;->zze(Lcom/google/android/gms/internal/ads/zzmj;I)V

    return-void
.end method
