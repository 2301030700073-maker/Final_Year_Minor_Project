.class public Lcom/google/android/gms/internal/ads/zzhtg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhun;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhub;->zza(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhun;-><init>(Ljava/io/Writer;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhtl;->zza:Lcom/google/android/gms/internal/ads/zzhtl;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhun;->zza(Lcom/google/android/gms/internal/ads/zzhtl;)V

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhuj;->zza:Lcom/google/android/gms/internal/ads/zzhtn;

    invoke-virtual {v2, v1, p0}, Lcom/google/android/gms/internal/ads/zzhtn;->zza(Lcom/google/android/gms/internal/ads/zzhun;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    .line 5
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public zzd()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhti;
    .locals 3

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzhti;

    if-eqz v0, :cond_0

    .line 1
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhti;

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not a JSON Object: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhtf;
    .locals 3

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzhtf;

    if-eqz v0, :cond_0

    .line 1
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhtf;

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not a JSON Array: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzhtk;
    .locals 3

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzhtk;

    if-eqz v0, :cond_0

    .line 1
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhtk;

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not a JSON Primitive: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
