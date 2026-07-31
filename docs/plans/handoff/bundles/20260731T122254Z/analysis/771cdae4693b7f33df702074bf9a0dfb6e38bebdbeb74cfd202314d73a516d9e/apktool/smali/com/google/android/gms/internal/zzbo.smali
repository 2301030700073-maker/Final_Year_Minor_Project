.class public Lcom/google/android/gms/internal/zzbo;
.super Lcom/google/android/gms/internal/zzbl;


# instance fields
.field private zzrS:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbl;-><init>()V

    return-void
.end method


# virtual methods
.method zza([Ljava/lang/String;)[B
    .locals 3

    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbn;->zzB(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzbo;->zzj(I)B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method zzj(I)B
    .locals 2

    and-int/lit16 v0, p1, 0xff

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    const/high16 v1, -0x1000000

    and-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x18

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    return p1
.end method

.method public zzy(Ljava/lang/String;)[B
    .locals 4

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbo;->zza([Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbo;->zzcu()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzrS:Ljava/security/MessageDigest;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbo;->zzrS:Ljava/security/MessageDigest;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array p1, v2, [B

    monitor-exit v0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbo;->zzrS:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbo;->zzrS:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbo;->zzrS:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/4 v1, 0x4

    array-length v3, p1

    if-le v3, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p1

    :goto_0
    new-array v1, v1, [B

    array-length v3, v1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
