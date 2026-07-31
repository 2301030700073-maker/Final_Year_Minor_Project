.class public abstract Lcom/google/android/gms/internal/ads/zzfre;
.super Landroid/os/AsyncTask;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzfrf;

.field protected final zzd:Lcom/google/android/gms/internal/ads/zzfqw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfqw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfre;->zzd:Lcom/google/android/gms/internal/ads/zzfqw;

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfre;->zza(Ljava/lang/String;)V

    return-void
.end method

.method protected zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfre;->zza:Lcom/google/android/gms/internal/ads/zzfrf;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfrf;->zzb(Lcom/google/android/gms/internal/ads/zzfre;)V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfrf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfre;->zza:Lcom/google/android/gms/internal/ads/zzfrf;

    return-void
.end method
