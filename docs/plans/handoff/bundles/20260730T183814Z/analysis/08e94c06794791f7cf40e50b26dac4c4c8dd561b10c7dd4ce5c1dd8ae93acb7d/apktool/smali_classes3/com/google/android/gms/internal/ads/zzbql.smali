.class final synthetic Lcom/google/android/gms/internal/ads/zzbql;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbqh;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzbql;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbql;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbql;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbql;->zza:Lcom/google/android/gms/internal/ads/zzbql;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqm;->zza(Lorg/json/JSONObject;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
