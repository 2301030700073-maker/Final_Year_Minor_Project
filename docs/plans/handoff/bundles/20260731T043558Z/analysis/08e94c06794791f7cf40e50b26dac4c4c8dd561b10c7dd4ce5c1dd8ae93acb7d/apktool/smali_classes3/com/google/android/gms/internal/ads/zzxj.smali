.class final synthetic Lcom/google/android/gms/internal/ads/zzxj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzxj;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxj;->zza:Lcom/google/android/gms/internal/ads/zzxj;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p2, Ljava/util/List;

    check-cast p1, Ljava/util/List;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgot;->zzg()Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzyg;->zza:Lcom/google/android/gms/internal/ads/zzyg;

    .line 2
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzyh;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzyb;->zza:Lcom/google/android/gms/internal/ads/zzyb;

    .line 3
    invoke-static {p2, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzyh;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzyc;->zza:Lcom/google/android/gms/internal/ads/zzyc;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgot;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgot;->zzb(II)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzyd;->zza:Lcom/google/android/gms/internal/ads/zzyd;

    .line 6
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzyh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzye;->zza:Lcom/google/android/gms/internal/ads/zzye;

    .line 7
    invoke-static {p2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzyh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzyf;->zza:Lcom/google/android/gms/internal/ads/zzyf;

    .line 8
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgot;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgot;->zze()I

    move-result p1

    return p1
.end method
