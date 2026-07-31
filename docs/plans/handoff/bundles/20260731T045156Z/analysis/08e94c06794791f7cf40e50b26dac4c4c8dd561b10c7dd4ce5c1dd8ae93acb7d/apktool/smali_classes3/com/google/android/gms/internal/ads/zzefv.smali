.class final synthetic Lcom/google/android/gms/internal/ads/zzefv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfjx;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzefy;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzega;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzefy;Lcom/google/android/gms/internal/ads/zzega;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefv;->zza:Lcom/google/android/gms/internal/ads/zzefy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefv;->zzb:Lcom/google/android/gms/internal/ads/zzega;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefv;->zza:Lcom/google/android/gms/internal/ads/zzefy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefv;->zzb:Lcom/google/android/gms/internal/ads/zzega;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzefy;->zzh(Lcom/google/android/gms/internal/ads/zzega;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
