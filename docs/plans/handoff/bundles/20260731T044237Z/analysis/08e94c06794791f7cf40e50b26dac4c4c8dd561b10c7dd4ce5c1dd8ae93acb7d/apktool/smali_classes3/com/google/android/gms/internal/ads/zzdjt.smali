.class public final Lcom/google/android/gms/internal/ads/zzdjt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zze:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjt;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjt;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjt;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdjt;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdjt;->zze:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzdjt;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdjt;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdjt;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v6
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjt;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzifl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzifl;->zzd()Ljava/util/Map;

    move-result-object v2

    .line 2
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjt;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzifl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzifl;->zzd()Ljava/util/Map;

    move-result-object v3

    .line 2
    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjt;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzifl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzifl;->zzd()Ljava/util/Map;

    move-result-object v4

    .line 2
    move-object v0, v4

    check-cast v0, Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjt;->zze:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdjx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdjx;->zza()Lcom/google/android/gms/internal/ads/zzdma;

    move-result-object v6

    .line 2
    move-object v0, v6

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdma;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdjt;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjs;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdjs;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzifw;Lcom/google/android/gms/internal/ads/zzdma;)V

    return-object v0
.end method
