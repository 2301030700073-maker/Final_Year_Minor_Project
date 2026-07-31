.class Lcom/google/android/gms/analytics/internal/zzah$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/zzah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field private zzMt:I

.field private zzMu:Ljava/io/ByteArrayOutputStream;

.field final synthetic zzMv:Lcom/google/android/gms/analytics/internal/zzah;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMv:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMu:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMu:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public zzj(Lcom/google/android/gms/analytics/internal/zzab;)Z
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMt:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMv:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzah;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzr;->zzji()I

    move-result v2

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMv:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Lcom/google/android/gms/analytics/internal/zzab;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMv:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string v2, "Error formatting hit"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMv:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzah;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzr;->zzja()I

    move-result v4

    if-le v2, v4, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMv:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string v2, "Hit size exceeds the maximum size limit"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMu:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMu:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMv:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzah;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzr;->zzjc()I

    move-result v2

    if-le p1, v2, :cond_4

    return v3

    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMu:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMu:Ljava/io/ByteArrayOutputStream;

    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzah;->zzki()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMu:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget p1, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMt:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMt:I

    return v1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMv:Lcom/google/android/gms/analytics/internal/zzah;

    const-string v2, "Failed to write payload when batching hits"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/analytics/internal/zzah;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method public zzkj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzMt:I

    return v0
.end method
