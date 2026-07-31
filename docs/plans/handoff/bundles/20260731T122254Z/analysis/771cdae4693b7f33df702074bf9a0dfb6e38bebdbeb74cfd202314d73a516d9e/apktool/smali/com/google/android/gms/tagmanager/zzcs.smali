.class Lcom/google/android/gms/tagmanager/zzcs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcd;


# instance fields
.field private final zzMf:J

.field private final zzMg:I

.field private zzMh:D

.field private final zzMj:Ljava/lang/Object;

.field private zzaNC:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x3c

    const-wide/16 v1, 0x7d0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzcs;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzMj:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzMg:I

    iget p1, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzMg:I

    int-to-double v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzMh:D

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzMf:J

    return-void
.end method


# virtual methods
.method public zzkb()Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzMj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzMh:D

    iget v5, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzMg:I

    int-to-double v5, v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzaNC:J

    const/4 v5, 0x0

    sub-long v5, v1, v3

    long-to-double v3, v5

    iget-wide v5, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzMf:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    iget v5, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzMg:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzMh:D

    const/4 v9, 0x0

    add-double/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzMh:D

    :cond_0
    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzaNC:J

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzMh:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzMh:D

    const/4 v5, 0x0

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzMh:D

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_1
    const-string v1, "No more tokens available."

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbg;->zzaC(Ljava/lang/String;)V

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
