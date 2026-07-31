.class final Lcom/google/android/gms/internal/zzkf$2;
.super Lcom/google/android/gms/internal/zzkf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkf;->zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzkf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzkf<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzkf;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzbP(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzkf$2;->zzbR(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected zzbR(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzkf;->zzna()Lcom/google/android/gms/internal/zzkf$zza;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkf$2;->zztw:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkf$2;->zztx:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzkf$zza;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
