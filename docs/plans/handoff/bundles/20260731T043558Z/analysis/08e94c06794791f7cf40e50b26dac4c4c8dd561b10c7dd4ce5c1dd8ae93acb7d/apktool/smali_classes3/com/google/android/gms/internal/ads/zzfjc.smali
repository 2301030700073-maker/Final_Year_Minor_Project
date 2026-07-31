.class final synthetic Lcom/google/android/gms/internal/ads/zzfjc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzfjc;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfjc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfjc;->zza:Lcom/google/android/gms/internal/ads/zzfjc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgui;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
