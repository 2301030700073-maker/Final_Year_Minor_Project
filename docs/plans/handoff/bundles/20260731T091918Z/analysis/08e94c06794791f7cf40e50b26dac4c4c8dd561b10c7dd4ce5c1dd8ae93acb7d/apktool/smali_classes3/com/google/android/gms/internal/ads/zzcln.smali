.class final Lcom/google/android/gms/internal/ads/zzcln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwt;


# instance fields
.field private final zza:Ljava/lang/Long;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzckz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzclp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzckz;Lcom/google/android/gms/internal/ads/zzclp;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzc:Lcom/google/android/gms/internal/ads/zzckz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzd:Lcom/google/android/gms/internal/ads/zzclp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcln;->zza:Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdxc;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcln;->zza:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzd:Lcom/google/android/gms/internal/ads/zzclp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzclp;->zzd()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzclp;->zza()Lcom/google/android/gms/internal/ads/zzdwv;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzc:Lcom/google/android/gms/internal/ads/zzckz;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzb:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdxd;->zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdwv;Lcom/google/android/gms/internal/ads/zzcjn;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdxc;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdxg;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcln;->zza:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzd:Lcom/google/android/gms/internal/ads/zzclp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzclp;->zzd()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzclp;->zza()Lcom/google/android/gms/internal/ads/zzdwv;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzc:Lcom/google/android/gms/internal/ads/zzckz;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzb:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdxh;->zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdwv;Lcom/google/android/gms/internal/ads/zzcjn;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdxg;

    move-result-object v0

    return-object v0
.end method
