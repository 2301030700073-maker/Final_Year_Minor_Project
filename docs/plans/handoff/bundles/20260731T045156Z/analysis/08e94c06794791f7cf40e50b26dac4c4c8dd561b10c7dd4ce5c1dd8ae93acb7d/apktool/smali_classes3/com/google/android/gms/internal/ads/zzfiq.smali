.class public final Lcom/google/android/gms/internal/ads/zzfiq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiq;->zza:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfig;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfhy;Lcom/google/android/gms/internal/ads/zzfiv;)Lcom/google/android/gms/internal/ads/zzfip;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiq;->zza:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfip;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfid;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfij;->zza(Lcom/google/android/gms/internal/ads/zzfig;Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfij;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzfid;-><init>(Lcom/google/android/gms/internal/ads/zzfij;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfiy;

    .line 3
    invoke-direct {p2, v1, p3, p4}, Lcom/google/android/gms/internal/ads/zzfiy;-><init>(Lcom/google/android/gms/internal/ads/zzfic;Lcom/google/android/gms/internal/ads/zzfhy;Lcom/google/android/gms/internal/ads/zzfiv;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfip;

    invoke-direct {p3, v1, p2}, Lcom/google/android/gms/internal/ads/zzfip;-><init>(Lcom/google/android/gms/internal/ads/zzfic;Lcom/google/android/gms/internal/ads/zzfiy;)V

    .line 4
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :cond_0
    return-object v1
.end method
