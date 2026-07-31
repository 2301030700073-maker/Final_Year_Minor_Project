.class public final synthetic Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    sget v0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p0, p1}, Landroidx/transition/Transition$Impl26;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0
.end method
