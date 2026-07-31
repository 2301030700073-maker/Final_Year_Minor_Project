.class final synthetic Lcom/google/android/gms/internal/ads/zzadq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgme;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzadq;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzadq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadq;->zza:Lcom/google/android/gms/internal/ads/zzadq;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzags;

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzags;->zza:Ljava/lang/String;

    const-string v1, "com.apple.iTunes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzags;->zzb:Ljava/lang/String;

    const-string v0, "iTunSMPB"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
