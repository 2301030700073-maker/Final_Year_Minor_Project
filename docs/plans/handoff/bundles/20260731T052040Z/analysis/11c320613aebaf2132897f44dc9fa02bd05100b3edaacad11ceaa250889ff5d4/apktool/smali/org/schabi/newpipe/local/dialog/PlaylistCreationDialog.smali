.class public final Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;
.super Lorg/schabi/newpipe/local/dialog/PlaylistDialog;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->streamEntities:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lorg/jsoup/parser/TokenData;->inflate(Landroid/view/LayoutInflater;)Lorg/jsoup/parser/TokenData;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 21
    .line 22
    iget-object v1, p1, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3}, Lokio/Options$Companion;->isLightThemeSelected(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const v4, 0x7f140146

    .line 39
    .line 40
    .line 41
    const v5, 0x7f140179

    .line 42
    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    move v3, v5

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v3, v4

    .line 49
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    .line 50
    .line 51
    .line 52
    const v2, 0x7f130347

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-static {v6}, Lokio/Options$Companion;->isLightThemeSelected(Landroid/content/Context;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_2

    .line 77
    .line 78
    move v4, v5

    .line 79
    :cond_2
    invoke-direct {v0, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 80
    .line 81
    .line 82
    const v3, 0x7f1300cd

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 93
    .line 94
    iput-boolean v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 95
    .line 96
    const v1, 0x7f130076

    .line 97
    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;

    .line 105
    .line 106
    const/4 v2, 0x6

    .line 107
    invoke-direct {v1, p0, p1, v2}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    const p0, 0x7f1300ca

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0
.end method
