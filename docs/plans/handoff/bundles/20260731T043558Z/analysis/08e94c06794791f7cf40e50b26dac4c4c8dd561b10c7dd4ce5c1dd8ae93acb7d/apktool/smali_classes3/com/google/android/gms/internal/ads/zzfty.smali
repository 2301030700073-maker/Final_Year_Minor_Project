.class public interface abstract Lcom/google/android/gms/internal/ads/zzfty;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method public static zzb(Ljava/io/File;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfuc;)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public zza(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfuc;->zza:Lcom/google/android/gms/internal/ads/zzfuc;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfty;->zzb(Ljava/io/File;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfuc;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
