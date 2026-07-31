.class public final Lcom/fsck/k9/ui/push/PushInfoFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final appNameProvider$delegate:Lkotlin/Lazy;

.field public final notificationChannelManager$delegate:Lkotlin/Lazy;

.field public final pushController$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/ui/push/PushInfoFragment$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/push/PushInfoFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/push/PushInfoFragment;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/fsck/k9/ui/push/PushInfoFragment;->notificationChannelManager$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lcom/fsck/k9/ui/push/PushInfoFragment$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/push/PushInfoFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/push/PushInfoFragment;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/fsck/k9/ui/push/PushInfoFragment;->pushController$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance v0, Lcom/fsck/k9/ui/push/PushInfoFragment$special$$inlined$inject$default$1;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/push/PushInfoFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/push/PushInfoFragment;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/fsck/k9/ui/push/PushInfoFragment;->appNameProvider$delegate:Lkotlin/Lazy;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0c0174

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p2, 0x7f090300

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 12
    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v1, 0x1a

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x2

    .line 19
    const/4 v4, 0x0

    .line 20
    iget-object v5, p0, Lcom/fsck/k9/ui/push/PushInfoFragment;->appNameProvider$delegate:Lkotlin/Lazy;

    .line 21
    .line 22
    const v6, 0x7f120549

    .line 23
    .line 24
    .line 25
    if-lt v0, v1, :cond_0

    .line 26
    .line 27
    const v0, 0x7f120545

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lnet/thunderbird/core/common/provider/AppNameProvider;

    .line 42
    .line 43
    check-cast v1, Lapp/k9mail/provider/K9AppNameProvider;

    .line 44
    .line 45
    invoke-virtual {v1}, Lapp/k9mail/provider/K9AppNameProvider;->getAppName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-array v5, v3, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object v1, v5, v4

    .line 52
    .line 53
    aput-object v0, v5, v2

    .line 54
    .line 55
    invoke-virtual {p0, v6, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    const p2, 0x7f09014a

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Lcom/fsck/k9/ui/push/PushInfoFragment$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    invoke-direct {v0, p0, v4}, Lcom/fsck/k9/ui/push/PushInfoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/push/PushInfoFragment;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lnet/thunderbird/core/common/provider/AppNameProvider;

    .line 91
    .line 92
    check-cast v0, Lapp/k9mail/provider/K9AppNameProvider;

    .line 93
    .line 94
    invoke-virtual {v0}, Lapp/k9mail/provider/K9AppNameProvider;->getAppName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-array v1, v3, [Ljava/lang/Object;

    .line 99
    .line 100
    aput-object v0, v1, v4

    .line 101
    .line 102
    const-string v0, ""

    .line 103
    .line 104
    aput-object v0, v1, v2

    .line 105
    .line 106
    invoke-virtual {p0, v6, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    :goto_0
    const p2, 0x7f090253

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 121
    .line 122
    new-instance v0, Lcom/fsck/k9/ui/push/PushInfoFragment$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/push/PushInfoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/push/PushInfoFragment;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    const p2, 0x7f0901a6

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 138
    .line 139
    new-instance p2, Lcom/fsck/k9/ui/push/PushInfoFragment$$ExternalSyntheticLambda0;

    .line 140
    .line 141
    invoke-direct {p2, p0, v3}, Lcom/fsck/k9/ui/push/PushInfoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/push/PushInfoFragment;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method
