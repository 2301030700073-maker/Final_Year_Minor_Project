.class final Lcom/google/android/gms/internal/ads/zzgsf;
.super Lcom/google/android/gms/internal/ads/zzgsa;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Ljava/io/File;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgpo;


# direct methods
.method synthetic constructor <init>(Ljava/io/File;[Lcom/google/android/gms/internal/ads/zzgse;[B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgsa;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object p3, p1

    check-cast p3, Ljava/io/File;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsf;->zza:Ljava/io/File;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgpo;->zzp([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsf;->zzb:Lcom/google/android/gms/internal/ads/zzgpo;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsf;->zza:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgsf;->zzb:Lcom/google/android/gms/internal/ads/zzgpo;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v1, 0x13

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Files.asByteSink("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgsf;->zzb:Lcom/google/android/gms/internal/ads/zzgpo;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgse;->zza:Lcom/google/android/gms/internal/ads/zzgse;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgpo;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgsf;->zza:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0, v2, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->create(Ljava/io/FileOutputStream;Ljava/io/File;Z)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method
