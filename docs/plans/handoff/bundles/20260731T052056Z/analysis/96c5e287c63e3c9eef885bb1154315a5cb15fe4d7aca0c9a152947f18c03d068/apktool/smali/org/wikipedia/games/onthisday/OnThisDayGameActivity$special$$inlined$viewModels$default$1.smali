.class public final Lorg/wikipedia/games/onthisday/OnThisDayGameActivity$special$$inlined$viewModels$default$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_viewModels:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity$special$$inlined$viewModels$default$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity$special$$inlined$viewModels$default$1;->$this_viewModels:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity$special$$inlined$viewModels$default$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity$special$$inlined$viewModels$default$1;->$this_viewModels:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :pswitch_1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
