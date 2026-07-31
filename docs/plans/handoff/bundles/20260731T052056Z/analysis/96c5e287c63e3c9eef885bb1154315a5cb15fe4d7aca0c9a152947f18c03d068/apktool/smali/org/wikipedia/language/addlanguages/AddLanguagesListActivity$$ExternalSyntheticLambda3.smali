.class public final synthetic Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;

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
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;->$r8$clinit:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :pswitch_0
    sget v0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;->$r8$clinit:I

    .line 21
    .line 22
    iget-object p0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 23
    .line 24
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->fetchAllData()V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :pswitch_1
    sget v0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;->$r8$clinit:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
