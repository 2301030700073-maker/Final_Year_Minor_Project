.class public abstract Lcom/google/android/gms/internal/ads/zzbel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"


# instance fields
.field private final zza:I

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/Object;

.field private final zzd:Ljava/lang/Object;


# direct methods
.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzc:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzd:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzb()Lcom/google/android/gms/internal/ads/zzbem;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbem;->zza(Lcom/google/android/gms/internal/ads/zzbel;)V

    return-void
.end method

.method public static zzh(ILjava/lang/String;II)Lcom/google/android/gms/internal/ads/zzbel;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbeh;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public static zzi(ILjava/lang/String;JJ)Lcom/google/android/gms/internal/ads/zzbel;
    .locals 0

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbei;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbei;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object p0
.end method

.method public static zzj(ILjava/lang/String;FF)Lcom/google/android/gms/internal/ads/zzbel;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbej;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbej;-><init>(ILjava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V

    return-object p0
.end method

.method public static zzk(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzbel;
    .locals 2

    const/4 p0, 0x0

    .line 1
    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbek;

    const/4 v0, 0x1

    .line 2
    const-string v1, "gads:sdk_core_constants:experiment_id"

    invoke-direct {p1, v0, v1, p0, p0}, Lcom/google/android/gms/internal/ads/zzbek;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzb()Lcom/google/android/gms/internal/ads/zzbem;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbem;->zzb(Lcom/google/android/gms/internal/ads/zzbel;)V

    return-object p1
.end method

.method public static zzl(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzbel;
    .locals 2

    const/4 p0, 0x0

    .line 1
    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbek;

    const/4 v0, 0x1

    .line 2
    const-string v1, "gads:sdk_core_constants_service:experiment_id"

    invoke-direct {p1, v0, v1, p0, p0}, Lcom/google/android/gms/internal/ads/zzbek;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzb()Lcom/google/android/gms/internal/ads/zzbem;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbem;->zzc(Lcom/google/android/gms/internal/ads/zzbel;)V

    return-object p1
.end method


# virtual methods
.method public abstract zza(Landroid/os/Bundle;)Ljava/lang/Object;
.end method

.method public abstract zzb(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
.end method

.method protected abstract zzc(Lorg/json/JSONObject;)Ljava/lang/Object;
.end method

.method protected abstract zzd(Landroid/content/SharedPreferences;)Ljava/lang/Object;
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzd:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzc:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final zzg()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zza:I

    return v0
.end method
