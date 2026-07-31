.class final Lcom/google/android/gms/internal/ads/zzgkl;
.super Lcom/google/android/gms/internal/ads/zzgjj;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgkn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgks;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgkn;Lcom/google/android/gms/internal/ads/zzgks;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zza:Lcom/google/android/gms/internal/ads/zzgkn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjj;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzb:Lcom/google/android/gms/internal/ads/zzgks;

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 4

    const/16 v0, 0x1fd6

    .line 1
    const-string v1, "statusCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    const-string v1, "sessionToken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    const-string v3, "uiMode"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkr;->zzd()Lcom/google/android/gms/internal/ads/zzgkq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzgkq;->zza(I)Lcom/google/android/gms/internal/ads/zzgkq;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzgkq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgkq;

    .line 6
    :cond_0
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgkq;->zzc(I)Lcom/google/android/gms/internal/ads/zzgkq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzb:Lcom/google/android/gms/internal/ads/zzgks;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgkq;->zzd()Lcom/google/android/gms/internal/ads/zzgkr;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzgks;->zza(Lcom/google/android/gms/internal/ads/zzgkr;)V

    const/16 p1, 0x1fdd

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zza:Lcom/google/android/gms/internal/ads/zzgkn;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgkn;->zzd()V

    :cond_1
    return-void
.end method
