.class final Lcom/google/android/gms/internal/ads/zzhxq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhys;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhxx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhxx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhxo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhxo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhxq;->zzb:Lcom/google/android/gms/internal/ads/zzhxx;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhxp;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzhxx;

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhwh;->zza()Lcom/google/android/gms/internal/ads/zzhwh;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhxq;->zzb:Lcom/google/android/gms/internal/ads/zzhxx;

    sget v3, Lcom/google/android/gms/internal/ads/zzhuv;->zza:I

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhxp;-><init>([Lcom/google/android/gms/internal/ads/zzhxx;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhxb;->zzb:[B

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhxx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhxq;->zza:Lcom/google/android/gms/internal/ads/zzhxx;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhyr;
    .locals 8

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzhyt;->zza:I

    const-class v0, Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/zzhuv;->zza:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhxq;->zza:Lcom/google/android/gms/internal/ads/zzhxx;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhxx;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhxw;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhxw;->zza()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    sget v0, Lcom/google/android/gms/internal/ads/zzhuv;->zza:I

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhyg;->zza()Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhxm;->zza()Lcom/google/android/gms/internal/ads/zzhxl;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhyt;->zzF()Lcom/google/android/gms/internal/ads/zzhzc;

    move-result-object v5

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhxw;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhwb;->zza()Lcom/google/android/gms/internal/ads/zzhvz;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhxv;->zza()Lcom/google/android/gms/internal/ads/zzhxu;

    move-result-object v7

    move-object v1, p1

    .line 11
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhyc;->zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhxw;Lcom/google/android/gms/internal/ads/zzhyf;Lcom/google/android/gms/internal/ads/zzhxl;Lcom/google/android/gms/internal/ads/zzhzc;Lcom/google/android/gms/internal/ads/zzhvz;Lcom/google/android/gms/internal/ads/zzhxu;)Lcom/google/android/gms/internal/ads/zzhyc;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    sget p1, Lcom/google/android/gms/internal/ads/zzhuv;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhyt;->zzF()Lcom/google/android/gms/internal/ads/zzhzc;

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhwb;->zza()Lcom/google/android/gms/internal/ads/zzhvz;

    move-result-object v0

    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhxw;->zzb()Lcom/google/android/gms/internal/ads/zzhxz;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhyd;->zzh(Lcom/google/android/gms/internal/ads/zzhzc;Lcom/google/android/gms/internal/ads/zzhvz;Lcom/google/android/gms/internal/ads/zzhxz;)Lcom/google/android/gms/internal/ads/zzhyd;

    move-result-object p1

    return-object p1
.end method
