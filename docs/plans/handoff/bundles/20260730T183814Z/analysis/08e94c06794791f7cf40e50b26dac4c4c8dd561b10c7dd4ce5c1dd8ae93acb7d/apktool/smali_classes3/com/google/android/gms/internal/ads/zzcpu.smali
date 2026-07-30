.class final synthetic Lcom/google/android/gms/internal/ads/zzcpu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcpv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcpv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zza:Lcom/google/android/gms/internal/ads/zzcpv;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zza:Lcom/google/android/gms/internal/ads/zzcpv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcpv;->zza:Lcom/google/android/gms/internal/ads/zzcpw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpw;->zzg()Lcom/google/android/gms/internal/ads/zzcqb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqb;->zzm()V

    return-void
.end method
