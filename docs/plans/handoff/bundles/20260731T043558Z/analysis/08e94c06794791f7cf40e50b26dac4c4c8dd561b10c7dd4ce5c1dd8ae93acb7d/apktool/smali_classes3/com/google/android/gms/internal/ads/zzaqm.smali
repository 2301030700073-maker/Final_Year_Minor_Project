.class final Lcom/google/android/gms/internal/ads/zzaqm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaqp;


# instance fields
.field final synthetic zza:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqq;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqm;->zza:Ljava/io/File;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqm;->zza:Ljava/io/File;

    return-object v0
.end method
