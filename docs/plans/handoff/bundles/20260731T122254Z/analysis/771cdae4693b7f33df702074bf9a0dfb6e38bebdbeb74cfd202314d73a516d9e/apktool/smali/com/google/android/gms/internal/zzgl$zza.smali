.class Lcom/google/android/gms/internal/zzgl$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzgl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field public final zzEI:J

.field public final zzEJ:Lcom/google/android/gms/internal/zzgk;

.field final synthetic zzEK:Lcom/google/android/gms/internal/zzgl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgk;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgl$zza;->zzEK:Lcom/google/android/gms/internal/zzgl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbz()Lcom/google/android/gms/internal/zzlb;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlb;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzgl$zza;->zzEI:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgl$zza;->zzEJ:Lcom/google/android/gms/internal/zzgk;

    return-void
.end method


# virtual methods
.method public hasExpired()Z
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzgl$zza;->zzEI:J

    sget-object v2, Lcom/google/android/gms/internal/zzbz;->zzuw:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v0, v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbz()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlb;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, v4, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
