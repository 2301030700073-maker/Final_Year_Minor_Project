.class public final synthetic Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->onLoading(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lorg/wikipedia/gallery/GalleryActivity;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lorg/wikipedia/gallery/GalleryActivity;->fetchGalleryDescription(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Landroid/widget/ImageView;

    .line 24
    .line 25
    const/16 v2, 0x8

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Landroid/widget/VideoView;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;

    .line 55
    .line 56
    iput-boolean v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;->loading:Z

    .line 57
    .line 58
    return-void
.end method
