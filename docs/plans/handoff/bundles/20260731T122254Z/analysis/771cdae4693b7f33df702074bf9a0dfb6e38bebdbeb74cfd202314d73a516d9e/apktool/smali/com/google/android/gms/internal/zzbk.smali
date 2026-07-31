.class public Lcom/google/android/gms/internal/zzbk;
.super Ljava/lang/Thread;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbk$zza;
    }
.end annotation


# instance fields
.field private mStarted:Z

.field private zzam:Z

.field private final zzqt:Ljava/lang/Object;

.field private final zzrA:I

.field private final zzrB:I

.field private final zzrj:I

.field private final zzrl:I

.field private zzrv:Z

.field private final zzrw:Lcom/google/android/gms/internal/zzbj;

.field private final zzrx:Lcom/google/android/gms/internal/zzbi;

.field private final zzry:Lcom/google/android/gms/internal/zzgc;

.field private final zzrz:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbj;Lcom/google/android/gms/internal/zzbi;Lcom/google/android/gms/internal/zzgc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbk;->mStarted:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbk;->zzrv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbk;->zzam:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbk;->zzrw:Lcom/google/android/gms/internal/zzbj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbk;->zzrx:Lcom/google/android/gms/internal/zzbi;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbk;->zzry:Lcom/google/android/gms/internal/zzgc;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbk;->zzqt:Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/zzbz;->zzud:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzbk;->zzrj:I

    sget-object p1, Lcom/google/android/gms/internal/zzbz;->zzue:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzbk;->zzrA:I

    sget-object p1, Lcom/google/android/gms/internal/zzbz;->zzuf:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzbk;->zzrl:I

    sget-object p1, Lcom/google/android/gms/internal/zzbz;->zzug:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzbk;->zzrB:I

    sget-object p1, Lcom/google/android/gms/internal/zzbz;->zzuh:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzbk;->zzrz:I

    const-string p1, "ContentFetchTask"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbk;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbk;->zzam:Z

    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbk;->zzcq()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzrw:Lcom/google/android/gms/internal/zzbj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbj;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ContentFetchThread: no activity"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbk;->zza(Landroid/app/Activity;)V

    goto :goto_1

    :cond_1
    const-string v0, "ContentFetchTask: sleeping"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbk;->zzcs()V

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/zzbk;->zzrz:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzry:Lcom/google/android/gms/internal/zzgc;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzgc;->zza(Ljava/lang/Throwable;Z)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :goto_3
    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbk;->zzrv:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :try_start_2
    const-string v1, "ContentFetchTask: waiting"

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzqt:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_2
    :try_start_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    return-void
.end method

