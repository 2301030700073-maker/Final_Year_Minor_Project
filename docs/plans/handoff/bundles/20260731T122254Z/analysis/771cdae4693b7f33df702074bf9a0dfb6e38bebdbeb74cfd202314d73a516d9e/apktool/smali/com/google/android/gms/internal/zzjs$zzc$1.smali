.class Lcom/google/android/gms/internal/zzjs$zzc$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/internal/zzo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjs$zzc;-><init>(Lcom/google/android/gms/internal/zzjs;Lcom/google/android/gms/cast/games/GameManagerClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzTH:Lcom/google/android/gms/internal/zzjs;

.field final synthetic zzTK:Lcom/google/android/gms/internal/zzjs$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjs$zzc;Lcom/google/android/gms/internal/zzjs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjs$zzc$1;->zzTK:Lcom/google/android/gms/internal/zzjs$zzc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjs$zzc$1;->zzTH:Lcom/google/android/gms/internal/zzjs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(JILjava/lang/Object;)V
    .locals 6

    const/4 p1, 0x0

    if-nez p4, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzjs$zzc$1;->zzTK:Lcom/google/android/gms/internal/zzjs$zzc;

    new-instance p4, Lcom/google/android/gms/internal/zzjs$zzd;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p3, p1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzjs$zzc$1;->zzTK:Lcom/google/android/gms/internal/zzjs$zzc;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzjs$zzc;->zza(Lcom/google/android/gms/internal/zzjs$zzc;)Lcom/google/android/gms/cast/games/GameManagerClient;

    move-result-object p1

    invoke-direct {p4, v0, p1}, Lcom/google/android/gms/internal/zzjs$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/zzjs$zzc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    check-cast p4, Lcom/google/android/gms/internal/zzju;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzju;->zzlH()Lcom/google/android/gms/internal/zzjt;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "1.0.0"

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzjt;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/zzjs$zzc$1;->zzTK:Lcom/google/android/gms/internal/zzjs$zzc;

    iget-object p4, p0, Lcom/google/android/gms/internal/zzjs$zzc$1;->zzTK:Lcom/google/android/gms/internal/zzjs$zzc;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x866

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "Incorrect Game Manager SDK version. Receiver: %s Sender: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzjt;->getVersion()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v5

    const/4 p2, 0x1

    const-string v5, "1.0.0"

    aput-object v5, v4, p2

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/zzjs$zzc;->zzp(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzjs$zzc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzjs$zzc$1;->zzTK:Lcom/google/android/gms/internal/zzjs$zzc;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzjs$zzc;->zzTB:Lcom/google/android/gms/internal/zzjs;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzjs;->zza(Lcom/google/android/gms/internal/zzjs;Lcom/google/android/gms/internal/zzjt;)Lcom/google/android/gms/internal/zzjt;

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzjs$zzc$1;->zzTK:Lcom/google/android/gms/internal/zzjs$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzjs$zzd;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzju;->zzlD()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p3, p4, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzjs$zzc$1;->zzTK:Lcom/google/android/gms/internal/zzjs$zzc;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzjs$zzc;->zza(Lcom/google/android/gms/internal/zzjs$zzc;)Lcom/google/android/gms/cast/games/GameManagerClient;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzjs$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzjs$zzc;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzjs$zzc$1;->zzTK:Lcom/google/android/gms/internal/zzjs$zzc;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzjs$zzc$1;->zzTK:Lcom/google/android/gms/internal/zzjs$zzc;

    new-instance p3, Lcom/google/android/gms/common/api/Status;

    const/16 p4, 0xd

    invoke-direct {p3, p4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/zzjs$zzc;->zzp(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzjs$zzc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public zzy(J)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzjs$zzc$1;->zzTK:Lcom/google/android/gms/internal/zzjs$zzc;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzjs$zzc$1;->zzTK:Lcom/google/android/gms/internal/zzjs$zzc;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x837

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzjs$zzc;->zzp(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzjs$zzc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
