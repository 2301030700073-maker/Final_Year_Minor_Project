.class Lcom/google/android/gms/internal/zzie$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzHm:Lcom/google/android/gms/internal/zzie;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzie;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzie$zzc;->zzHm:Lcom/google/android/gms/internal/zzie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzie;Lcom/google/android/gms/internal/zzie$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzie$zzc;-><init>(Lcom/google/android/gms/internal/zzie;)V

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

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "start"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzie$zzc;->zzHm:Lcom/google/android/gms/internal/zzie;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzie;->zza(Lcom/google/android/gms/internal/zzie;)V

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "stop"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzie$zzc;->zzHm:Lcom/google/android/gms/internal/zzie;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzie;->zzb(Lcom/google/android/gms/internal/zzie;)V

    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string p2, "cancel"

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzie$zzc;->zzHm:Lcom/google/android/gms/internal/zzie;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzie;->zzc(Lcom/google/android/gms/internal/zzie;)V

    :cond_2
    return-void
.end method
