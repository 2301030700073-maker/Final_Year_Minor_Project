.class public final Lorg/wikipedia/descriptions/DescriptionEditSuccessView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/wikipedia/descriptions/DescriptionEditSuccessView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;",
        "callback",
        "Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;",
        "getCallback",
        "()Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;",
        "setCallback",
        "(Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;)V",
        "Callback",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public callback:Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const p2, 0x7f0c05c3

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    const p2, 0x7f09072c

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/Button;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    const p2, 0x7f09072d

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lorg/wikipedia/views/AppTextView;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    const p2, 0x7f090740

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/widget/LinearLayout;

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    const p2, 0x7f090741

    .line 60
    .line 61
    .line 62
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Landroid/widget/LinearLayout;

    .line 67
    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    check-cast p1, Landroid/widget/ScrollView;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const p2, 0x7f120119

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    const p2, 0x7f0801a4

    .line 87
    .line 88
    .line 89
    filled-new-array {p2}, [I

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-static {v1, p1, p2}, Lokhttp3/Headers$Companion;->setTextWithDrawables(Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/CharSequence;[I)V

    .line 94
    .line 95
    .line 96
    new-instance p1, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    const/16 p2, 0x9

    .line 99
    .line 100
    invoke-direct {p1, p2, p0}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    const-string p1, "Missing required view with ID: "

    .line 116
    .line 117
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/4 p0, 0x0

    .line 125
    throw p0
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->callback:Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCallback(Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->callback:Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;

    .line 2
    .line 3
    return-void
.end method
