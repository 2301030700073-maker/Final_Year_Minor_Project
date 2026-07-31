.class final Lcom/google/android/gms/internal/ads/zzcme;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzckz;

.field private zzb:Lcom/google/android/gms/internal/ads/zzcxx;

.field private zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzckz;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcme;->zza:Lcom/google/android/gms/internal/ads/zzckz;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzb:Lcom/google/android/gms/internal/ads/zzcxx;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcxx;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzifp;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    const-class v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzifp;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcmf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcuu;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcuu;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcwv;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcwv;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdvx;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdvx;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzb:Lcom/google/android/gms/internal/ads/zzcxx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcme;->zza:Lcom/google/android/gms/internal/ads/zzckz;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    .line 3
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzcmf;-><init>(Lcom/google/android/gms/internal/ads/zzckz;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;Lcom/google/android/gms/internal/ads/zzcuu;Lcom/google/android/gms/internal/ads/zzcwv;Lcom/google/android/gms/internal/ads/zzdvx;Lcom/google/android/gms/internal/ads/zzcxx;Lcom/google/android/gms/internal/ads/zzfdq;Lcom/google/android/gms/internal/ads/zzfcu;)V

    return-object v0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    return-object p0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcxx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzb:Lcom/google/android/gms/internal/ads/zzcxx;

    return-object p0
.end method
