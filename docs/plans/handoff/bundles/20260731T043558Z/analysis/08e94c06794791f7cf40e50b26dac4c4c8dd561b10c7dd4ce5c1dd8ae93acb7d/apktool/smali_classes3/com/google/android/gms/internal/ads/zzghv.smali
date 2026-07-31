.class public final Lcom/google/android/gms/internal/ads/zzghv;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghv;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzghv;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzghv;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzghv;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzghv;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzghv;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzghv;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghv;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghv;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzifg;->zzc(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifb;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgjd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghv;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfxa;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghv;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfxt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzghu;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfxt;->zzi()Lcom/google/android/gms/internal/ads/zzfyn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyn;->zzb()J

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzghu;-><init>(Lcom/google/android/gms/internal/ads/zzifb;Lcom/google/android/gms/internal/ads/zzgjd;Lcom/google/android/gms/internal/ads/zzfxa;J)V

    .line 3
    check-cast v1, Lcom/google/android/gms/internal/ads/zzght;

    return-object v1
.end method
