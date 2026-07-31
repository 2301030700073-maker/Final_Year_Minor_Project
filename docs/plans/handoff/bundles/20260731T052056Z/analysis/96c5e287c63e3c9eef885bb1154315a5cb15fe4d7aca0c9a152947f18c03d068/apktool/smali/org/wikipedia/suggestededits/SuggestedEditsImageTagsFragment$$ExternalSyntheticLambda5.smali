.class public final synthetic Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda5;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda5;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateLicenseTextShown()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->rootView:Landroid/view/View;

    .line 23
    .line 24
    check-cast v0, Landroid/widget/FrameLayout;

    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback$1()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;->nextPage(Landroidx/fragment/app/Fragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback$1()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateTagChips()V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyNextButton:Landroid/widget/TextView;

    .line 51
    .line 52
    const v1, 0x7f1208db

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Landroid/widget/ImageView;

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
