.class final Lcom/google/android/gms/internal/ads/zzgcs;
.super Lcom/google/android/gms/internal/ads/zzgdh;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzauc;Lcom/google/android/gms/internal/ads/zzgcd;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgjd;)V
    .locals 7

    const/16 v0, 0x73

    .line 1
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzgjd;->zza(I)Lcom/google/android/gms/internal/ads/zzgjb;

    move-result-object v6

    const-string v2, "BhNDAdNbKVCXLou3UwS6SQycA6O/T9ZMbr2NWffNFtsRs3WScUuYHsaYRJ0jHvCA"

    const-string v3, "oaC5CLMjwUmi/i48MFPdrATPzdM8HcSPBi81Io4IqyU="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgdh;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauc;Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzgjb;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgcs;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzauc;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcs;->zza:Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    check-cast p1, [Ljava/lang/Object;

    .line 2
    monitor-enter p2

    const/4 v0, 0x0

    .line 3
    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzauc;->zzO(J)Lcom/google/android/gms/internal/ads/zzauc;

    const/4 v0, 0x1

    .line 4
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzauc;->zzd(J)Lcom/google/android/gms/internal/ads/zzauc;

    const/4 v1, 0x2

    .line 5
    aget-object v2, p1, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzauc;->zze(J)Lcom/google/android/gms/internal/ads/zzauc;

    const/4 v2, 0x3

    .line 6
    aget-object v3, p1, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzauc;->zzab(J)Lcom/google/android/gms/internal/ads/zzauc;

    const/4 v3, 0x4

    .line 7
    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzauc;->zzaf(I)Lcom/google/android/gms/internal/ads/zzauc;

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v0, v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    .line 10
    :goto_0
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzauc;->zzaf(I)Lcom/google/android/gms/internal/ads/zzauc;

    :goto_1
    const/4 v3, 0x5

    .line 11
    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzauc;->zzae(I)Lcom/google/android/gms/internal/ads/zzauc;

    goto :goto_3

    .line 13
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v0, p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 14
    :goto_2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzauc;->zzae(I)Lcom/google/android/gms/internal/ads/zzauc;

    .line 15
    :goto_3
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
