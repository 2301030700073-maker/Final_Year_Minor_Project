.class public final Lorg/schabi/newpipe/databinding/FragmentFeedBinding;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itemsList:Landroidx/recyclerview/widget/RecyclerView;

.field public final loadingProgressBar:Landroid/widget/ProgressBar;

.field public final loadingProgressText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final newItemsLoadedButton:Landroid/widget/Button;

.field public final refreshRootView:Landroid/widget/RelativeLayout;

.field public final refreshSubtitleText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final refreshText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final rootView:Landroid/widget/RelativeLayout;

.field public final swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ProgressBar;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Button;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->newItemsLoadedButton:Landroid/widget/Button;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshRootView:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshSubtitleText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 19
    .line 20
    iput-object p9, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method
