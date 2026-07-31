.class public final Lcom/google/android/gms/internal/ads/zzaqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field public final zza:Ljava/lang/Object;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzapd;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzaqd;

.field public zzd:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaqd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzd:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zza:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzb:Lcom/google/android/gms/internal/ads/zzapd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzc:Lcom/google/android/gms/internal/ads/zzaqd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzapd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzb:Lcom/google/android/gms/internal/ads/zzapd;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzc:Lcom/google/android/gms/internal/ads/zzaqd;

    return-void
.end method

.method public static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzapd;)Lcom/google/android/gms/internal/ads/zzaqa;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzaqa;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzapd;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzaqd;)Lcom/google/android/gms/internal/ads/zzaqa;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaqa;-><init>(Lcom/google/android/gms/internal/ads/zzaqd;)V

    return-object v0
.end method


# virtual methods
.method public final zzc()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzc:Lcom/google/android/gms/internal/ads/zzaqd;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
