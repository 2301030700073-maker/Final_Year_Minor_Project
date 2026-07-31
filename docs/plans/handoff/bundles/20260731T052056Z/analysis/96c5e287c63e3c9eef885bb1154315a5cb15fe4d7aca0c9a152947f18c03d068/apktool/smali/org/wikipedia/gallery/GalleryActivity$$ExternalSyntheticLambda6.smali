.class public final synthetic Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/gallery/GalleryActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/gallery/GalleryActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/gallery/GalleryActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/gallery/GalleryActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryViewModel;->fetchGalleryItems()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_0
    sget-object v0, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->transitionReceiver:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Landroid/widget/ImageView;

    .line 41
    .line 42
    const/16 v0, 0x8

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :goto_1
    return-void

    .line 48
    :cond_2
    const-string p0, "binding"

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    throw p0

    .line 55
    :pswitch_1
    sget-object v0, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    iget-boolean v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->controlsShowing:Z

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lorg/wikipedia/gallery/GalleryActivity;->setControlsShowing(Z)V

    .line 67
    .line 68
    .line 69
    :goto_2
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
