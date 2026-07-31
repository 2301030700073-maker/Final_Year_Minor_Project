.class public final Lcom/google/android/gms/internal/ads/zzfrg;
.super Lcom/google/android/gms/internal/ads/zzfre;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfqw;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfre;-><init>(Lcom/google/android/gms/internal/ads/zzfqw;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrg;->zzd:Lcom/google/android/gms/internal/ads/zzfqw;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfqw;->zze(Lorg/json/JSONObject;)V

    return-object v0
.end method
