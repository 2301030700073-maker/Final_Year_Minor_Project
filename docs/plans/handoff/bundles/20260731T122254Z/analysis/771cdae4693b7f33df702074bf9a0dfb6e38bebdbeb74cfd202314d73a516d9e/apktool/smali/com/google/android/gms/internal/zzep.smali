.class public Lcom/google/android/gms/internal/zzep;
.super Lcom/google/android/gms/internal/zzeu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# static fields
.field static final zzyu:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zznM:I

.field private zznN:I

.field private final zzoA:Lcom/google/android/gms/internal/zzid;

.field private final zzqt:Ljava/lang/Object;

.field private zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field private zzyA:I

.field private final zzyB:Landroid/app/Activity;

.field private zzyC:Landroid/widget/ImageView;

.field private zzyD:Landroid/widget/LinearLayout;

.field private zzyE:Lcom/google/android/gms/internal/zzev;

.field private zzyF:Landroid/widget/PopupWindow;

.field private zzyG:Landroid/widget/RelativeLayout;

.field private zzyH:Landroid/view/ViewGroup;

.field private zzyv:Ljava/lang/String;

.field private zzyw:Z

.field private zzyx:I

.field private zzyy:I

.field private zzyz:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "top-left"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "top-right"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "top-center"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "center"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "bottom-left"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "bottom-right"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "bottom-center"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/zzep;->zzyu:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzev;)V
    .locals 2

    const-string v0, "resize"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzeu;-><init>(Lcom/google/android/gms/internal/zzid;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzep;->zzyv:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzep;->zzyw:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzep;->zzyx:I

    iput v0, p0, Lcom/google/android/gms/internal/zzep;->zzyy:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzep;->zznN:I

    iput v0, p0, Lcom/google/android/gms/internal/zzep;->zzyz:I

    iput v0, p0, Lcom/google/android/gms/internal/zzep;->zzyA:I

    iput v1, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzep;->zzqt:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzid;->zzgB()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzep;->zzyE:Lcom/google/android/gms/internal/zzev;

    return-void
.end method

.method private zzed()[I
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzep;->zzef()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzep;->zzyw:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    new-array v0, v1, [I

    iget v1, p0, Lcom/google/android/gms/internal/zzep;->zzyx:I

    iget v4, p0, Lcom/google/android/gms/internal/zzep;->zzyz:I

    add-int/2addr v1, v4

    aput v1, v0, v3

    iget v1, p0, Lcom/google/android/gms/internal/zzep;->zzyy:I

    iget v3, p0, Lcom/google/android/gms/internal/zzep;->zzyA:I

    add-int/2addr v1, v3

    aput v1, v0, v2

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzhl;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzhl;->zzj(Landroid/app/Activity;)[I

    move-result-object v4

    aget v0, v0, v3

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zzyx:I

    iget v6, p0, Lcom/google/android/gms/internal/zzep;->zzyz:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/google/android/gms/internal/zzep;->zzyy:I

    iget v7, p0, Lcom/google/android/gms/internal/zzep;->zzyA:I

    add-int/2addr v6, v7

    if-gez v5, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v7, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    add-int/2addr v7, v5

    if-le v7, v0, :cond_3

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    sub-int/2addr v0, v5

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_0
    aget v5, v4, v3

    if-ge v6, v5, :cond_4

    aget v6, v4, v3

    goto :goto_1

    :cond_4
    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zznN:I

    add-int/2addr v5, v6

    aget v7, v4, v2

    if-le v5, v7, :cond_5

    aget v4, v4, v2

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zznN:I

    sub-int v6, v4, v5

    :cond_5
    :goto_1
    new-array v1, v1, [I

    aput v0, v1, v3

    aput v6, v1, v2

    return-object v1
.end method

.method private zzg(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    const-string v1, "width"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhl;->zzau(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    :cond_0
    const-string v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhl;->zzau(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzep;->zznN:I

    :cond_1
    const-string v0, "offsetX"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    const-string v1, "offsetX"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhl;->zzau(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzep;->zzyz:I

    :cond_2
    const-string v0, "offsetY"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    const-string v1, "offsetY"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhl;->zzau(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzep;->zzyA:I

    :cond_3
    const-string v0, "allowOffscreen"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "allowOffscreen"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzep;->zzyw:Z

    :cond_4
    const-string v0, "customClosePosition"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzyv:Ljava/lang/String;

    :cond_5
    return-void
.end method


# virtual methods
.method public zza(IIZ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzep;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzep;->zzyx:I

    iput p2, p0, Lcom/google/android/gms/internal/zzep;->zzyy:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzyF:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzep;->zzed()[I

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/zzep;->zzyF:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    const/4 v3, 0x0

    aget v4, p1, v3

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    aget v5, p1, p2

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyF:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzep;->zzyF:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {p3, v1, v2, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    aget p3, p1, v3

    aget p1, p1, p2

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/zzep;->zzc(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzep;->zzn(Z)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method zzb(II)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzep;->zzyE:Lcom/google/android/gms/internal/zzev;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzep;->zzyE:Lcom/google/android/gms/internal/zzev;

    iget v1, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    iget v2, p0, Lcom/google/android/gms/internal/zzep;->zznN:I

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzev;->zza(IIII)V

    :cond_0
    return-void
.end method

.method zzc(II)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhl;->zzj(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    iget v1, p0, Lcom/google/android/gms/internal/zzep;->zznN:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzep;->zzb(IIII)V

    return-void
.end method

.method public zzd(II)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzep;->zzyx:I

    iput p2, p0, Lcom/google/android/gms/internal/zzep;->zzyy:I

    return-void
.end method

.method zzec()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzep;->zznN:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzee()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzep;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzyF:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method zzef()Z
    .locals 9

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhl;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzhl;->zzj(Landroid/app/Activity;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    const/16 v6, 0x32

    if-lt v5, v6, :cond_7

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    if-le v5, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zznN:I

    if-lt v5, v6, :cond_6

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zznN:I

    if-le v5, v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zznN:I

    if-ne v5, v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    if-ne v0, v3, :cond_2

    const-string v0, "Cannot resize to a full-screen ad."

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return v2

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzep;->zzyw:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzep;->zzyv:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x2

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "top-center"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_1
    const-string v7, "bottom-center"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_2
    const-string v7, "bottom-right"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_2

    :sswitch_3
    const-string v7, "bottom-left"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_4
    const-string v7, "top-left"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_5
    const-string v7, "center"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/google/android/gms/internal/zzep;->zzyx:I

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zzyz:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v6

    :goto_3
    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zzyy:I

    iget v7, p0, Lcom/google/android/gms/internal/zzep;->zzyA:I

    add-int/2addr v5, v7

    goto :goto_5

    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/zzep;->zzyx:I

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zzyz:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v6

    goto :goto_4

    :pswitch_1
    iget v0, p0, Lcom/google/android/gms/internal/zzep;->zzyx:I

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zzyz:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    div-int/2addr v5, v8

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    goto :goto_4

    :pswitch_2
    iget v0, p0, Lcom/google/android/gms/internal/zzep;->zzyx:I

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zzyz:I

    add-int/2addr v0, v5

    :goto_4
    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zzyy:I

    iget v7, p0, Lcom/google/android/gms/internal/zzep;->zzyA:I

    add-int/2addr v5, v7

    iget v7, p0, Lcom/google/android/gms/internal/zzep;->zznN:I

    add-int/2addr v5, v7

    sub-int/2addr v5, v6

    goto :goto_5

    :pswitch_3
    iget v0, p0, Lcom/google/android/gms/internal/zzep;->zzyx:I

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zzyz:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    div-int/2addr v5, v8

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zzyy:I

    iget v7, p0, Lcom/google/android/gms/internal/zzep;->zzyA:I

    add-int/2addr v5, v7

    iget v7, p0, Lcom/google/android/gms/internal/zzep;->zznN:I

    div-int/2addr v7, v8

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x19

    goto :goto_5

    :pswitch_4
    iget v0, p0, Lcom/google/android/gms/internal/zzep;->zzyx:I

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zzyz:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    div-int/2addr v5, v8

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    goto :goto_3

    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/internal/zzep;->zzyx:I

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zzyz:I

    add-int/2addr v0, v5

    goto :goto_3

    :goto_5
    if-ltz v0, :cond_4

    add-int/2addr v0, v6

    if-gt v0, v3, :cond_4

    aget v0, v1, v2

    if-lt v5, v0, :cond_4

    add-int/2addr v5, v6

    aget v0, v1, v4

    if-le v5, v0, :cond_5

    :cond_4
    return v2

    :cond_5
    return v4

    :cond_6
    :goto_6
    const-string v0, "Height is too small or too large."

    goto/16 :goto_0

    :cond_7
    :goto_7
    const-string v0, "Width is too small or too large."

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zzh(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzep;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    if-nez v1, :cond_0

    const-string p1, "Not an activity context. Cannot resize."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzep;->zzae(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzid;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "Webview is not yet available, size is not set."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzep;->zzae(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzid;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzsn:Z

    if-eqz v1, :cond_2

    const-string p1, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzep;->zzae(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzid;->zzgJ()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "Cannot resize an expanded banner."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzep;->zzae(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzep;->zzg(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzep;->zzec()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Invalid width and height options. Cannot resize."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzep;->zzae(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5

    goto/16 :goto_7

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzep;->zzed()[I

    move-result-object v1

    if-nez v1, :cond_6

    const-string p1, "Resize location out of screen or close button is not visible."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzep;->zzae(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    iget v4, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    iget v5, p0, Lcom/google/android/gms/internal/zzep;->zznN:I

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_a

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_a

    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/zzep;->zzyF:Landroid/widget/PopupWindow;

    if-nez v5, :cond_7

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyH:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzhl;->zzj(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzep;->zzyC:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzep;->zzyC:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzid;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyH:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzep;->zzyC:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyF:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyG:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyG:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyG:Landroid/widget/RelativeLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gms/internal/zzep;->zzyG:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6, v2, v3, v5}, Lcom/google/android/gms/internal/zzhl;->zza(Landroid/view/View;IIZ)Landroid/widget/PopupWindow;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzep;->zzyF:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzep;->zzyF:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzep;->zzyF:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzep;->zzyF:Landroid/widget/PopupWindow;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzep;->zzyw:Z

    xor-int/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzep;->zzyG:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v6, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzep;->zzyD:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    const/16 v8, 0x32

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v7

    iget-object v9, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v2, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyv:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "top-center"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_1
    const-string v7, "bottom-center"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_2
    const-string v7, "bottom-right"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_3
    const-string v7, "bottom-left"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_4
    const-string v7, "top-left"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_5
    const-string v7, "center"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x2

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v4, -0x1

    :goto_2
    const/16 v6, 0x9

    const/16 v7, 0xe

    const/16 v8, 0xb

    const/16 v9, 0xc

    const/16 v10, 0xa

    packed-switch v4, :pswitch_data_0

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    :pswitch_0
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_3
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_6

    :pswitch_1
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_4
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_6

    :pswitch_2
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_5
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_6

    :pswitch_3
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_6

    :pswitch_4
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    :pswitch_5
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_5

    :goto_6
    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyD:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/google/android/gms/internal/zzep$1;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/zzep$1;-><init>(Lcom/google/android/gms/internal/zzep;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyD:Landroid/widget/LinearLayout;

    const-string v6, "Close button"

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyG:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzep;->zzyD:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzep;->zzyF:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    aget v7, v1, v5

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    aget v8, v1, v3

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v2, p1, v5, v4, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    aget p1, v1, v5

    aget v2, v1, v3

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/zzep;->zzb(II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzep;->zzyB:Landroid/app/Activity;

    new-instance v6, Lcom/google/android/gms/ads/AdSize;

    iget v7, p0, Lcom/google/android/gms/internal/zzep;->zznM:I

    iget v8, p0, Lcom/google/android/gms/internal/zzep;->zznN:I

    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-direct {v2, v4, v6}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    aget p1, v1, v5

    aget v1, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/zzep;->zzc(II)V

    const-string p1, "resized"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzep;->zzag(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot show popup window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzep;->zzae(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzyG:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzyH:Landroid/view/ViewGroup;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzyH:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzyC:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzyH:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    :cond_9
    monitor-exit v0

    return-void

    :cond_a
    const-string p1, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzep;->zzae(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_b
    :goto_7
    const-string p1, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzep;->zzae(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zzn(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzep;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzyF:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzyF:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzyG:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzyH:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzyH:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzep;->zzyC:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzyH:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzep;->zzoA:Lcom/google/android/gms/internal/zzid;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzep;->zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "default"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzep;->zzag(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzyE:Lcom/google/android/gms/internal/zzev;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzyE:Lcom/google/android/gms/internal/zzev;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzev;->zzbc()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzyF:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzyG:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzyH:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzep;->zzyD:Landroid/widget/LinearLayout;

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
