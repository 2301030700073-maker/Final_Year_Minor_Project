.class public final Lorg/wikipedia/places/PlacesFragmentViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public highlightedPageTitle:Lorg/wikipedia/page/PageTitle;

.field public lastKnownLocation:Landroid/location/Location;

.field public final location:Landroid/location/Location;

.field public final nearbyPagesLiveData:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "location"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/location/Location;

    .line 14
    .line 15
    iput-object v0, p0, Lorg/wikipedia/places/PlacesFragmentViewModel;->location:Landroid/location/Location;

    .line 16
    .line 17
    const-string v0, "title"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 24
    .line 25
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragmentViewModel;->highlightedPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 26
    .line 27
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragmentViewModel;->nearbyPagesLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final fetchNearbyPages(DDI)V
    .locals 10

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/places/PlacesFragmentViewModel;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;

    .line 11
    .line 12
    const/4 v9, 0x0

    .line 13
    move-object v3, p0

    .line 14
    move-wide v4, p1

    .line 15
    move-wide v6, p3

    .line 16
    move v8, p5

    .line 17
    invoke-direct/range {v2 .. v9}, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;-><init>(Lorg/wikipedia/places/PlacesFragmentViewModel;DDILkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x2

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-static {v0, v1, p1, v2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 23
    .line 24
    .line 25
    return-void
.end method
