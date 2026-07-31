.class public final Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;
.super Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final list:Ljava/util/ArrayList;

.field public final synthetic this$0:Lorg/wikipedia/gallery/GalleryActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/gallery/GalleryActivity;Lorg/wikipedia/gallery/GalleryActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;-><init>(Lorg/wikipedia/gallery/GalleryActivity;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->list:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lorg/wikipedia/gallery/GalleryViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->list:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lorg/wikipedia/gallery/MediaListItem;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance p1, Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 23
    .line 24
    invoke-direct {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lkotlin/Pair;

    .line 28
    .line 29
    const-string v2, "title"

    .line 30
    .line 31
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lkotlin/Pair;

    .line 35
    .line 36
    const-string v2, "galleryItem"

    .line 37
    .line 38
    invoke-direct {v0, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x2

    .line 42
    new-array p0, p0, [Lkotlin/Pair;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    aput-object v1, p0, v2

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    aput-object v0, p0, v1

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    return-object p1
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->list:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
