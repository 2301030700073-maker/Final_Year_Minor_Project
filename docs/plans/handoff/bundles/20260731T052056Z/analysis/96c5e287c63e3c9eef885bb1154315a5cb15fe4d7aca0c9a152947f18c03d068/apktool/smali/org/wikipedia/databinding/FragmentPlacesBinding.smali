.class public final Lorg/wikipedia/databinding/FragmentPlacesBinding;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final backButton:Landroid/widget/ImageView;

.field public final controlsContainer:Landroid/widget/LinearLayout;

.field public final langCodeButton:Landroid/widget/FrameLayout;

.field public final listEmptyContainer:Landroid/view/View;

.field public final listEmptyMessage:Landroid/widget/TextView;

.field public final listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final listViewButton:Landroid/view/View;

.field public final mapView:Landroid/view/View;

.field public final mapViewButton:Landroid/view/View;

.field public final myLocationButton:Landroid/view/View;

.field public final rootView:Landroid/widget/FrameLayout;

.field public final searchCloseBtn:Landroid/view/View;

.field public final searchContainer:Lorg/wikipedia/views/WikiCardView;

.field public final searchTextView:Landroid/widget/TextView;

.field public final tabsButton:Landroid/view/ViewGroup;

.field public final viewButtonsGroup:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lorg/wikipedia/views/LangCodeView;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/button/MaterialButton;Lorg/maplibre/android/maps/MapView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/widget/ImageView;Lorg/wikipedia/views/WikiCardView;Landroid/widget/TextView;Lorg/wikipedia/views/TabCountsView;Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->rootView:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->backButton:Landroid/widget/ImageView;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->controlsContainer:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->langCodeButton:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listEmptyContainer:Landroid/view/View;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listEmptyMessage:Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listViewButton:Landroid/view/View;

    .line 19
    .line 20
    iput-object p9, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 21
    .line 22
    iput-object p10, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapViewButton:Landroid/view/View;

    .line 23
    .line 24
    iput-object p11, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->myLocationButton:Landroid/view/View;

    .line 25
    .line 26
    iput-object p12, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchCloseBtn:Landroid/view/View;

    .line 27
    .line 28
    iput-object p13, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchContainer:Lorg/wikipedia/views/WikiCardView;

    .line 29
    .line 30
    iput-object p14, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchTextView:Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object p15, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->tabsButton:Landroid/view/ViewGroup;

    .line 33
    .line 34
    move-object/from16 p1, p16

    .line 35
    .line 36
    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->viewButtonsGroup:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Landroidx/recyclerview/widget/RecyclerView;Lorg/wikipedia/views/WikiSwipeRefreshLayout;Landroid/widget/FrameLayout;Lorg/wikipedia/views/WikiCardView;Landroid/widget/TextView;Lorg/wikipedia/views/FaceAndColorDetectImageView;Landroid/widget/FrameLayout;Lcom/google/android/material/appbar/MaterialToolbar;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchCloseBtn:Landroid/view/View;

    .line 41
    iput-object p2, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->controlsContainer:Landroid/widget/LinearLayout;

    .line 42
    iput-object p3, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listEmptyMessage:Landroid/widget/TextView;

    .line 43
    iput-object p4, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->backButton:Landroid/widget/ImageView;

    .line 44
    iput-object p5, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->rootView:Landroid/widget/FrameLayout;

    .line 45
    iput-object p6, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->langCodeButton:Landroid/widget/FrameLayout;

    .line 46
    iput-object p7, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listEmptyContainer:Landroid/view/View;

    .line 47
    iput-object p8, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    iput-object p9, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listViewButton:Landroid/view/View;

    .line 49
    iput-object p10, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapViewButton:Landroid/view/View;

    .line 50
    iput-object p11, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchContainer:Lorg/wikipedia/views/WikiCardView;

    .line 51
    iput-object p12, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchTextView:Landroid/widget/TextView;

    .line 52
    iput-object p13, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 53
    iput-object p14, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->myLocationButton:Landroid/view/View;

    .line 54
    iput-object p15, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->tabsButton:Landroid/view/ViewGroup;

    move-object/from16 p1, p16

    .line 55
    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->viewButtonsGroup:Landroid/widget/LinearLayout;

    return-void
.end method
