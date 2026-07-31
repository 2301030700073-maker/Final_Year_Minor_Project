.class Lcom/google/android/gms/internal/zzjs$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/internal/zzo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjs$zza;-><init>(Lcom/google/android/gms/internal/zzjs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzTH:Lcom/google/android/gms/internal/zzjs;

.field final synthetic zzTI:Lcom/google/android/gms/internal/zzjs$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjs$zza;Lcom/google/android/gms/internal/zzjs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjs$zza$1;->zzTI:Lcom/google/android/gms/internal/zzjs$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjs$zza$1;->zzTH:Lcom/google/android/gms/internal/zzjs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(JILjava/lang/Object;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    iget-object p4, p0, Lcom/google/android/gms/internal/zzjs$zza$1;->zzTI:Lcom/google/android/gms/internal/zzjs$zza;

    new-instance v7, Lcom/google/android/gms/internal/zzjs$zze;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p3, v0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzjs$zze;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-virtual {p4, v7}, Lcom/google/android/gms/internal/zzjs$zza;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    check-cast p4, Lcom/google/android/gms/internal/zzju;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzju;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    if-nez p3, :cond_1

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzjs$zza$1;->zzTI:Lcom/google/android/gms/internal/zzjs$zza;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzjs$zza;->zzTB:Lcom/google/android/gms/internal/zzjs;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzjs;->zza(Lcom/google/android/gms/internal/zzjs;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzjs$zza$1;->zzTI:Lcom/google/android/gms/internal/zzjs$zza;

    new-instance p2, Lcom/google/android/gms/internal/zzjs$zze;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzju;->zzlD()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p3, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzju;->getRequestId()J

    move-result-wide v4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzju;->getExtraMessageData()Lorg/json/JSONObject;

    move-result-object v6

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzjs$zze;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzjs$zza;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzjs$zza$1;->zzTI:Lcom/google/android/gms/internal/zzjs$zza;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzjs$zza$1;->zzTI:Lcom/google/android/gms/internal/zzjs$zza;

    new-instance p3, Lcom/google/android/gms/common/api/Status;

    const/16 p4, 0xd

    invoke-direct {p3, p4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/zzjs$zza;->zzo(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzjs$zza;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public zzy(J)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzjs$zza$1;->zzTI:Lcom/google/android/gms/internal/zzjs$zza;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzjs$zza$1;->zzTI:Lcom/google/android/gms/internal/zzjs$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x837

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzjs$zza;->zzo(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzjs$zza;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
