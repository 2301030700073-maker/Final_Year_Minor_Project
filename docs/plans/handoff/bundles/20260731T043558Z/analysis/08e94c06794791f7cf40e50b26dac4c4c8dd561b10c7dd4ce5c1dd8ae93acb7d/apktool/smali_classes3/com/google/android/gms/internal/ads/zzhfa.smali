.class final synthetic Lcom/google/android/gms/internal/ads/zzhfa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgg;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhfa;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhfa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfa;->zza:Lcom/google/android/gms/internal/ads/zzhfa;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhfb;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/ads/zzhei;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhfw;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhez;->zza:Lcom/google/android/gms/internal/ads/zzhez;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhea;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhea;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzheb;)V

    .line 2
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzhfb;->zzb(Lcom/google/android/gms/internal/ads/zzhec;)V

    return-object v0
.end method
