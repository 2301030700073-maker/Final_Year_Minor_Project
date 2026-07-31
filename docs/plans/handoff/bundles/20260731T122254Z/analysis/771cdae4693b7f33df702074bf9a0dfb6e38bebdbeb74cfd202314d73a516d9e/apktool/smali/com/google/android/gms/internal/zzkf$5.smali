.class final Lcom/google/android/gms/internal/zzkf$5;
.super Lcom/google/android/gms/internal/zzkf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkf;->zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzkf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzkf<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzkf;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzbP(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzkf$5;->zzbU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected zzbU(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzkf;->zzna()Lcom/google/android/gms/internal/zzkf$zza;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkf$5;->zztw:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkf$5;->zztx:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzkf$zza;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
