.class public Lcom/google/android/gms/internal/zzdj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# instance fields
.field private final zzwu:Lcom/google/android/gms/internal/zzdk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdj;->zzwu:Lcom/google/android/gms/internal/zzdk;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzid;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzid;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "1"

    const-string v0, "transparentBackground"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdj;->zzwu:Lcom/google/android/gms/internal/zzdk;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzdk;->zzd(Z)V

    return-void
.end method
