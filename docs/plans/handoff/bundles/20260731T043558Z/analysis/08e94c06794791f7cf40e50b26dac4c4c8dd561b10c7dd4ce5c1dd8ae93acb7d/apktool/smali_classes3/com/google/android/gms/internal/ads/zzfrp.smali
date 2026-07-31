.class final synthetic Lcom/google/android/gms/internal/ads/zzfrp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzati;

.field private final synthetic zzb:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzati;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrp;->zza:Lcom/google/android/gms/internal/ads/zzati;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfrp;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    sget v0, Lcom/google/android/gms/internal/ads/zzfrs;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfrp;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfrp;->zza:Lcom/google/android/gms/internal/ads/zzati;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfto;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzatm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhur;->zzaN()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfto;->zza([B)Lcom/google/android/gms/internal/ads/zzftn;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzftn;->zzc(I)Lcom/google/android/gms/internal/ads/zzftn;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzftn;->zza()V

    const/4 p1, 0x1

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method
