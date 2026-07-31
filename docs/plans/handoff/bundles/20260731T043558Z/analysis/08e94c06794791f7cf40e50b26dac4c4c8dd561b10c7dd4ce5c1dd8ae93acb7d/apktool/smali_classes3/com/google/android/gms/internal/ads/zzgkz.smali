.class final synthetic Lcom/google/android/gms/internal/ads/zzgkz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgle;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkz;->zza:Lcom/google/android/gms/internal/ads/zzgle;

    return-void
.end method


# virtual methods
.method public final synthetic binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkz;->zza:Lcom/google/android/gms/internal/ads/zzgle;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgle;->zzd()V

    return-void
.end method
