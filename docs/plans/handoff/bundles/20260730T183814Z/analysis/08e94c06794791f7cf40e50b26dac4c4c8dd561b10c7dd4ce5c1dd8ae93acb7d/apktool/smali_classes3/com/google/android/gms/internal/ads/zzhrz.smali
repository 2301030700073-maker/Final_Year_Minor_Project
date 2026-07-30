.class public final Lcom/google/android/gms/internal/ads/zzhrz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzhrz;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzhrz;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzhrz;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzhrz;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzhrz;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzhrz;


# instance fields
.field private final zzg:Lcom/google/android/gms/internal/ads/zzhry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhrz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhsa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhsa;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhrz;-><init>(Lcom/google/android/gms/internal/ads/zzhsh;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhrz;->zza:Lcom/google/android/gms/internal/ads/zzhrz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhrz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhse;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhse;-><init>()V

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhrz;-><init>(Lcom/google/android/gms/internal/ads/zzhsh;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhrz;->zzb:Lcom/google/android/gms/internal/ads/zzhrz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhrz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhsg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhsg;-><init>()V

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhrz;-><init>(Lcom/google/android/gms/internal/ads/zzhsh;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhrz;->zzc:Lcom/google/android/gms/internal/ads/zzhrz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhrz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhsf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhsf;-><init>()V

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhrz;-><init>(Lcom/google/android/gms/internal/ads/zzhsh;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhrz;->zzd:Lcom/google/android/gms/internal/ads/zzhrz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhrz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhsb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhsb;-><init>()V

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhrz;-><init>(Lcom/google/android/gms/internal/ads/zzhsh;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhrz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhsd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhsd;-><init>()V

    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhrz;-><init>(Lcom/google/android/gms/internal/ads/zzhsh;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhrz;->zze:Lcom/google/android/gms/internal/ads/zzhrz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhrz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhsc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhsc;-><init>()V

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhrz;-><init>(Lcom/google/android/gms/internal/ads/zzhsh;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhrz;->zzf:Lcom/google/android/gms/internal/ads/zzhrz;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhsh;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcz;->zza()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "The Android Project"

    .line 2
    const-string v2, "java.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhrv;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhrv;-><init>(Lcom/google/android/gms/internal/ads/zzhsh;[B)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhrz;->zzg:Lcom/google/android/gms/internal/ads/zzhry;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhrw;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhrw;-><init>(Lcom/google/android/gms/internal/ads/zzhsh;[B)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhrx;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhrx;-><init>(Lcom/google/android/gms/internal/ads/zzhsh;[B)V

    goto :goto_0
.end method

.method public static varargs zza([Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2
    aget-object v2, p0, v1

    .line 3
    invoke-static {v2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhrz;->zzg:Lcom/google/android/gms/internal/ads/zzhry;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhry;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
