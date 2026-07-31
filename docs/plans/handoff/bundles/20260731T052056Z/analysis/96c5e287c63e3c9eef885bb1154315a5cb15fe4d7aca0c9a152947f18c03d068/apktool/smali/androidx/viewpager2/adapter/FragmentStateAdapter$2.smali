.class public final Landroidx/viewpager2/adapter/FragmentStateAdapter$2;
.super Landroidx/work/OperationKt;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic val$container:Landroid/widget/FrameLayout;

.field public final synthetic val$fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->val$fragment:Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->val$container:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFragmentViewCreated(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->val$fragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentManagerImpl;->unregisterFragmentLifecycleCallbacks(Landroidx/work/OperationKt;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->val$container:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    invoke-static {p3, p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
