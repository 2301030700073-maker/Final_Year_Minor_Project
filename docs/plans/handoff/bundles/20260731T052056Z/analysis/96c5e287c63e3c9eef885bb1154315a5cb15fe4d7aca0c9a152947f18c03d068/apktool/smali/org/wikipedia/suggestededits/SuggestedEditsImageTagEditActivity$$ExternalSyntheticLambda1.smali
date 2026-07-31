.class public final synthetic Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;

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
    iget p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "suggestedEditsImageTagsFragment"

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publish()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publish()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
