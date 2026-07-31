.class public Lcom/google/android/gms/internal/ads/zzgpr;
.super Lcom/google/android/gms/internal/ads/zzgpm;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzgpm<",
        "TK;TV;>;",
        "Lcom/google/android/gms/internal/ads/zzgqm<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient emptySet:Lcom/google/android/gms/internal/ads/zzgpo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgpo<",
            "TV;>;"
        }
    .end annotation
.end field

.field private transient zza:Lcom/google/android/gms/internal/ads/zzgpo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgph;ILjava/util/Comparator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgpm;-><init>(Lcom/google/android/gms/internal/ads/zzgph;I)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgrf;->zza:Lcom/google/android/gms/internal/ads/zzgrf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpr;->emptySet:Lcom/google/android/gms/internal/ads/zzgpo;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgpo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpr;->zza:Lcom/google/android/gms/internal/ads/zzgpo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgpq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgpq;-><init>(Lcom/google/android/gms/internal/ads/zzgpr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpr;->zza:Lcom/google/android/gms/internal/ads/zzgpo;

    :cond_0
    return-object v0
.end method
