.class public final Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final filterButton:Landroid/widget/ImageView;

.field public final filterCount:Landroid/widget/TextView;

.field public final rootView:Lorg/wikipedia/views/WikiCardView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/views/WikiCardView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->rootView:Lorg/wikipedia/views/WikiCardView;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->filterButton:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->filterCount:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;
    .locals 2

    .line 1
    const v0, 0x7f0c05c7

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const p1, 0x7f09024b

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/widget/ImageView;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const p1, 0x7f09024c

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/widget/TextView;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    check-cast p0, Lorg/wikipedia/views/WikiCardView;

    .line 32
    .line 33
    new-instance p1, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

    .line 34
    .line 35
    invoke-direct {p1, p0, v0, v1}, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;-><init>(Lorg/wikipedia/views/WikiCardView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "Missing required view with ID: "

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return-object p0
.end method
