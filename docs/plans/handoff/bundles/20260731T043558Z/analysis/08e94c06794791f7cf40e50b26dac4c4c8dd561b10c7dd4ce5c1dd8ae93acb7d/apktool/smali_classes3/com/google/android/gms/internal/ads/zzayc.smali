.class final Lcom/google/android/gms/internal/ads/zzayc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzayd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayd;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayc;->zza:Lcom/google/android/gms/internal/ads/zzayd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayc;->zza:Lcom/google/android/gms/internal/ads/zzayd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzayd;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbeu;->zza(Landroid/content/Context;)V

    return-void
.end method
