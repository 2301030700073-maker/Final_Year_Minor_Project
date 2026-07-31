.class public final Lcom/google/android/gms/internal/ads/zzgee;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgee;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgee;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgee;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgee;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzgee;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgee;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgee;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgee;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgee;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgee;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgee;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzifg;->zzc(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifb;

    move-result-object v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzifg;->zzc(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifb;

    move-result-object v6

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzifg;->zzc(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifb;

    move-result-object v7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfxt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzged;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfxt;->zzi()Lcom/google/android/gms/internal/ads/zzfyn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfyn;->zza()Z

    move-result v8

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfxt;->zzi()Lcom/google/android/gms/internal/ads/zzfyn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyn;->zzd()J

    move-result-wide v9

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzged;-><init>(Lcom/google/android/gms/internal/ads/zzifb;Lcom/google/android/gms/internal/ads/zzifb;Lcom/google/android/gms/internal/ads/zzifb;ZJ)V

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgab;

    return-object v1
.end method
