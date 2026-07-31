.class Lcom/google/android/gms/location/internal/zze$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/zze$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/zze$1;->zza(Lcom/google/android/gms/location/internal/zzj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzayH:Lcom/google/android/gms/location/internal/zze$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zze$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zze$1$1;->zzayH:Lcom/google/android/gms/location/internal/zze$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(I[Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/location/internal/zze$1$1;->zzayH:Lcom/google/android/gms/location/internal/zze$1;

    invoke-static {p1}, Lcom/google/android/gms/location/LocationStatusCodes;->zzgB(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/location/internal/zze$1;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
