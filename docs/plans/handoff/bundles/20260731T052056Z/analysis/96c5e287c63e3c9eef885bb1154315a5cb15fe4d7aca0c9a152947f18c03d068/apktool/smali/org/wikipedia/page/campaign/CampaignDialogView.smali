.class public final Lorg/wikipedia/page/campaign/CampaignDialogView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

.field public callback:Lorg/wikipedia/page/campaign/CampaignDialogView$Callback;

.field public showNeutralButton:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0c0176

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0900bc

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v3, v1

    .line 27
    check-cast v3, Landroid/widget/LinearLayout;

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    const v0, 0x7f090155

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    move-object v4, v1

    .line 39
    check-cast v4, Landroid/widget/ImageView;

    .line 40
    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    const v0, 0x7f090172

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move-object v5, v1

    .line 51
    check-cast v5, Landroid/widget/TextView;

    .line 52
    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    move-object v0, p1

    .line 56
    check-cast v0, Lorg/wikipedia/views/WikiCardView;

    .line 57
    .line 58
    const v0, 0x7f090262

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    if-eqz v6, :cond_0

    .line 66
    .line 67
    const v0, 0x7f090264

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    move-object v7, v1

    .line 75
    check-cast v7, Landroid/widget/TextView;

    .line 76
    .line 77
    if-eqz v7, :cond_0

    .line 78
    .line 79
    const v0, 0x7f09044f

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    move-object v8, v1

    .line 87
    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 88
    .line 89
    if-eqz v8, :cond_0

    .line 90
    .line 91
    const v0, 0x7f090450

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    move-object v9, v1

    .line 99
    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    .line 100
    .line 101
    if-eqz v9, :cond_0

    .line 102
    .line 103
    const v0, 0x7f090508

    .line 104
    .line 105
    .line 106
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    move-object v10, v1

    .line 111
    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    .line 112
    .line 113
    if-eqz v10, :cond_0

    .line 114
    .line 115
    new-instance v2, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 116
    .line 117
    invoke-direct/range {v2 .. v10}, Lorg/wikipedia/databinding/FragmentNewsBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;)V

    .line 118
    .line 119
    .line 120
    iput-object v2, p0, Lorg/wikipedia/page/campaign/CampaignDialogView;->binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 121
    .line 122
    const/4 p1, 0x1

    .line 123
    iput-boolean p1, p0, Lorg/wikipedia/page/campaign/CampaignDialogView;->showNeutralButton:Z

    .line 124
    .line 125
    return-void

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    const-string p1, "Missing required view with ID: "

    .line 135
    .line 136
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const/4 p0, 0x0

    .line 144
    throw p0
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/page/campaign/CampaignDialogView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/campaign/CampaignDialogView;->callback:Lorg/wikipedia/page/campaign/CampaignDialogView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getShowNeutralButton()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/wikipedia/page/campaign/CampaignDialogView;->showNeutralButton:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setCallback(Lorg/wikipedia/page/campaign/CampaignDialogView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/campaign/CampaignDialogView;->callback:Lorg/wikipedia/page/campaign/CampaignDialogView$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowNeutralButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/wikipedia/page/campaign/CampaignDialogView;->showNeutralButton:Z

    .line 2
    .line 3
    return-void
.end method
