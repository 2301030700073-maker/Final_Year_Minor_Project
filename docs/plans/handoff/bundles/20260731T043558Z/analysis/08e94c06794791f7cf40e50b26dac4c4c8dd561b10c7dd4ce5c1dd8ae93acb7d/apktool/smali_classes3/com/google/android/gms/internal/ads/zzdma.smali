.class public final Lcom/google/android/gms/internal/ads/zzdma;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzdma;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzbjj;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbjg;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbjw;

.field private final zze:Lcom/google/android/gms/internal/ads/zzbjt;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbor;

.field private final zzg:Landroidx/collection/SimpleArrayMap;

.field private final zzh:Landroidx/collection/SimpleArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdlz;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdma;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdma;-><init>(Lcom/google/android/gms/internal/ads/zzdlz;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdma;->zza:Lcom/google/android/gms/internal/ads/zzdma;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdlz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdlz;->zza:Lcom/google/android/gms/internal/ads/zzbjj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzb:Lcom/google/android/gms/internal/ads/zzbjj;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdlz;->zzb:Lcom/google/android/gms/internal/ads/zzbjg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzc:Lcom/google/android/gms/internal/ads/zzbjg;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdlz;->zzc:Lcom/google/android/gms/internal/ads/zzbjw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzd:Lcom/google/android/gms/internal/ads/zzbjw;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdlz;->zzf:Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzg:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdlz;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzh:Landroidx/collection/SimpleArrayMap;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdlz;->zzd:Lcom/google/android/gms/internal/ads/zzbjt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->zze:Lcom/google/android/gms/internal/ads/zzbjt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdlz;->zze:Lcom/google/android/gms/internal/ads/zzbor;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzf:Lcom/google/android/gms/internal/ads/zzbor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdlz;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdma;-><init>(Lcom/google/android/gms/internal/ads/zzdlz;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbjj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzb:Lcom/google/android/gms/internal/ads/zzbjj;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzbjg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzc:Lcom/google/android/gms/internal/ads/zzbjg;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbjw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzd:Lcom/google/android/gms/internal/ads/zzbjw;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzbjt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->zze:Lcom/google/android/gms/internal/ads/zzbjt;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzbor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzf:Lcom/google/android/gms/internal/ads/zzbor;

    return-object v0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbjp;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzg:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbjp;

    return-object p1
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbjm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzh:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbjm;

    return-object p1
.end method

.method public final zzh()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzd:Lcom/google/android/gms/internal/ads/zzbjw;

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzb:Lcom/google/android/gms/internal/ads/zzbjj;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzc:Lcom/google/android/gms/internal/ads/zzbjg;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 5
    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzf:Lcom/google/android/gms/internal/ads/zzbor;

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public final zzi()Ljava/util/ArrayList;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzg:Landroidx/collection/SimpleArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
