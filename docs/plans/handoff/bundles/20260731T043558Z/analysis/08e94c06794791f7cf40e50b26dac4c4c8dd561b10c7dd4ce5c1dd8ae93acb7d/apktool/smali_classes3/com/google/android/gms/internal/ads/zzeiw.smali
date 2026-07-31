.class final synthetic Lcom/google/android/gms/internal/ads/zzeiw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeix;

.field private final synthetic zzb:Landroid/net/Uri;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfgf;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzffu;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzffx;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeix;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzffx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiw;->zza:Lcom/google/android/gms/internal/ads/zzeix;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeiw;->zzb:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeiw;->zzc:Lcom/google/android/gms/internal/ads/zzfgf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeiw;->zzd:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeiw;->zze:Lcom/google/android/gms/internal/ads/zzffx;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiw;->zza:Lcom/google/android/gms/internal/ads/zzeix;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeiw;->zzb:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeiw;->zzc:Lcom/google/android/gms/internal/ads/zzfgf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeiw;->zzd:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeiw;->zze:Lcom/google/android/gms/internal/ads/zzffx;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeix;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzffx;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
