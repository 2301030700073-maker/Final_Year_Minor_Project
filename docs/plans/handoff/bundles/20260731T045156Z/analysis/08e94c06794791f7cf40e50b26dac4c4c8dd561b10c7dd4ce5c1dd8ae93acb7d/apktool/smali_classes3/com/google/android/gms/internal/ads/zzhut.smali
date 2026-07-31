.class public abstract Lcom/google/android/gms/internal/ads/zzhut;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhyh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzhvy;->zzb:I

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzhuv;->zza:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzhvy;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhvn;->zzF(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zzhvn;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhut;->zzb(Lcom/google/android/gms/internal/ads/zzhvn;Lcom/google/android/gms/internal/ads/zzhvy;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzhxz;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzhvn;->zzb(I)V

    if-eqz p2, :cond_2

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhxz;->zzbi()Z

    move-result p1

    if-nez p1, :cond_2

    instance-of p1, p2, Lcom/google/android/gms/internal/ads/zzhur;

    if-nez p1, :cond_1

    .line 4
    instance-of p1, p2, Lcom/google/android/gms/internal/ads/zzhus;

    if-eqz p1, :cond_0

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/ads/zzhus;

    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhzb;

    .line 9
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhzb;-><init>(Lcom/google/android/gms/internal/ads/zzhxz;)V

    goto :goto_0

    .line 6
    :cond_1
    check-cast p2, Lcom/google/android/gms/internal/ads/zzhur;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhur;->zzaU()Lcom/google/android/gms/internal/ads/zzhzb;

    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhzb;->zza()Lcom/google/android/gms/internal/ads/zzhxd;

    move-result-object p1

    .line 11
    throw p1

    :cond_2
    return-object p2
.end method
