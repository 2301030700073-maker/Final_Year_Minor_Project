.class final Lcom/google/android/gms/internal/ads/zzcle;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfay;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzb:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzc:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzd:Lcom/google/android/gms/internal/ads/zzifq;

.field final zze:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzf:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzckz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzckz;Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcle;->zzg:Lcom/google/android/gms/internal/ads/zzckz;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzifi;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzifh;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcle;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzifi;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzifh;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcle;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzckz;->zzbs:Lcom/google/android/gms/internal/ads/zzifq;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzckz;->zzbt:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfdo;->zzc(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzfdo;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcle;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfbv;->zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzfbv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifg;->zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifq;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzcle;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzckz;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzckz;->zzV:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgp;->zza()Lcom/google/android/gms/internal/ads/zzfgp;

    move-result-object v5

    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzckz;->zzi:Lcom/google/android/gms/internal/ads/zzifq;

    move-object v0, p2

    move-object v2, v8

    move-object v4, v7

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfbx;->zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzfbx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifg;->zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifq;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcle;->zze:Lcom/google/android/gms/internal/ads/zzifq;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzckz;->zzl:Lcom/google/android/gms/internal/ads/zzifq;

    move-object v0, v8

    move-object v1, p2

    move-object v2, p3

    move-object v5, v9

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfcd;->zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzfcd;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzifg;->zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcle;->zzf:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfcc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcle;->zzf:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfcc;

    return-object v0
.end method
