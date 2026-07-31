.class public final synthetic Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;

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
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->$r8$clinit:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->getServiceId()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v0, p0, p1}, Landroidx/sqlite/SQLite;->openSearchFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :pswitch_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 43
    .line 44
    iget-object p1, p1, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->disableDescriptionSelection()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 59
    .line 60
    iget-object p1, p1, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 69
    .line 70
    iget-object p1, p1, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 76
    .line 77
    .line 78
    const p1, 0x7f1300f5

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 86
    .line 87
    iget-object v0, v0, Lorg/koin/core/Koin;->extensionManager:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 95
    .line 96
    iget-object v0, v0, Lorg/koin/core/Koin;->extensionManager:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Landroid/widget/ImageView;

    .line 99
    .line 100
    invoke-static {v0, p1}, Landroidx/work/OperationKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 104
    .line 105
    iget-object p0, p0, Lorg/koin/core/Koin;->extensionManager:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Landroid/widget/ImageView;

    .line 108
    .line 109
    const p1, 0x7f0800fd

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    .line 114
    .line 115
    :goto_0
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
