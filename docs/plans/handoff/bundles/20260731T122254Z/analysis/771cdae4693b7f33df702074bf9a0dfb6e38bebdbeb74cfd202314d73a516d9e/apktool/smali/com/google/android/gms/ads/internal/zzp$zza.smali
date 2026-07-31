.class public final Lcom/google/android/gms/ads/internal/zzp$zza;
.super Landroid/widget/ViewSwitcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private final zzqn:Lcom/google/android/gms/internal/zzhn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzhn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzhn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$zza;->zzqn:Lcom/google/android/gms/internal/zzhn;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$zza;->zzqn:Lcom/google/android/gms/internal/zzhn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzhn;->zzd(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public removeAllViews()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzp$zza;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zzp$zza;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/google/android/gms/internal/zzid;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzid;->destroy()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public zzbP()Lcom/google/android/gms/internal/zzhn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$zza;->zzqn:Lcom/google/android/gms/internal/zzhn;

    return-object v0
.end method
