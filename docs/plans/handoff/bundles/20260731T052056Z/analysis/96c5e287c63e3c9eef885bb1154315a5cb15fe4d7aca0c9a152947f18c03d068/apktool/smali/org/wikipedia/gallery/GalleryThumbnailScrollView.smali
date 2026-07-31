.class public final Lorg/wikipedia/gallery/GalleryThumbnailScrollView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001:\u0003\u0015\u0016\u0017B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001b\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rR$\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/wikipedia/gallery/GalleryThumbnailScrollView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "Lorg/wikipedia/dataclient/mwapi/MwQueryPage;",
        "list",
        "",
        "setGalleryList",
        "(Ljava/util/List;)V",
        "Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;",
        "listener",
        "Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;",
        "getListener",
        "()Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;",
        "setListener",
        "(Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;)V",
        "GalleryViewListener",
        "GalleryItemHolder",
        "AppIconAdapter",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public listener:Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;

.field public final pressAnimation:Landroid/view/animation/Animation;

.field public final releaseAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    const p2, 0x7f01004d

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->pressAnimation:Landroid/view/animation/Animation;

    .line 15
    .line 16
    const p2, 0x7f01004e

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->releaseAnimation:Landroid/view/animation/Animation;

    .line 24
    .line 25
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final getListener()Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->listener:Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setGalleryList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1, p0, p1}, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;-><init>(ILjava/lang/Object;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setListener(Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->listener:Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;

    .line 2
    .line 3
    return-void
.end method
