.class public final Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$5;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $owner$delegate:Lkotlin/Lazy;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_viewModels:Lorg/wikipedia/feed/HomeFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/HomeFragment;Lkotlin/Lazy;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$5;->$this_viewModels:Lorg/wikipedia/feed/HomeFragment;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$5;->$owner$delegate:Lkotlin/Lazy;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$5;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$5;->$this_viewModels:Lorg/wikipedia/feed/HomeFragment;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$5;->$owner$delegate:Lkotlin/Lazy;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 16
    .line 17
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 23
    .line 24
    :cond_0
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-nez p0, :cond_2

    .line 31
    .line 32
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :cond_2
    return-object p0

    .line 37
    :pswitch_0
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 42
    .line 43
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    move-object v2, p0

    .line 48
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 49
    .line 50
    :cond_3
    if-eqz v2, :cond_4

    .line 51
    .line 52
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-nez p0, :cond_5

    .line 57
    .line 58
    :cond_4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    :cond_5
    return-object p0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
