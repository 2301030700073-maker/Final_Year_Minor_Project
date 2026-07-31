.class final synthetic Lcom/google/android/gms/internal/ads/zzbxe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglu;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbxf;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbxf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxe;->zza:Lcom/google/android/gms/internal/ads/zzbxf;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxe;->zza:Lcom/google/android/gms/internal/ads/zzbxf;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxf;->zzc(Lorg/json/JSONObject;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
