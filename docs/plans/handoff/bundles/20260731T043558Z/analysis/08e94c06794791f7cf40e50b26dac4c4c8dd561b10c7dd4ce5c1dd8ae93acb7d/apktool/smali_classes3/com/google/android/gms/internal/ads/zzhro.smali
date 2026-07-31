.class public final Lcom/google/android/gms/internal/ads/zzhro;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:[B

.field private final zzb:[B


# direct methods
.method private constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhro;->zza:[B

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhro;->zzb:[B

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzhro;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfz;->zza(I)[B

    move-result-object v1

    array-length v2, v1

    if-ne v2, v0, :cond_0

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhdj;->zzb([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhdj;->zza([B)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhro;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhro;-><init>([B[B)V

    return-object v2

    .line 1
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Given secret seed length is not %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final zza()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhro;->zza:[B

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final zzb()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhro;->zzb:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
