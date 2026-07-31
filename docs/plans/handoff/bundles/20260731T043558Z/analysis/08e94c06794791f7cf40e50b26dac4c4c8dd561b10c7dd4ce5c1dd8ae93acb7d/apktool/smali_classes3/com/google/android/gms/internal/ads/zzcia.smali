.class final synthetic Lcom/google/android/gms/internal/ads/zzcia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcib;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Landroid/webkit/ValueCallback;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcib;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcia;->zza:Lcom/google/android/gms/internal/ads/zzcib;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzc:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zza:Lcom/google/android/gms/internal/ads/zzcib;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzc:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcib;->zzaU(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
