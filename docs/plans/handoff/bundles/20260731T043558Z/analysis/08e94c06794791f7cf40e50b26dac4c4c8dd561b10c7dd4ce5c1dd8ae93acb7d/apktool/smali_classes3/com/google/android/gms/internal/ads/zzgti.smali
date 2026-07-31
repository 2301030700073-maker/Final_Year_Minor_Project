.class final synthetic Lcom/google/android/gms/internal/ads/zzgti;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgtk;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgpa;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgtk;Lcom/google/android/gms/internal/ads/zzgpa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgti;->zza:Lcom/google/android/gms/internal/ads/zzgtk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgti;->zzb:Lcom/google/android/gms/internal/ads/zzgpa;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgti;->zza:Lcom/google/android/gms/internal/ads/zzgtk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgti;->zzb:Lcom/google/android/gms/internal/ads/zzgpa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgtk;->zzz(Lcom/google/android/gms/internal/ads/zzgpa;)V

    return-void
.end method
