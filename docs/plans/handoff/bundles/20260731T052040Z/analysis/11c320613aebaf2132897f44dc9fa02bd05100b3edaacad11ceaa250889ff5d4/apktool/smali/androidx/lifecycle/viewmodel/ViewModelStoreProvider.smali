.class public final Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final defaultArgs:Landroid/os/Bundle;

.field public final defaultCreationExtras:Landroidx/lifecycle/viewmodel/CreationExtras;

.field public final defaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

.field public final parentKey:Ljava/lang/Long;

.field public final parentStore:Landroidx/lifecycle/ViewModelStore;

.field public final stateHolder$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Long;Landroid/os/Bundle;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->parentStore:Landroidx/lifecycle/ViewModelStore;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->parentKey:Ljava/lang/Long;

    .line 17
    .line 18
    iput-object p3, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->defaultArgs:Landroid/os/Bundle;

    .line 19
    .line 20
    iput-object p4, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->defaultCreationExtras:Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 21
    .line 22
    iput-object p5, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->defaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 23
    .line 24
    new-instance p1, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/16 p2, 0xc

    .line 27
    .line 28
    invoke-direct {p1, p0, p2}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->stateHolder$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final getStateHolder()Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->stateHolder$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    .line 8
    .line 9
    return-object p0
.end method
