.class public final synthetic Lorg/wikipedia/gallery/GalleryItemFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lio/getstream/photoview/OnMatrixChangedListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/gallery/GalleryItemFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/gallery/GalleryItemFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryItemFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->saveImage()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const p1, 0x7f120257

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
