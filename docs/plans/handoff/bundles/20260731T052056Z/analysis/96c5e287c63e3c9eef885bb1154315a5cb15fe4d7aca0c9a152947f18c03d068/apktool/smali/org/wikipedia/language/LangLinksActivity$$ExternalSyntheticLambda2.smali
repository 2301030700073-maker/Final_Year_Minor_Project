.class public final synthetic Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/language/LangLinksActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/language/LangLinksActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/language/LangLinksActivity;

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
    iget v0, p0, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/language/LangLinksActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lorg/wikipedia/language/LangLinksActivity;->$r8$clinit:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :pswitch_0
    sget v0, Lorg/wikipedia/language/LangLinksActivity;->$r8$clinit:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :pswitch_1
    sget v0, Lorg/wikipedia/language/LangLinksActivity;->$r8$clinit:I

    .line 27
    .line 28
    iget-object p0, p0, Lorg/wikipedia/language/LangLinksActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 29
    .line 30
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lorg/wikipedia/language/LangLinksViewModel;

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/wikipedia/language/LangLinksViewModel;->fetchAllData()V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
