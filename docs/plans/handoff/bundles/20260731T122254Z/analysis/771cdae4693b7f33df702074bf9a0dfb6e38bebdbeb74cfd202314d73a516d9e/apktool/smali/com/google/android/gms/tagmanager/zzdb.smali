.class Lcom/google/android/gms/tagmanager/zzdb;
.super Lcom/google/android/gms/tagmanager/zzak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzdb$zza;
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final NAME:Ljava/lang/String;

.field private static final zzaOe:Ljava/lang/String;

.field private static final zzaOf:Ljava/lang/String;

.field private static final zzaOg:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private zzaKz:Lcom/google/android/gms/tagmanager/DataLayer;

.field private zzaOh:Z

.field private zzaOi:Z

.field private final zzaOj:Landroid/os/HandlerThread;

.field private final zzaOk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzad;->zzcN:Lcom/google/android/gms/internal/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzad;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdb;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzfO:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdb;->NAME:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzft:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdb;->zzaOe:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzfB:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdb;->zzaOf:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzhs:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdb;->zzaOg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdb;->ID:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/tagmanager/zzdb;->zzaOe:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/tagmanager/zzdb;->NAME:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzak;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->zzaOk:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzdb;->zzaKz:Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "Google GTM SDK Timer"

    const/16 v0, 0xa

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdb;->zzaOj:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzdb;->zzaOj:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/gms/tagmanager/zzdb;->zzaOj:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdb;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzdb;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzdb;->zzaOk:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzdb;)Lcom/google/android/gms/tagmanager/DataLayer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzdb;->zzaKz:Lcom/google/android/gms/tagmanager/DataLayer;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/tagmanager/zzdb;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzdb;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/tagmanager/zzdb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/tagmanager/zzdb;->zzaOi:Z

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/tagmanager/zzdb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/tagmanager/zzdb;->zzaOh:Z

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/tagmanager/zzdb;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzdb;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public zzE(Ljava/util/Map;)Lcom/google/android/gms/internal/zzag$zza;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;)",
            "Lcom/google/android/gms/internal/zzag$zza;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdb;->NAME:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdb;->zzaOg:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzdb;->zzaOe:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzdb;->zzaOf:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v9, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-wide v9, v4

    :goto_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v7, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-wide v7, v4

    :goto_1
    cmp-long p1, v9, v4

    if-lez p1, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    move-object v4, v0

    goto :goto_3

    :cond_1
    :goto_2
    const-string p1, "0"

    move-object v4, p1

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzdb;->zzaOk:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "0"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzdb;->zzaOk:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzdb;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdb$zza;

    move-object v1, v0

    move-object v2, p0

    move-wide v5, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/tagmanager/zzdb$zza;-><init>(Lcom/google/android/gms/tagmanager/zzdb;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {p1, v0, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdf;->zzzQ()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object p1

    return-object p1
.end method

.method public zzyh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
