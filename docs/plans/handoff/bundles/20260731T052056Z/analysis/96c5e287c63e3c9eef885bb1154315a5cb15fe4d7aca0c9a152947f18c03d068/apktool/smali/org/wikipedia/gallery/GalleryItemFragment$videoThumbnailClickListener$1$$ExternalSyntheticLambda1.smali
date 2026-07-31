.class public final synthetic Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/gallery/GalleryItemFragment;

.field public final synthetic f$1:Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/gallery/GalleryItemFragment;Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda1;->f$1:Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lorg/wikipedia/gallery/GalleryItemFragment;->onLoading(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const v0, 0x7f120252

    .line 15
    .line 16
    .line 17
    invoke-static {p3, v0}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 18
    .line 19
    .line 20
    iget-object p3, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object p3, p3, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p3, Landroid/widget/VideoView;

    .line 28
    .line 29
    const/16 v0, 0x8

    .line 30
    .line 31
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p3, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object p3, p3, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p3, Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda1;->f$1:Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;

    .line 59
    .line 60
    iput-boolean p2, p0, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;->loading:Z

    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    return p0
.end method
