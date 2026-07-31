.class public final synthetic Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->onSelectPage()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 21
    .line 22
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemViewModel;

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langFromCode:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langToCode:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemViewModel;->findNextSuggestedEditsItem(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_2
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 71
    .line 72
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getShowImageZoomTooltip()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    const/4 p1, 0x0

    .line 79
    const v0, 0x7f120612

    .line 80
    .line 81
    .line 82
    invoke-static {v0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const p1, 0x7f1208e2

    .line 90
    .line 91
    .line 92
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 93
    .line 94
    .line 95
    :cond_1
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