.method public wakeup()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbk;->zzrv:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzqt:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const-string v1, "ContentFetchThread: wakeup"

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method zza(Landroid/view/View;Lcom/google/android/gms/internal/zzbh;)Lcom/google/android/gms/internal/zzbk$zza;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzbk$zza;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/zzbk$zza;-><init>(Lcom/google/android/gms/internal/zzbk;II)V

    return-object p1

    :cond_0
    instance-of v1, p1, Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    instance-of v1, p1, Landroid/widget/EditText;

    if-nez v1, :cond_2

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzbh;->zzv(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/zzbk$zza;

    invoke-direct {p1, p0, v2, v0}, Lcom/google/android/gms/internal/zzbk$zza;-><init>(Lcom/google/android/gms/internal/zzbk;II)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/zzbk$zza;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/zzbk$zza;-><init>(Lcom/google/android/gms/internal/zzbk;II)V

    return-object p1

    :cond_2
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_4

    instance-of v1, p1, Lcom/google/android/gms/internal/zzid;

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbh;->zzcl()V

    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbk;->zza(Landroid/webkit/WebView;Lcom/google/android/gms/internal/zzbh;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/zzbk$zza;

    invoke-direct {p1, p0, v0, v2}, Lcom/google/android/gms/internal/zzbk$zza;-><init>(Lcom/google/android/gms/internal/zzbk;II)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/zzbk$zza;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/zzbk$zza;-><init>(Lcom/google/android/gms/internal/zzbk;II)V

    return-object p1

    :cond_4
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/google/android/gms/internal/zzbk;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzbh;)Lcom/google/android/gms/internal/zzbk$zza;

    move-result-object v3

    iget v4, v3, Lcom/google/android/gms/internal/zzbk$zza;->zzrI:I

    add-int/2addr v1, v4

    iget v3, v3, Lcom/google/android/gms/internal/zzbk$zza;->zzrJ:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/zzbk$zza;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/gms/internal/zzbk$zza;-><init>(Lcom/google/android/gms/internal/zzbk;II)V

    return-object p1

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/zzbk$zza;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/zzbk$zza;-><init>(Lcom/google/android/gms/internal/zzbk;II)V

    return-object p1
.end method

.method zza(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbk;->zzf(Landroid/view/View;)Z

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzbh;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbh;->zzck()V

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "text"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzbh;->zzu(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzbh;->zzu(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbh;->zzch()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbk;->zzrx:Lcom/google/android/gms/internal/zzbi;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzbi;->zzb(Lcom/google/android/gms/internal/zzbh;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to get webview content."

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbk;->zzry:Lcom/google/android/gms/internal/zzgc;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/internal/zzgc;->zza(Ljava/lang/Throwable;Z)V

    return-void

    :catch_1
    move-exception p1

    const-string p1, "Json string may be malformed."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method zza(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 1

    iget p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method zza(Landroid/webkit/WebView;Lcom/google/android/gms/internal/zzbh;)Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzlk;->zzoX()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbh;->zzcl()V

    new-instance v0, Lcom/google/android/gms/internal/zzbk$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/zzbk$2;-><init>(Lcom/google/android/gms/internal/zzbk;Lcom/google/android/gms/internal/zzbh;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public zzcp()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbk;->mStarted:Z

    if-eqz v1, :cond_0

    const-string v1, "Content hash thread already started, quiting..."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbk;->mStarted:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbk;->start()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method zzcq()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzrw:Lcom/google/android/gms/internal/zzbj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbj;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const-string v3, "keyguard"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_4

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v6, :cond_3

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzbk;->zza(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbk;->zzr(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public zzcr()Lcom/google/android/gms/internal/zzbh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzrx:Lcom/google/android/gms/internal/zzbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbi;->zzco()Lcom/google/android/gms/internal/zzbh;

    move-result-object v0

    return-object v0
.end method

.method public zzcs()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbk;->zzrv:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentFetchThread: paused, mPause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbk;->zzrv:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzct()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbk;->zzrv:Z

    return v0
.end method

.method zzf(Landroid/view/View;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbk$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbk$1;-><init>(Lcom/google/android/gms/internal/zzbk;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method zzg(Landroid/view/View;)V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzbh;

    iget v1, p0, Lcom/google/android/gms/internal/zzbk;->zzrj:I

    iget v2, p0, Lcom/google/android/gms/internal/zzbk;->zzrA:I

    iget v3, p0, Lcom/google/android/gms/internal/zzbk;->zzrl:I

    iget v4, p0, Lcom/google/android/gms/internal/zzbk;->zzrB:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbh;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbk;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzbh;)Lcom/google/android/gms/internal/zzbk$zza;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbh;->zzcm()V

    iget v1, p1, Lcom/google/android/gms/internal/zzbk$zza;->zzrI:I

    if-nez v1, :cond_0

    iget v1, p1, Lcom/google/android/gms/internal/zzbk$zza;->zzrJ:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p1, Lcom/google/android/gms/internal/zzbk$zza;->zzrJ:I

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbh;->zzcn()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget p1, p1, Lcom/google/android/gms/internal/zzbk$zza;->zzrJ:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbk;->zzrx:Lcom/google/android/gms/internal/zzbi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzbh;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbk;->zzrx:Lcom/google/android/gms/internal/zzbi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbi;->zzc(Lcom/google/android/gms/internal/zzbh;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Exception in fetchContentOnUIThread"

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzry:Lcom/google/android/gms/internal/zzgc;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzgc;->zza(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method zzr(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    return p1
.end method
