.class public final Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lokhttp3/MultipartBody$Builder;

.field public callback:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const v0, 0x7f0c05d3

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    const v0, 0x7f090339

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/widget/Button;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    const v0, 0x7f09033b

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroid/widget/Button;

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    const v0, 0x7f09033c

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Landroid/widget/Button;

    .line 53
    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    .line 57
    .line 58
    check-cast p1, Landroid/widget/FrameLayout;

    .line 59
    .line 60
    invoke-direct {v0, v2, v3, v4}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 64
    .line 65
    new-instance p1, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    invoke-direct {p1, p0, v1}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    invoke-direct {p1, p0, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    invoke-direct {p1, p0, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string p1, "Missing required view with ID: "

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/4 p0, 0x0

    .line 110
    throw p0
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->callback:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSecondaryButtonView()Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/widget/Button;

    .line 6
    .line 7
    return-object p0
.end method

.method public final setCallback(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->callback:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final setPrimaryButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/widget/Button;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setSecondaryButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/widget/Button;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setTertiaryButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/widget/Button;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
