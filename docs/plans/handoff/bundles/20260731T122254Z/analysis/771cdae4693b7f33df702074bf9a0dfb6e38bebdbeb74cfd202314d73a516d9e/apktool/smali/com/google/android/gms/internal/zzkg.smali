.class public final Lcom/google/android/gms/internal/zzkg;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzkg$zza;,
        Lcom/google/android/gms/internal/zzkg$zzb;
    }
.end annotation


# instance fields
.field private mFrom:I

.field private zzKT:J

.field private zzZA:I

.field private zzZh:Z

.field private zzZo:I

.field private zzZp:I

.field private zzZq:I

.field private zzZr:I

.field private zzZs:I

.field private zzZt:Z

.field private zzZu:Lcom/google/android/gms/internal/zzkg$zzb;

.field private zzZv:Landroid/graphics/drawable/Drawable;

.field private zzZw:Landroid/graphics/drawable/Drawable;

.field private zzZx:Z

.field private zzZy:Z

.field private zzZz:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzkg;-><init>(Lcom/google/android/gms/internal/zzkg$zzb;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzkg$zza;->zznq()Lcom/google/android/gms/internal/zzkg$zza;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzkg;->zzZv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZu:Lcom/google/android/gms/internal/zzkg$zzb;

    iget v1, v0, Lcom/google/android/gms/internal/zzkg$zzb;->zzZE:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v1

    iput p1, v0, Lcom/google/android/gms/internal/zzkg$zzb;->zzZE:I

    if-nez p2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzkg$zza;->zznq()Lcom/google/android/gms/internal/zzkg$zza;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/google/android/gms/internal/zzkg;->zzZw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzkg;->zzZu:Lcom/google/android/gms/internal/zzkg$zzb;

    iget v0, p1, Lcom/google/android/gms/internal/zzkg$zzb;->zzZE:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p2

    or-int/2addr p2, v0

    iput p2, p1, Lcom/google/android/gms/internal/zzkg$zzb;->zzZE:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzkg$zzb;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZo:I

    const/16 v1, 0xff

    iput v1, p0, Lcom/google/android/gms/internal/zzkg;->zzZq:I

    iput v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZs:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZh:Z

    new-instance v0, Lcom/google/android/gms/internal/zzkg$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzkg$zzb;-><init>(Lcom/google/android/gms/internal/zzkg$zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZu:Lcom/google/android/gms/internal/zzkg$zzb;

    return-void
.end method


# virtual methods
.method public canConstantState()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZx:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZy:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzkg;->zzZx:Z

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZy:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZo:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzkg;->zzKT:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzkg;->zzKT:J

    sub-long v7, v3, v5

    long-to-float v0, v7

    iget v3, p0, Lcom/google/android/gms/internal/zzkg;->zzZr:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iput v2, p0, Lcom/google/android/gms/internal/zzkg;->zzZo:I

    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/zzkg;->mFrom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/gms/internal/zzkg;->zzZp:I

    iget v4, p0, Lcom/google/android/gms/internal/zzkg;->mFrom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    float-to-int v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZs:I

    goto :goto_1

    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzkg;->zzKT:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZo:I

    const/4 v1, 0x0

    :cond_2
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZs:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzkg;->zzZh:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzkg;->zzZv:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzkg;->zzZw:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    if-eqz v2, :cond_3

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/zzkg;->zzZq:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZq:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void

    :cond_6
    if-eqz v2, :cond_7

    iget v1, p0, Lcom/google/android/gms/internal/zzkg;->zzZq:I

    sub-int/2addr v1, v0

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_8

    iget v1, p0, Lcom/google/android/gms/internal/zzkg;->zzZq:I

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_8
    if-lez v0, :cond_9

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZq:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkg;->invalidateSelf()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkg;->zzZu:Lcom/google/android/gms/internal/zzkg$zzb;

    iget v1, v1, Lcom/google/android/gms/internal/zzkg$zzb;->zzZD:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkg;->zzZu:Lcom/google/android/gms/internal/zzkg$zzb;

    iget v1, v1, Lcom/google/android/gms/internal/zzkg$zzb;->zzZE:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkg;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZu:Lcom/google/android/gms/internal/zzkg$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkg;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zzkg$zzb;->zzZD:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZu:Lcom/google/android/gms/internal/zzkg$zzb;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkg;->zzZw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkg;->zzZw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZz:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkg;->zzZw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZA:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZz:Z

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZA:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzlk;->zzoR()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkg;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZt:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkg;->canConstantState()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZt:Z

    :cond_1
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzlk;->zzoR()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkg;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZs:I

    iget v1, p0, Lcom/google/android/gms/internal/zzkg;->zzZq:I

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/zzkg;->zzZs:I

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/zzkg;->zzZq:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkg;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public startTransition(I)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzkg;->mFrom:I

    iget v1, p0, Lcom/google/android/gms/internal/zzkg;->zzZq:I

    iput v1, p0, Lcom/google/android/gms/internal/zzkg;->zzZp:I

    iput v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZs:I

    iput p1, p0, Lcom/google/android/gms/internal/zzkg;->zzZr:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZo:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkg;->invalidateSelf()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzlk;->zzoR()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkg;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public zznp()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzZw:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
