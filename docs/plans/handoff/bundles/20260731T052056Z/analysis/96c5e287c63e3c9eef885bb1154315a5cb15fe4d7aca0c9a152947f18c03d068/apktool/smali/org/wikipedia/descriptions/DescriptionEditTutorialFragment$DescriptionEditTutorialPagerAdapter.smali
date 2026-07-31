.class public final Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$DescriptionEditTutorialPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$DescriptionEditTutorialPagerAdapter;->this$0:Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/lifecycle/LifecycleRegistry;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    new-instance p0, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$ItemFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$ItemFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lkotlin/Pair;

    .line 11
    .line 12
    const-string v1, "position"

    .line 13
    .line 14
    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    new-array p1, p1, [Lkotlin/Pair;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    aput-object v0, p1, v1

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$DescriptionEditTutorialPagerAdapter;->this$0:Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;

    .line 2
    .line 3
    iget-boolean p0, p0, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;->showAIOnBoarding:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x3

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x2

    .line 10
    return p0
.end method
